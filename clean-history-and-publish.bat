@echo off
setlocal ENABLEDELAYEDEXPANSION

REM Clean Git history from large files (ZIP/MP4 and data folders) and publish
REM Use when push is rejected due to >100MB files in history

REM ===== Config =====
set "REPO_URL_DEFAULT=https://github.com/inematds/Prompts.git"
set "REPO_URL=%~1"
if "%REPO_URL%"=="" set "REPO_URL=%REPO_URL_DEFAULT%"
set "GIT_USER_NAME=inematds"
set "GIT_USER_EMAIL=inematds@gmail.com"

echo.
echo [0/8] Checking tools Git/Python...
git --version >NUL 2>&1
if errorlevel 1 (
  echo ERROR: Git nao encontrado. Instale o Git e tente de novo.
  exit /b 1
)

set "PYCMD="
where py >NUL 2>&1
if not errorlevel 1 set "PYCMD=py"
if "%PYCMD%"=="" (
  where python >NUL 2>&1
  if not errorlevel 1 set "PYCMD=python"
)
if "%PYCMD%"=="" (
  echo ERROR: Python nao encontrado. Instale Python 3 (incluindo pip) e tente novamente.
  exit /b 1
)

echo.
echo [1/8] Ensuring .git exists and switching to main...
git rev-parse --git-dir >NUL 2>&1 || (echo ERROR: Este diretorio nao eh um repositorio Git.& exit /b 1)
git branch -M main || goto :fatal

echo.
echo [2/8] Installing git-filter-repo (if needed)...
"%PYCMD%" -m pip show git-filter-repo >NUL 2>&1
if errorlevel 1 (
  "%PYCMD%" -m pip install --user git-filter-repo || goto :fatal
)

echo.
echo [3/8] Rewriting history to remove heavy paths (Docs/, docs/data/, *.zip, *.mp4)...
"%PYCMD%" -m git_filter_repo --force --invert-paths ^
  --path Docs/ ^
  --path docs/data/ ^
  --path-glob "**/*.zip" ^
  --path-glob "**/*.mp4"
if errorlevel 1 goto :fatal

echo.
echo [4/8] Updating .gitignore rules...
set "GITIGNORE=.gitignore"
if not exist "%GITIGNORE%" type NUL > "%GITIGNORE%"
call :ensure_line "%GITIGNORE%" "Docs/*.zip"
call :ensure_line "%GITIGNORE%" "*.zip"
call :ensure_line "%GITIGNORE%" "site/"
call :ensure_line "%GITIGNORE%" "docs/data/"
call :ensure_line "%GITIGNORE%" "*.mp4"
call :ensure_line "%GITIGNORE%" "Docs/**/*.mp4"
call :ensure_line "%GITIGNORE%" "docs/data/**/*.mp4"

echo.
echo [5/8] Ensure Git user config...
git config user.name "%GIT_USER_NAME%" || goto :fatal
git config user.email "%GIT_USER_EMAIL%" || goto :fatal

echo.
echo [6/8] Commit .gitignore if changed...
git add .gitignore >NUL 2>&1
git diff --cached --quiet || git commit -m "chore: ensure ignore for ZIP/MP4/data after filter-repo" >NUL 2>&1

echo.
echo [7/8] Configure remote and force-push main...
git remote get-url origin >NUL 2>&1
if errorlevel 1 (
  git remote add origin "%REPO_URL%" || goto :fatal
) else (
  git remote set-url origin "%REPO_URL%" || goto :fatal
)
git push -f origin main
if errorlevel 1 goto :fatal

echo.
echo [8/8] Done.
set "REPO_WEB=%REPO_URL%"
if /i "%REPO_WEB:~-4%"==".git" set "REPO_WEB=%REPO_WEB:~0,-4%"
echo - Repo: %REPO_WEB%
echo - Enable Pages: %REPO_WEB%/settings/pages
echo - Actions (deploy): %REPO_WEB%/actions
echo - Site (if repo is inematds/Prompts): https://inematds.github.io/Prompts
goto :eof

:ensure_line
REM %1=file, %2=line
set "_file=%~1"
set "_line=%~2"
findstr /x /c:"%_line%" "%_file%" >NUL 2>&1 || (
  echo %_line%>>"%_file%"
)
exit /b 0

:fatal
echo.
echo ERROR: A etapa falhou. Verifique as mensagens acima.
exit /b 1
