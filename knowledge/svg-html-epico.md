# 🎬 SVG + HTML épico · cómo hacer slides/landings/escenas de otro mundo (con patrones reales)

> **Objetivo:** que cada slide, landing, escena de lead magnet o documento-guion no sea "bonito" sino **ÉPICO y que CONECTE** — SVG custom animado por concepto, no iconos genéricos. Aquí están las técnicas exactas (con código copiable) destiladas de HTML reales que funcionan. Regla madre: **anima la METÁFORA del concepto, no decores.**

## 0 · El principio (lo que separa lo épico de lo del montón)

- **Un SVG bespoke por idea.** Cada concepto tiene su propia escena animada: una moneda que flota, un cliente que camina por el embudo, un núcleo que gira, una grieta que se abre, una barra que sube, un dato que viaja por un tubo. **El SVG cuenta el concepto.** Nada de iconos de librería pegados.
- **El movimiento tiene sentido:** la animación refuerza el mensaje (el cliente recorre el embudo = ves el recorrido; el número sube = sientes el crecimiento). Movimiento porque sí = ruido.
- **Premium y sobrio:** dark, 1 color de acción, gradientes con criterio, glow medido. Épico ≠ recargado.

## 1 · El esqueleto del HTML

```html
<!DOCTYPE html>
<html lang="es-ES">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<style>
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
:root{
 --bg:#0E0B14;--bg2:#15101F;--ink:#F7F3EC;--muted:#B8AEC6;--faint:#7A7088;
 --gold:#F5B841;--gold-soft:#FBD37B;--emerald:#37D9A0;--electric:#6C8CFF;--coral:#FF6B5E;
 --card:#1B1526;--card2:#221A30;--line:#2E2640;
 --grad-gold:linear-gradient(135deg,#FBD37B 0%,#F5B841 45%,#E0992A 100%);
}
</style>
</head>
```
- **Design system con CSS variables** (`:root`): paleta dark premium + 1 acento + semánticos + gradientes como tokens. **Si el proyecto trae su branding, usa SUS colores** (no estos): estos son el ejemplo.
- **Fonts:** `Space Grotesk` (títulos/impacto), `Inter` (cuerpo), `JetBrains Mono` (etiquetas/datos). `display=swap` + `preconnect`.
- **SVG con `viewBox`** (escala responsive), `<g>` por elemento, `<text>` con las fonts y colores `var(--…)`.

## 2 · Los DOS motores de animación

### A) CSS `@keyframes` (para HTML + SVG con clases)
Nombres **semánticos** y, si hay muchas escenas en un doc, **con prefijo de escena** (`c2m1blip`, `c3lmflow`) para que no colisionen.
```css
.coin{animation:coinFloat 2.6s ease-in-out infinite}
@keyframes coinFloat{0%,100%{transform:translateY(0)}50%{transform:translateY(-10px)}}
```

### B) SMIL nativo (para iconos/SVG autocontenidos, sin CSS)
```html
<!-- núcleo que gira: anillo punteado rotando + centro -->
<svg viewBox="0 0 24 24">
  <circle cx="12" cy="12" r="9" stroke="#00E5CF" stroke-width="1.6" stroke-dasharray="3 4">
    <animateTransform attributeName="transform" type="rotate" from="0 12 12" to="360 12 12" dur="8s" repeatCount="indefinite"/>
  </circle>
  <circle cx="12" cy="12" r="5.2" stroke="#9C1AFF" stroke-width="1.6"/>
  <circle cx="12" cy="12" r="1.8" fill="#FF6B5E"/>
</svg>
```

## 3 · El TOOLKIT épico (patrones copiables)

**Line-drawing (un trazo/path se dibuja solo):**
```css
.path-draw{stroke-dasharray:1100;stroke-dashoffset:1100;animation:draw 2.6s ease forwards .3s}
@keyframes draw{to{stroke-dashoffset:0}}
```

**Viaje por trayectoria (una partícula recorre un path) — CSS:**
```css
.flowdot{offset-path:path('M70 130 H930');animation:flow 6s linear infinite}
.flowdot.d2{animation-delay:1.2s}.flowdot.d3{animation-delay:2.4s}
@keyframes flow{to{offset-distance:100%}}
```
**…o SMIL:** `<circle r="9" fill="var(--gold)"><animateMotion dur="4.2s" repeatCount="indefinite" path="M120,175 L200,150 L255,205 L330,158"/></circle>`

**Float / pulse / glow:**
```css
@keyframes coinFloat{0%,100%{transform:translateY(0)}50%{transform:translateY(-10px)}}
@keyframes beamGlow{0%,100%{opacity:.85}50%{opacity:1}}
@keyframes desireGlow{0%,100%{opacity:.6}50%{opacity:1}}
```

**Entrada con rebote suave + delays escalonados (revelado secuencial):**
```css
.p-rise{transform-origin:bottom;animation:pRise 1s cubic-bezier(.2,.8,.2,1) both}
.p-rise.d1{animation-delay:.1s}.p-rise.d2{animation-delay:.35s}.p-rise.d3{animation-delay:.6s}
@keyframes pRise{from{transform:scaleY(0);opacity:0}to{transform:scaleY(1);opacity:1}}
```

**Glow real (desenfoque):** `<filter id="glow"><feGaussianBlur stdDeviation="6"/></filter>` aplicado a un trazo de acento; o `filter: drop-shadow(0 0 12px var(--gold))`.

**Gradientes con profundidad:** `<linearGradient><stop offset="0%" stop-color="#FBD37B"/><stop offset="100%" stop-color="#E0992A"/></linearGradient>` y úsalo como `fill="url(#grad)"`.

**Glassmorphism:** `backdrop-filter: blur(10px)` sobre una card semi-transparente.

**Scroll-trigger (la escena se anima al entrar en pantalla):**
```js
const io=new IntersectionObserver(es=>es.forEach(e=>{if(e.isIntersecting)e.target.classList.add('in')}),{threshold:.3});
document.querySelectorAll('.scene').forEach(s=>io.observe(s));
```

**Easing de marca:** `cubic-bezier(.2,.8,.2,1)` (entra rápido, asienta suave) para casi todo.

## 4 · ⭐ Regla de ORO innegociable · accesibilidad

**TODA animación va dentro de `@media (prefers-reduced-motion: no-preference){ … }`.** Quien tenga "reduce motion" activado ve la versión **estática y completa** (sin mareos), no una rota. Esto es lo que separa un pro de un amateur. En los HTML de referencia aparece 10-32 veces por archivo: no es opcional.
```css
@media (prefers-reduced-motion: no-preference){
  .col{transform-origin:bottom;animation:colUp .9s cubic-bezier(.2,.8,.2,1) both}
  @keyframes colUp{from{transform:scaleY(0)}to{transform:scaleY(1)}}
}
```

## 5 · Rendimiento y limpieza

- Anima solo `transform` y `opacity` (las baratas). Evita animar `width/height/top/left`.
- `will-change: transform` solo en lo que de verdad se mueve mucho.
- Nombres de `@keyframes` **scoped** por escena cuando hay muchas en un doc (evita colisiones).
- SVG con `viewBox` (responsive). Texto dentro del SVG con las fonts del sistema de diseño.

## 6 · Checklist "¿es ÉPICO de verdad?"

- [ ] ¿El SVG es **custom y cuenta el concepto** (anima la metáfora), no un icono pegado?
- [ ] ¿Hay **una escena animada por idea clave** (no todo plano, no todo moviéndose)?
- [ ] ¿Usa el **design system** (tokens, 3 fonts, 1 acento) y respeta el branding del proyecto?
- [ ] ¿Aplica al menos 2-3 técnicas del toolkit (draw, viaje por path, glow, stagger)?
- [ ] ¿TODA animación está bajo `prefers-reduced-motion: no-preference`?
- [ ] ¿Anima solo transform/opacity? ¿`viewBox` responsive?
- [ ] ¿El movimiento **refuerza el mensaje** o es ruido? (si es ruido, quítalo)

## 7 · Cómo lo usan los agentes

Quien genere **slides de webinar, landings, escenas de lead magnet, decks/HTML de reels o documentos-guion** aplica ESTE método: SVG bespoke por concepto + el toolkit + la regla de oro de accesibilidad. La estética de marca la marca `claude-design` / el branding del proyecto; **esto es la capa de SVG dinámico que lo hace épico y que CONECTA.**
