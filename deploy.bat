@echo off
REM Script de Despliegue para GitHub Pages - Windows
REM Cotizador de Seguridad Social Colombia - Cervialis

color 0A
echo ========================================
echo       Despliegue a GitHub Pages
echo    Cotizador de Seguridad Social
echo ========================================
echo.

REM Verificar que Git este instalado
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Git no esta instalado
    echo.
    echo Descarga Git desde: https://git-scm.com/downloads
    echo.
    pause
    exit /b 1
)

echo [OK] Git esta instalado
echo.

REM Solicitar usuario de GitHub
set /p GITHUB_USER="Ingresa tu usuario de GitHub: "

if "%GITHUB_USER%"=="" (
    echo [ERROR] El usuario no puede estar vacio
    pause
    exit /b 1
)

REM Confirmar nombre del repositorio
set REPO_NAME=cotizador-seguridad-social-cervialis
echo.
echo Repositorio: %REPO_NAME%
set /p CONFIRM="Es correcto? (S/N): "

if /i not "%CONFIRM%"=="S" (
    set /p REPO_NAME="Ingresa el nombre del repositorio: "
)

REM URL del repositorio
set REPO_URL=https://github.com/%GITHUB_USER%/%REPO_NAME%.git

echo.
echo URL del repositorio: %REPO_URL%
echo.
pause

REM Verificar que no este ya inicializado
if exist .git (
    echo [ADVERTENCIA] El repositorio Git ya esta inicializado
    set /p REINIT="Deseas reinicializarlo? (S/N): "
    
    if /i "%REINIT%"=="S" (
        rmdir /s /q .git
        echo [OK] Repositorio reinicializado
    ) else (
        echo [CANCELADO] Operacion cancelada
        pause
        exit /b 1
    )
)

REM Inicializar Git
echo.
echo Inicializando repositorio Git...
git init

REM Configurar usuario Git (si no esta configurado)
for /f "delims=" %%i in ('git config --global user.name') do set GIT_NAME=%%i
if "%GIT_NAME%"=="" (
    set /p GIT_NAME="Ingresa tu nombre para Git: "
    git config --global user.name "%GIT_NAME%"
    echo [OK] Nombre configurado: %GIT_NAME%
)

for /f "delims=" %%i in ('git config --global user.email') do set GIT_EMAIL=%%i
if "%GIT_EMAIL%"=="" (
    set /p GIT_EMAIL="Ingresa tu email para Git: "
    git config --global user.email "%GIT_EMAIL%"
    echo [OK] Email configurado: %GIT_EMAIL%
)

REM Agregar archivos
echo.
echo Agregando archivos...
git add .

REM Commit inicial
echo.
echo Creando commit inicial...
git commit -m "Initial commit: Cotizador de Seguridad Social Colombia 2026"

REM Renombrar rama a main
echo.
echo Renombrando rama a 'main'...
git branch -M main

REM Agregar remote
echo.
echo Conectando con GitHub...
git remote add origin %REPO_URL%

REM Push a GitHub
echo.
echo ========================================
echo      Subiendo archivos a GitHub
echo ========================================
echo.
echo [IMPORTANTE] Se te pedira autenticacion
echo.
echo   Usuario: %GITHUB_USER%
echo   Password: Tu TOKEN de GitHub (NO tu password)
echo.
echo Crea un token en:
echo https://github.com/settings/tokens
echo.
pause

git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo        DESPLIEGUE EXITOSO!
    echo ========================================
    echo.
    echo Proximos pasos:
    echo   1. Ve a: https://github.com/%GITHUB_USER%/%REPO_NAME%
    echo   2. Click en 'Settings' ^> 'Pages'
    echo   3. En 'Source', selecciona:
    echo      - Branch: main
    echo      - Folder: / (root^)
    echo   4. Click en 'Save'
    echo   5. Espera 1-2 minutos
    echo.
    echo Tu sitio estara en:
    echo https://%GITHUB_USER%.github.io/%REPO_NAME%/
    echo.
    echo ========================================
) else (
    echo.
    echo [ERROR] Error al subir a GitHub
    echo.
    echo Posibles causas:
    echo   - El repositorio no existe en GitHub
    echo   - Token de acceso invalido
    echo   - Problemas de conexion
    echo.
    echo Consulta: docs\DEPLOYMENT.md para mas ayuda
)

echo.
pause
