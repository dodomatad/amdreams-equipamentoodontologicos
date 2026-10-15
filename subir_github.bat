@echo off
title Publicando no GitHub - AM Dreams
cd /d "C:\Users\Info Mania\Downloads\biolink-am-dreams"
cls
echo ====================================================
echo      PUBLICANDO BIOLINK AM DREAMS NO GITHUB
echo ====================================================
echo.
echo Cole abaixo a URL do seu repositorio no GitHub
echo Exemplo: https://github.com/SEU-USUARIO/biolink-am-dreams.git
echo.
set /p REPO_URL="Link do Repositorio: "

if "%REPO_URL%"=="" (
    echo Nenhum link fornecido.
    pause
    exit /b
)

git remote remove origin 2>nul
git remote add origin %REPO_URL%
git branch -M main
echo.
echo Enviando arquivos...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ====================================================
    echo   SUCESSO! O PROJETO FOI PUBLICADO NO GITHUB!
    echo ====================================================
) else (
    echo.
    echo Houve um problema no envio. Verifique o link e suas permissoes.
)
echo.
pause