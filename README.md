# 💼 Cotizador de Seguridad Social Colombia - Cervialis

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

**Aplicación web interactiva para calcular cotizaciones de planes de seguridad social en Colombia según normativa PILA 2026.**

🔗 **[Ver Demo en Vivo](https://tu-usuario.github.io/cotizador-seguridad-social-cervialis/)**

---

## 📋 Tabla de Contenidos

- [Características](#-características)
- [Demo y Capturas](#-demo-y-capturas)
- [Tecnologías](#-tecnologías)
- [Instalación](#-instalación)
- [Uso](#-uso)
- [Estructura de Planes](#-estructura-de-planes)
- [Lógica de Cálculo](#-lógica-de-cálculo)
- [Despliegue en GitHub Pages](#-despliegue-en-github-pages)
- [Contribuir](#-contribuir)
- [Licencia](#-licencia)

---

## ✨ Características

### 🎯 Funcionalidades Principales

- ✅ **4 Planes de Cotización**: Mínimo, Básico, Protección y Completo
- ✅ **5 Niveles de Riesgo ARL**: Del I al V (0.522% - 6.96%)
- ✅ **Cálculo Proporcional**: Cotización por días trabajados (1-30 días)
- ✅ **Sistema de Descuentos**: Hasta 50% sobre cuota administrativa
- ✅ **Interfaz Responsive**: Optimizada para móviles, tablets y desktop
- ✅ **Cálculos Precisos**: Cumple normativa PILA Colombia 2026

### 🎨 Diseño UI/UX

- 🖼️ **Diseño Moderno**: Gradientes, sombras y animaciones suaves
- 📱 **Mobile-First**: Diseño responsive con breakpoints optimizados
- 🎨 **Tipografía Premium**: DM Sans y Poppins de Google Fonts
- ⚡ **Performance**: Vanilla JavaScript, sin dependencias externas
- 🔄 **Validaciones en Tiempo Real**: Feedback instantáneo al usuario

---

## 🖼️ Demo y Capturas

### Interfaz Principal
![Cotizador Principal](docs/screenshots/main-interface.png)

### Resumen de Cotización
![Resumen Detallado](docs/screenshots/summary-view.png)

---

## 🛠️ Tecnologías

### Stack Tecnológico

- **HTML5**: Estructura semántica
- **CSS3**: Diseño responsive con Grid y Flexbox
- **JavaScript (ES6+)**: Lógica de negocio sin frameworks
- **Google Fonts**: Tipografías DM Sans y Poppins

### Características Técnicas

- ✅ Sin dependencias externas (Vanilla JS)
- ✅ Compatible con todos los navegadores modernos
- ✅ Optimizado para SEO
- ✅ Accesible (ARIA labels cuando necesario)
- ✅ Código limpio y documentado

---

## 📥 Instalación

### Opción 1: Clonar el Repositorio

```bash
# Clonar el repositorio
git clone https://github.com/tu-usuario/cotizador-seguridad-social-cervialis.git

# Entrar al directorio
cd cotizador-seguridad-social-cervialis

# Abrir en el navegador
open index.html
# o en Windows: start index.html
# o en Linux: xdg-open index.html
```

### Opción 2: Descargar ZIP

1. Descarga el archivo ZIP desde GitHub
2. Descomprime el archivo
3. Abre `index.html` en tu navegador

### Opción 3: Usar Directamente

```bash
# Con Python (si tienes Python instalado)
python -m http.server 8000

# Con Node.js (si tienes npx instalado)
npx serve
```

Luego abre `http://localhost:8000` en tu navegador.

---

## 🚀 Uso

### 1. Configuración Básica

1. **Ingresa el IBC** (Ingreso Base de Cotización)
   - Por defecto: $1,750,905 (SMMLV 2026)
   - Editable según el salario del trabajador

2. **Selecciona la Fecha de Ingreso**
   - Calcula automáticamente días a cotizar
   - Desde fecha de ingreso hasta fin de mes

3. **Elige el Nivel de Riesgo ARL**
   - Nivel I: 0.522% (Riesgo Mínimo)
   - Nivel II: 1.044% (Riesgo Bajo)
   - Nivel III: 2.436% (Riesgo Medio)
   - Nivel IV: 4.35% (Riesgo Alto)
   - Nivel V: 6.96% (Riesgo Máximo)

4. **Selecciona el Plan**
   - Plan Mínimo: EPS + ARL
   - Plan Básico: EPS + ARL + CCF
   - Plan Protección: EPS + ARL + AFP
   - Plan Completo: EPS + ARL + CCF + AFP

### 2. Opciones Avanzadas

**Descuento (0% - 50%):**
- Aplica solo a cuota administrativa
- No compatible con prorrateo
- Disponible para mes completo o días parciales

### 3. Leer el Resumen

El resumen muestra:
- 📊 IBC utilizado
- 🔵 EPS (4%)
- 🟢 CCF (4%)
- 🟣 AFP (16%)
- 🟠 ARL (según nivel)
- 🟡 Cuota Administrativa
- 💚 Descuento aplicado (si existe)
- **💵 Total a Pagar**

---

## 📊 Estructura de Planes

### Plan Mínimo (EPS + ARL + CCF)
| Nivel | Precio Base |
|-------|-------------|
| I     | $146,900    |
| II    | $156,900    |
| III   | $178,900    |
| IV    | $211,900    |
| V     | $257,900    |

**CCF:** $100 fijo (no calculado)

---

### Plan Básico (EPS + ARL + CCF)
| Nivel | Precio Base |
|-------|-------------|
| I     | $215,900    |
| II    | $226,900    |
| III   | $248,900    |
| IV    | $281,900    |
| V     | $327,900    |

**CCF:** 4% del IBC (calculado)

---

### Plan Protección (EPS + ARL + AFP + CCF)
| Nivel | Precio Base |
|-------|-------------|
| I     | $428,900    |
| II    | $436,900    |
| III   | $458,900    |
| IV    | $492,900    |
| V     | $537,900    |

**CCF:** $100 fijo (no calculado)

---

### Plan Completo (EPS + ARL + CCF + AFP)
| Nivel | Precio Base |
|-------|-------------|
| I     | $498,900    |
| II    | $506,900    |
| III   | $528,900    |
| IV    | $562,900    |
| V     | $611,900    |

**CCF:** 4% del IBC (calculado)

---

## 🧮 Lógica de Cálculo

### Porcentajes de Aportes (PILA 2026)

| Entidad | Porcentaje |
|---------|-----------|
| EPS (Salud) | 4% |
| CCF (Caja Compensación) | 4% |
| AFP (Pensión) | 16% |
| ARL (Riesgos Laborales) | 0.522% - 6.96% |

### Reglas de Redondeo

**Entidades (EPS, ARL, CCF, AFP):**
```javascript
// Redondear a centena superior
Math.ceil(valor / 100) * 100
// Ejemplo: $70,036 → $70,100
```

**Total Días Parciales:**
```javascript
// Redondear para que termine en 900
Math.ceil(valor / 1000) * 1000 - 100
// Ejemplo: $67,234 → $67,900
```

### Cálculo Proporcional (Días Parciales)

```javascript
// Ejemplo: IBC = $1,750,905, 15 días
EPS = (1,750,905 × 0.04 / 30) × 15 = $35,018 → $35,100 (redondeado)
```

### Mes Completo (30 días)

**Sin Descuento:**
- Total = Precio de tabla EXACTO
- Cuota admin = Precio tabla - Suma entidades

**Con Descuento:**
- Descuento se aplica a cuota admin
- Total redondeado para terminar en 900

### CCF Especial

- **Plan Mínimo y Protección:** CCF = 4% dle IBC (no proporcional)
- **Plan Básico y Completo:** CCF = 4% del IBC (proporcional)

---

## 🌐 Despliegue en GitHub Pages

### Paso 1: Crear Repositorio

1. Ve a [GitHub](https://github.com) y crea una cuenta (si no tienes)
2. Crea un nuevo repositorio:
   - Nombre: `cotizador-seguridad-social-cervialis`
   - Descripción: "Cotizador de Seguridad Social Colombia 2026"
   - Público ✅

### Paso 2: Subir Archivos

```bash
# Inicializar Git en el directorio del proyecto
git init

# Agregar todos los archivos
git add .

# Hacer commit inicial
git commit -m "Initial commit: Cotizador de Seguridad Social"

# Conectar con GitHub (reemplaza TU-USUARIO)
git remote add origin https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis.git

# Subir a GitHub
git branch -M main
git push -u origin main
```

### Paso 3: Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Click en **Settings** (⚙️)
3. En el menú lateral, click en **Pages**
4. En **Source**, selecciona:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click en **Save**
6. Espera 1-2 minutos

Tu sitio estará disponible en:
```
https://TU-USUARIO.github.io/cotizador-seguridad-social-cervialis/
```

### Paso 4: Actualizar el README

Actualiza la URL en la línea 8 del README con tu URL real de GitHub Pages.

---

## 🔄 Actualizaciones Futuras

Para actualizar el sitio después de hacer cambios:

```bash
# Agregar cambios
git add .

# Hacer commit
git commit -m "Descripción de los cambios"

# Subir a GitHub
git push
```

GitHub Pages se actualizará automáticamente en 1-2 minutos.

---

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Si quieres mejorar este proyecto:

1. **Fork** el repositorio
2. Crea una **rama** para tu feature (`git checkout -b feature/mejora-increible`)
3. **Commit** tus cambios (`git commit -m 'Add: mejora increíble'`)
4. **Push** a la rama (`git push origin feature/mejora-increible`)
5. Abre un **Pull Request**

### Guía de Contribución

- Mantén el código limpio y documentado
- Prueba todos los cálculos antes de hacer PR
- Actualiza el README si agregas funcionalidades
- Respeta el estilo de código existente

---

## 📝 Changelog

### v1.0.0 (2026-02-10)
- ✅ Lanzamiento inicial
- ✅ 4 planes de cotización
- ✅ 5 niveles de riesgo ARL
- ✅ Sistema de descuentos (hasta 50%)
- ✅ Prorrateo opcional de cuota administrativa
- ✅ CCF inteligente (calculado o fijo)
- ✅ Diseño responsive
- ✅ Validaciones en tiempo real

---

## 🐛 Reporte de Bugs

Si encuentras un bug o tienes una sugerencia:

1. Ve a la pestaña [Issues](https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis/issues)
2. Click en **New Issue**
3. Describe el problema o sugerencia
4. Agrega capturas de pantalla si es posible

---

## 📧 Contacto

**Cervialis** - Empresa de Afiliaciones de Seguridad Social

- 🌐 Website: [www.cervialis.com](https://www.cervialis.com)
- 📧 Email: contacto@cervialis.com
- 📱 WhatsApp: +57 300 123 4567

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

---

## 🙏 Agradecimientos

- Normativa PILA Colombia 2026
- Google Fonts (DM Sans y Poppins)
- Comunidad de desarrolladores de GitHub

---

## 🔗 Enlaces Útiles

- 📚 [Normativa PILA Colombia](https://www.minsalud.gov.co/)
- 💡 [Calculadora de Seguridad Social](https://www.mintrabajo.gov.co/)
- 🎓 [Guía de Aportes](https://www.ugpp.gov.co/)

---

<div align="center">

**⭐ Si te gusta este proyecto, dale una estrella en GitHub ⭐**

Hecho con ❤️ en Colombia 🇨🇴

</div>
