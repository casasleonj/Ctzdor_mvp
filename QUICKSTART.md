# ⚡ Inicio Rápido - 5 Minutos

Esta guía te ayudará a publicar tu cotizador en menos de 5 minutos.

---

## 🎯 Método Más Fácil (Sin Terminal)

### 1. Crea una Cuenta en GitHub
- Ve a [github.com](https://github.com) 
- Click en **Sign up**
- Completa el registro

### 2. Crea un Repositorio
- Click en **+** (arriba derecha) → **New repository**
- Nombre: `cotizador-seguridad-social-cervialis`
- Marca ✅ **Public**
- Click en **Create repository**

### 3. Sube los Archivos
- Click en **uploading an existing file**
- Arrastra estos archivos:
  - `index.html`
  - `README.md`
  - `LICENSE`
- Click en **Commit changes**

### 4. Activa GitHub Pages
- Ve a **Settings** → **Pages**
- En **Source**:
  - Branch: `main`
  - Folder: `/ (root)`
- Click en **Save**

### 5. ¡Listo!
Espera 2 minutos y visita:
```
https://tu-usuario.github.io/cotizador-seguridad-social-cervialis/
```

---

## 💻 Método con Terminal (Más Rápido)

### Windows
1. Descarga [Git para Windows](https://git-scm.com/download/win)
2. Abre la carpeta del proyecto
3. Click derecho → **Git Bash Here**
4. Ejecuta:
```bash
./deploy.sh
```

### macOS / Linux
1. Abre Terminal
2. Navega a la carpeta del proyecto
3. Ejecuta:
```bash
chmod +x deploy.sh
./deploy.sh
```

Sigue las instrucciones en pantalla.

---

## 🆘 ¿Problemas?

### No tengo Git instalado
**Windows:** [Descargar Git](https://git-scm.com/download/win)  
**macOS:** `brew install git`  
**Linux:** `sudo apt install git`

### No puedo ejecutar deploy.sh
```bash
# Dale permisos de ejecución
chmod +x deploy.sh

# Ejecuta
./deploy.sh
```

### Error de autenticación en Git
1. Ve a [github.com/settings/tokens](https://github.com/settings/tokens)
2. Click en **Generate new token** → **Classic**
3. Dale un nombre, selecciona **repo**
4. Copia el token
5. Úsalo como password cuando Git lo pida

### Mi sitio no aparece
- Espera 5 minutos
- Verifica en Settings → Pages que esté activado
- Limpia caché del navegador (Ctrl + Shift + R)

---

## 📚 Más Ayuda

- 📖 [Guía Completa de Despliegue](docs/DEPLOYMENT.md)
- 🤝 [Guía de Contribución](CONTRIBUTING.md)
- 📝 [README Principal](README.md)

---

## ✅ Checklist Rápido

- [ ] Cuenta en GitHub creada
- [ ] Repositorio creado
- [ ] Archivos subidos
- [ ] GitHub Pages activado
- [ ] Sitio funcionando

---

<div align="center">

**¿Listo en menos de 5 minutos? ¡Comparte tu éxito! 🎉**

[Documentación Completa](README.md) | [Reportar Problema](https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis/issues)

</div>
