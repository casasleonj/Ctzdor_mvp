# 🤝 Guía de Contribución

¡Gracias por tu interés en contribuir al Cotizador de Seguridad Social Colombia! Esta guía te ayudará a participar en el proyecto.

---

## 📋 Tabla de Contenidos

- [Código de Conducta](#código-de-conducta)
- [¿Cómo puedo contribuir?](#cómo-puedo-contribuir)
- [Reportar Bugs](#reportar-bugs)
- [Sugerir Mejoras](#sugerir-mejoras)
- [Pull Requests](#pull-requests)
- [Estilo de Código](#estilo-de-código)
- [Commit Messages](#commit-messages)

---

## 📜 Código de Conducta

Este proyecto se adhiere a un código de conducta. Al participar, se espera que mantengas un ambiente respetuoso y colaborativo.

---

## 🎯 ¿Cómo puedo contribuir?

### 1. Reportar Bugs
Si encuentras un error, por favor:
- Verifica que no esté ya reportado en [Issues](https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis/issues)
- Crea un nuevo issue con:
  - Descripción clara del problema
  - Pasos para reproducirlo
  - Comportamiento esperado vs actual
  - Capturas de pantalla (si aplica)
  - Navegador y versión

### 2. Sugerir Mejoras
¿Tienes ideas para mejorar el cotizador?
- Abre un issue con el tag `enhancement`
- Describe la funcionalidad propuesta
- Explica por qué sería útil
- Proporciona ejemplos si es posible

### 3. Contribuir con Código
Sigue estos pasos:

```bash
# 1. Fork el repositorio
# 2. Clona tu fork
git clone https://github.com/TU-USUARIO/cotizador-seguridad-social-cervialis.git

# 3. Crea una rama para tu feature
git checkout -b feature/nombre-descriptivo

# 4. Haz tus cambios y pruébalos
# 5. Commit con mensaje descriptivo
git commit -m "Add: funcionalidad de exportar PDF"

# 6. Push a tu fork
git push origin feature/nombre-descriptivo

# 7. Abre un Pull Request
```

---

## 🐛 Reportar Bugs

### Template de Bug Report

```markdown
**Descripción del Bug**
Descripción clara y concisa del problema.

**Pasos para Reproducir**
1. Ve a '...'
2. Haz click en '...'
3. Ingresa '...'
4. Ve el error

**Comportamiento Esperado**
Qué esperabas que sucediera.

**Comportamiento Actual**
Qué sucedió en realidad.

**Capturas de Pantalla**
Si aplica, agrega capturas.

**Entorno:**
- Navegador: [ej. Chrome 120]
- OS: [ej. Windows 11, macOS 14]
- Dispositivo: [Desktop, Mobile, Tablet]

**Información Adicional**
Cualquier contexto adicional sobre el problema.
```

---

## 💡 Sugerir Mejoras

### Template de Feature Request

```markdown
**¿Tu feature está relacionado con un problema?**
Descripción clara del problema. Ej: "Siempre me frustra cuando..."

**Describe la solución que te gustaría**
Descripción clara de lo que quieres que suceda.

**Describe alternativas consideradas**
Otras soluciones o features que has considerado.

**Contexto Adicional**
Capturas, mockups o contexto adicional sobre la feature.
```

---

## 🔀 Pull Requests

### Checklist antes de crear un PR

- [ ] El código sigue el estilo del proyecto
- [ ] He probado todos los cálculos manualmente
- [ ] Los cambios funcionan en Chrome, Firefox y Safari
- [ ] He actualizado la documentación si es necesario
- [ ] He agregado comentarios en código complejo
- [ ] El título del PR es descriptivo
- [ ] He referenciado el issue relacionado (si existe)

### Template de Pull Request

```markdown
**Descripción**
Breve descripción de los cambios.

**Tipo de Cambio**
- [ ] Bug fix (cambio que arregla un issue)
- [ ] Nueva feature (cambio que agrega funcionalidad)
- [ ] Breaking change (fix o feature que causa cambios en funcionalidad existente)
- [ ] Mejora de documentación

**¿Cómo se ha probado?**
Describe las pruebas realizadas.

**Checklist:**
- [ ] Mi código sigue el estilo del proyecto
- [ ] He hecho self-review de mi código
- [ ] He comentado el código en áreas difíciles
- [ ] He actualizado la documentación
- [ ] Mis cambios no generan warnings
- [ ] He probado en múltiples navegadores

**Screenshots (si aplica)**
Agrega capturas de los cambios visuales.
```

---

## 🎨 Estilo de Código

### HTML
```html
<!-- Usar indentación de 4 espacios -->
<div class="container">
    <div class="card">
        <h1>Título</h1>
    </div>
</div>
```

### CSS
```css
/* Usar kebab-case para clases */
.plan-card {
    display: flex;
    align-items: center;
    padding: 1rem;
}

/* Organizar propiedades alfabéticamente */
.button {
    background-color: #0066CC;
    border-radius: 8px;
    color: white;
    padding: 0.75rem 1.5rem;
}
```

### JavaScript
```javascript
// Usar camelCase para variables y funciones
function calculateTotal(ibc, dias) {
    const eps = (ibc * 0.04 / 30) * dias;
    return eps;
}

// Usar const por defecto, let solo si reasignas
const PORCENTAJES = {
    eps: 4,
    ccf: 4,
    afp: 16
};

// Comentar solo cuando sea necesario explicar "por qué"
// Redondear a centena superior para cumplir normativa PILA
const epsRedondeado = Math.ceil(eps / 100) * 100;
```

### Nombres de Variables

✅ **Buenos nombres:**
```javascript
const ibcProporcional = (ibc / 30) * diasCotizar;
const cuotaAdministrativa = precioTabla - totalAportes;
const descuentoAplicado = cuotaAdmin * (porcentaje / 100);
```

❌ **Malos nombres:**
```javascript
const x = (y / 30) * z;
const temp = a - b;
const d = c * (p / 100);
```

---

## 💬 Commit Messages

Sigue la convención de commits semánticos:

### Formato
```
<tipo>: <descripción corta>

[cuerpo opcional]

[footer opcional]
```

### Tipos
- `feat:` Nueva funcionalidad
- `fix:` Corrección de bug
- `docs:` Cambios en documentación
- `style:` Cambios de formato (no afectan código)
- `refactor:` Refactorización de código
- `test:` Agregar o corregir tests
- `chore:` Tareas de mantenimiento

### Ejemplos

✅ **Buenos commits:**
```bash
feat: agregar sistema de descuentos hasta 50%
fix: corregir redondeo de CCF en plan mínimo
docs: actualizar README con nueva funcionalidad
style: mejorar espaciado en tarjetas de planes
refactor: simplificar función de cálculo de IBC
```

❌ **Malos commits:**
```bash
fix stuff
update
changes
wip
asdf
```

---

## 🧪 Testing

Antes de hacer un PR, verifica:

### Cálculos Matemáticos
- [ ] IBC proporcional correcto
- [ ] Redondeos a centena superior
- [ ] Total termina en 900 (días parciales)
- [ ] CCF fijo de $100 en planes correctos
- [ ] Descuento se aplica correctamente

### Navegadores
- [ ] Chrome (última versión)
- [ ] Firefox (última versión)
- [ ] Safari (última versión)
- [ ] Edge (última versión)

### Dispositivos
- [ ] Desktop (1920x1080)
- [ ] Tablet (768x1024)
- [ ] Mobile (375x667)

### Casos de Uso
- [ ] Mes completo (30 días)
- [ ] Días parciales (1-29 días)
- [ ] Con descuento
- [ ] Con prorrateo
- [ ] Cambio de plan
- [ ] Cambio de nivel ARL

---

## 📚 Recursos

- [Normativa PILA Colombia](https://www.minsalud.gov.co/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Semantic Versioning](https://semver.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)

---

## ❓ Preguntas

Si tienes preguntas, puedes:
- Abrir un issue con el tag `question`
- Contactar al equipo de Cervialis
- Revisar la documentación en el README

---

## 🙏 Agradecimientos

Gracias por contribuir a hacer este cotizador mejor para todos los colombianos que necesitan calcular su seguridad social.

---

<div align="center">

**¡Gracias por ser parte de este proyecto! 🎉**

</div>
