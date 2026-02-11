# 🚀 Guía de Despliegue - GitHub Pages

Esta guía te llevará paso a paso para publicar tu Cotizador de Seguridad Social en GitHub Pages.

---

## 📋 Requisitos Previos

Antes de comenzar, asegúrate de tener:

- ✅ Cuenta en [GitHub](https://github.com)
- ✅ [Git](https://git-scm.com/downloads) instalado en tu computadora
- ✅ Editor de código (recomendado: VS Code)
- ✅ Navegador web moderno

---

## 🎯 Método 1: Despliegue Rápido (Recomendado)

### Paso 1: Crear Cuenta en GitHub

1. Ve a [github.com](https://github.com)
2. Click en **Sign up**
3. Completa el registro con:
   - Username (ejemplo: `cervialis-colombia`)
   - Email
   - Password
4. Verifica tu email

### Paso 2: Crear Repositorio

1. Click en el botón **+** (arriba derecha) → **New repository**
2. Configuración del repositorio:
   ```
   Repository name: cotizador-seguridad-social-cervialis
   Description: Cotizador de Seguridad Social Colombia 2026
   ✅ Public (importante para GitHub Pages gratis)
   ✅ Add a README file
   ✅ Add .gitignore: None (ya lo tenemos)
   ✅ Choose a license: MIT License
   ```
3. Click en **Create repository**

### Paso 3: Subir Archivos vía Web

**Opción A: Arrastrar y Soltar (Más Fácil)**

1. En tu repositorio nuevo, click en **uploading an existing file**
2. Arrastra estos archivos a la ventana:
   - `index.html`
   - `README.md`
   - `.gitignore`
   - `LICENSE`
   - `CONTRIBUTING.md`
3. En el campo de commit escribe: `Initial commit`
4. Click en **Commit changes**

### Paso 4: Activar GitHub Pages

1. En tu repositorio, ve a **Settings** (⚙️)
2. En el menú lateral, click en **Pages**
3. En **Source**, configura:
   - Branch: `main`
   - Folder: `/ (root)`
4. Click en **Save**
5. Espera 1-2 minutos

**¡Listo!** Tu sitio estará en:
```
https://tu-usuario.github.io/cotizador-seguridad-social-cervialis/
```

---

## 💻 Método 2: Despliegue por Terminal (Avanzado)

### Paso 1: Instalar Git

**Windows:**
1. Descarga [Git para Windows](https://git-scm.com/download/win)
2. Ejecuta el instalador
3. Usa opciones por defecto

**macOS:**
```bash
# Instalar Homebrew (si no lo tienes)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Instalar Git
brew install git
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install git
```

### Paso 2: Configurar Git

```bash
# Configurar nombre
git config --global user.name "Tu Nombre"

# Configurar email (usa el de GitHub)
git config --global user.email "tu-email@ejemplo.com"

# Verificar configuración
git config --list
```

### Paso 3: Crear Repositorio en GitHub

1. Ve a [github.com](https://github.com)
2. Click en **+** → **New repository**
3. Nombre: `cotizador-seguridad-social-cervialis`
4. ✅ Public
5. ❌ NO marques "Add a README" (ya lo tenemos)
6. Click en **Create repository**

### Paso 4: Subir desde Terminal

```bash
# Ir al directorio del proyecto
cd /ruta/al/proyecto/cotizador-seguridad-social-cervialis

# Inicializar Git
git init

# Agregar todos los archivos
git add .

# Hacer commit inicial
git commit -m "Initial commit: Cotizador de Seguridad Social Colombia 2026"

# Conectar con GitHub (reemplaza TU-USUARIO)
git remote add origin https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis.git

# Verificar conexión
git remote -v

# Renombrar rama a main
git branch -M main

# Subir a GitHub (te pedirá usuario y contraseña)
git push -u origin main
```

### Paso 5: Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. **Settings** → **Pages**
3. Source: `main` / `/ (root)`
4. **Save**

---

## 🔐 Autenticación en GitHub (Si tienes problemas)

GitHub ya no permite passwords en comandos Git. Usa uno de estos métodos:

### Método 1: Token de Acceso Personal (Recomendado)

1. En GitHub, ve a **Settings** (tu perfil)
2. **Developer settings** → **Personal access tokens** → **Tokens (classic)**
3. **Generate new token** → **Generate new token (classic)**
4. Configuración:
   - Note: `cotizador-deploy`
   - Expiration: `No expiration` o `90 days`
   - Scopes: ✅ `repo` (todos)
5. **Generate token**
6. **COPIA EL TOKEN** (no podrás verlo de nuevo)

**Usar el token:**
```bash
# Cuando git push pida password, usa:
Username: tu-usuario
Password: ghp_tu_token_aqui_123456789
```

### Método 2: GitHub CLI

```bash
# Instalar GitHub CLI
# Windows (con winget)
winget install --id GitHub.cli

# macOS
brew install gh

# Linux
sudo apt install gh

# Autenticar
gh auth login

# Seguir instrucciones en pantalla
```

---

## 🔄 Actualizar el Sitio

Después de hacer cambios al cotizador:

```bash
# Ver archivos modificados
git status

# Agregar cambios
git add .

# Commit con mensaje descriptivo
git commit -m "feat: agregar validación de IBC mínimo"

# Subir a GitHub
git push

# GitHub Pages se actualizará automáticamente en 1-2 minutos
```

---

## 🌐 Dominio Personalizado (Opcional)

### Opción 1: Subdominio Gratis con GitHub

Tu sitio será: `https://tu-usuario.github.io/cotizador-seguridad-social-cervialis/`

### Opción 2: Dominio Propio

Si tienes un dominio (ejemplo: `www.cervialis.com`):

1. En GitHub Pages settings, ingresa tu dominio en **Custom domain**
2. En tu proveedor de dominio (GoDaddy, Namecheap, etc.):
   ```
   Tipo: CNAME
   Host: www (o @)
   Apunta a: tu-usuario.github.io
   ```
3. Espera propagación DNS (24-48 horas)

---

## 🐛 Solución de Problemas

### Error: "Permission denied (publickey)"

**Solución:** Usa HTTPS en lugar de SSH
```bash
git remote set-url origin https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis.git
```

### Error: "Pages build failed"

**Causas comunes:**
- El archivo `index.html` no está en la raíz
- Hay errores de sintaxis en HTML

**Solución:**
1. Verifica que `index.html` esté en el directorio raíz
2. Valida HTML en [validator.w3.org](https://validator.w3.org/)

### El sitio no se actualiza

**Solución:**
1. Ve a **Actions** en tu repositorio
2. Verifica que el último deploy esté ✅
3. Limpia caché del navegador (Ctrl + Shift + R)
4. Espera 5 minutos más

### Error: "404 Page not found"

**Causas:**
- GitHub Pages no está activado
- El branch configurado es incorrecto
- El archivo se llama diferente a `index.html`

**Solución:**
1. Verifica Settings → Pages → Branch = `main`
2. Renombra tu archivo a `index.html`
3. Asegúrate que esté en raíz, no en carpeta

---

## 📊 Verificar Despliegue

### Checklist Final

- [ ] Repositorio creado en GitHub
- [ ] Archivos subidos correctamente
- [ ] GitHub Pages activado
- [ ] URL funciona correctamente
- [ ] Todas las funcionalidades operan
- [ ] Responsive en móvil
- [ ] Sin errores en consola del navegador

### Comandos de Verificación

```bash
# Ver remotes configurados
git remote -v

# Ver historial de commits
git log --oneline

# Ver estado actual
git status

# Ver diferencias con remoto
git diff origin/main
```

---

## 📈 Métricas y Analítica (Opcional)

### Agregar Google Analytics

1. Crea cuenta en [analytics.google.com](https://analytics.google.com)
2. Obtén tu código de seguimiento
3. Agrega antes de `</head>` en `index.html`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🔒 Seguridad

### Mejores Prácticas

- ✅ Usa HTTPS (GitHub Pages lo hace por defecto)
- ✅ No incluyas API keys en el código
- ✅ Mantén dependencias actualizadas
- ✅ Revisa permisos del repositorio

### Verificar HTTPS

1. Ve a Settings → Pages
2. Marca ✅ **Enforce HTTPS**

---

## 🎉 ¡Éxito!

Tu cotizador ahora está en línea. Comparte la URL:

```
https://tu-usuario.github.io/cotizador-seguridad-social-cervialis/
```

### Próximos Pasos

1. Comparte con tu equipo
2. Promociona en redes sociales
3. Recopila feedback de usuarios
4. Itera y mejora basado en comentarios
5. Considera agregar más funcionalidades

---

## 📞 Soporte

¿Problemas con el despliegue?

- 📖 [Documentación GitHub Pages](https://docs.github.com/en/pages)
- 💬 [GitHub Community](https://github.community/)
- 📧 Contacta al equipo de Cervialis

---

<div align="center">

**¡Felicitaciones por tu despliegue exitoso! 🎊**

</div>
