@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM Raiz do repositório = pasta deste script
set "ROOT=%~dp0"
REM Garantir que o destino exista
set "TARGET=%ROOT%mp4"
if not exist "%TARGET%" mkdir "%TARGET%"

set /a moved=0

REM Varre recursivamente por arquivos .mp4
for /r "%ROOT%" %%F in (*.mp4) do (
    REM Pula se já estiver dentro da pasta mp4
    if /I not "%%~dpF"=="%TARGET%\" (
        set "name=%%~nxF"
        set "dest=%TARGET%\!name!"

        REM Evita colisão de nomes: adiciona sufixo _N se necessário
        if exist "!dest!" (
            set "base=%%~nF"
            set "ext=%%~xF"
            set /a i=1
            :tryname
            set "dest=%TARGET%\!base!_!i!!ext!"
            if exist "!dest!" (
                set /a i+=1
                goto tryname
            )
        )

        move /y "%%F" "!dest!" >nul
        if errorlevel 1 (
            echo [ERRO] Nao foi possivel mover: "%%F"
        ) else (
            echo [OK] "%%F" -> "!dest!"
            set /a moved+=1
        )
    )
)

echo.
echo Concluido. Arquivos movidos: %moved%
endlocal

