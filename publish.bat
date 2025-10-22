@echo off
setlocal ENABLEDELAYEDEXPANSION

REM Publish helper for Engenharia de Prompts 2.0
REM - Ignores ZIPs
REM - Untracks existing ZIPs
REM - Commits and pushes to GitHub (main)
REM - Prints links for enabling Pages and Discussions

REM ===== Config =====
set "REPO_URL_DEFAULT=https://github.com/inematds/Prompts.git"
set "REPO_URL=%~1"
if "%REPO_URL%"=="" set "REPO_URL=%REPO_URL_DEFAULT%"
set "GIT_USER_NAME=inematds"
set "GIT_USER_EMAIL=inematds@gmail.com"

echo.
echo [1/8] Checking Git...
git --version >NUL 2>&1 || (
  echo ERROR: Git nao encontrado no PATH. Instale o Git e tente novamente.
  exit /b 1
)

echo.
echo [2/8] Initializing repository/branch main (if needed)...
git rev-parse --git-dir >NUL 2>&1
if errorlevel 1 (
  git init -b main || goto :fatal
) else (
  git branch -M main || goto :fatal
)

echo.
echo [3/8] Setting Git user config (local)...
git config user.name "%GIT_USER_NAME%" || goto :fatal
git config user.email "%GIT_USER_EMAIL%" || goto :fatal

echo.
echo [4/8] Ensuring .gitignore rules for ZIPs and site/ ...
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
echo [5/8] Untracking existing ZIP/MP4 files and data folder (keeps them on disk)...
for /r %%F in (*.zip) do (
  set "ZIPPATH=%%F"
  REM Only untrack if file is tracked by git
  git ls-files --error-unmatch "!ZIPPATH!" >NUL 2>&1 && (
    echo - Untracking: !ZIPPATH!
    git rm --cached "!ZIPPATH!" >NUL 2>&1
  )
)
for /r %%F in (*.mp4) do (
  set "VIDPATH=%%F"
  git ls-files --error-unmatch "!VIDPATH!" >NUL 2>&1 && (
    echo - Untracking: !VIDPATH!
    git rm --cached "!VIDPATH!" >NUL 2>&1
  )
)
if exist "docs\data" (
  git ls-files --error-unmatch "docs/data" >NUL 2>&1 && (
    echo - Untracking folder: docs/data
    git rm -r --cached "docs/data" >NUL 2>&1
  )
)

echo.
echo [6/8] Commit changes...
git add . || goto :fatal
git commit -m "chore: ignore ZIPs, prepare publish (MkDocs Pages)" || echo (No changes to commit)

echo.
echo [7/8] Configure remote: %REPO_URL%
git remote get-url origin >NUL 2>&1
if errorlevel 1 (
  git remote add origin "%REPO_URL%" || goto :fatal
) else (
  git remote set-url origin "%REPO_URL%" || goto :fatal
)

echo.
echo [8/8] Push to origin main (first time may prompt login/token)...
git push -u origin main || goto :fatal

echo.
echo Done. Next steps:
echo - Enable GitHub Pages: https://github.com/inematds/Prompts/settings/pages
echo - Ensure Source: Deploy from a branch / Branch: gh-pages
echo - Enable Discussions: https://github.com/inematds/Prompts/settings
echo - Check Actions (deploy): https://github.com/inematds/Prompts/actions
echo - Site URL: https://inematds.github.io/Prompts

REM Optional: try to open Pages settings
for %%U in (https://github.com/inematds/Prompts/settings/pages) do start "" "%%U" >NUL 2>&1
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
