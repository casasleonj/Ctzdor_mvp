#!/bin/bash

# Script de Despliegue Automatizado para GitHub Pages
# Cotizador de Seguridad Social Colombia - Cervialis

echo "========================================"
echo "🚀 Despliegue de Cotizador a GitHub Pages"
echo "========================================"
echo ""

# Verificar que Git esté instalado
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git no está instalado"
    echo "Instala Git desde: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git está instalado"
echo ""

# Solicitar usuario de GitHub
read -p "📝 Ingresa tu usuario de GitHub: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ Error: El usuario no puede estar vacío"
    exit 1
fi

# Confirmar nombre del repositorio
REPO_NAME="cotizador-seguridad-social-cervialis"
echo ""
echo "📦 Repositorio: $REPO_NAME"
read -p "¿Es correcto? (s/n): " CONFIRM

if [ "$CONFIRM" != "s" ] && [ "$CONFIRM" != "S" ]; then
    read -p "Ingresa el nombre del repositorio: " REPO_NAME
fi

# URL del repositorio
REPO_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "🔗 URL del repositorio: $REPO_URL"
echo ""

# Verificar que no esté ya inicializado
if [ -d ".git" ]; then
    echo "⚠️  El repositorio Git ya está inicializado"
    read -p "¿Deseas reinicializarlo? (s/n): " REINIT
    
    if [ "$REINIT" = "s" ] || [ "$REINIT" = "S" ]; then
        rm -rf .git
        echo "✅ Repositorio reinicializado"
    else
        echo "❌ Operación cancelada"
        exit 1
    fi
fi

# Inicializar Git
echo "📂 Inicializando repositorio Git..."
git init

# Configurar usuario Git (si no está configurado)
if [ -z "$(git config --global user.name)" ]; then
    read -p "📝 Ingresa tu nombre para Git: " GIT_NAME
    git config --global user.name "$GIT_NAME"
    echo "✅ Nombre configurado: $GIT_NAME"
fi

if [ -z "$(git config --global user.email)" ]; then
    read -p "📧 Ingresa tu email para Git: " GIT_EMAIL
    git config --global user.email "$GIT_EMAIL"
    echo "✅ Email configurado: $GIT_EMAIL"
fi

# Agregar archivos
echo ""
echo "📄 Agregando archivos al staging..."
git add .

# Commit inicial
echo "💾 Creando commit inicial..."
git commit -m "Initial commit: Cotizador de Seguridad Social Colombia 2026"

# Renombrar rama a main
echo "🔄 Renombrando rama a 'main'..."
git branch -M main

# Agregar remote
echo "🔗 Conectando con GitHub..."
git remote add origin $REPO_URL

# Push a GitHub
echo ""
echo "📤 Subiendo archivos a GitHub..."
echo "⚠️  Se te pedirá autenticación"
echo "   Usuario: $GITHUB_USER"
echo "   Password: Tu token de GitHub (NO tu password)"
echo ""
echo "ℹ️  Crea un token en: https://github.com/settings/tokens"
echo ""

git push -u origin main

# Verificar si el push fue exitoso
if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ ¡Despliegue exitoso!"
    echo "=========================================="
    echo ""
    echo "📍 Próximos pasos:"
    echo "   1. Ve a: https://github.com/$GITHUB_USER/$REPO_NAME"
    echo "   2. Click en 'Settings' → 'Pages'"
    echo "   3. En 'Source', selecciona:"
    echo "      - Branch: main"
    echo "      - Folder: / (root)"
    echo "   4. Click en 'Save'"
    echo "   5. Espera 1-2 minutos"
    echo ""
    echo "🌐 Tu sitio estará en:"
    echo "   https://$GITHUB_USER.github.io/$REPO_NAME/"
    echo ""
    echo "=========================================="
else
    echo ""
    echo "❌ Error al subir a GitHub"
    echo "Posibles causas:"
    echo "   - El repositorio no existe en GitHub"
    echo "   - Token de acceso inválido"
    echo "   - Problemas de conexión"
    echo ""
    echo "Consulta: docs/DEPLOYMENT.md para más ayuda"
    exit 1
fi
