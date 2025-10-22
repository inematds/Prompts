@echo off
REM Simple reset publish: reinitialize repo without heavy history and push
setlocal ENABLEDELAYEDEXPANSION

REM ===== Config =====
set "REPO_URL_DEFAULT=https://github.com/inematds/Prompts.git"
set "REPO_URL=%~1"
if "%REPO_URL%"=="" set "REPO_URL=%REPO_URL_DEFAULT%"
set "GIT_USER_NAME=inematds"
set "GIT_USER_EMAIL=inematds@gmail.com"

echo.
echo [1/6] Ensuring ignore rules for ZIP/MP4 and data folder...
set "GITIGNORE=.gitignore"
if not exist "%GITIGNORE%" type NUL > "%GITIGNORE%"
call :ensure_line "%GITIGNORE%" "Docs/*.zip"
call :ensure_line "%GITIGNORE%" "*.zip"
call :ensure_line "%GITIGNORE%" "*.mp4"
call :ensure_line "%GITIGNORE%" "Docs/**/*.mp4"
call :ensure_line "%GITIGNORE%" "docs/data/**/*.mp4"
call :ensure_line "%GITIGNORE%" "site/"
call :ensure_line "%GITIGNORE%" "docs/data/"

echo.
echo [2/6] Removing previous Git history (.git)...
if exist .git (
  rmdir /s /q .git || (echo ERROR removing .git & exit /b 1)
)

echo.
echo [3/6] Initializing new Git repo on main...
git init -b main || goto :fatal
git config user.name "%GIT_USER_NAME%" || goto :fatal
git config user.email "%GIT_USER_EMAIL%" || goto :fatal

echo.
echo [4/6] Commit lightweight contents (acervo e ZIP nao serao versionados)...
git add . || goto :fatal
git commit -m "Publicacao leve inicial (sem acervo pesado)" || goto :fatal

echo.
echo [5/6] Configure remote: %REPO_URL%
git remote add origin "%REPO_URL%" 2>NUL
git remote set-url origin "%REPO_URL%"

echo.
echo [6/6] Push to origin main (first time may prompt login/token)...
git push -u origin main || goto :fatal

echo.
echo Done. Now enable Pages (gh-pages) in repository settings and check Actions.
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

