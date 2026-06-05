# Sistema de carpetas de entrega · NeuroCopy Ads Master

> Igual que Zenith Crea Ofertas crea una carpeta por cada etapa, NeuroCopy Ads Master entrega SIEMPRE en carpetas ordenadas. El `output-architect-ads` las crea SIN EXCEPCIÓN. Si al terminar no existen, el pipeline está MAL.

---

## Estructura OBLIGATORIA (en orden)

```
proyecto-{cliente}-ads/
├── 00-avatar-resumen/
│   ├── avatar-resumen.html         (editable + PDF · quién es, día a día, dolores, deseos, objeciones, lenguaje real)
│   └── avatar-resumen.md
│
└── 01-angulos/                      ← CARPETA ÁNGULOS
    ├── _indice-angulos.html         (vista general · lista de todos los ángulos · editable + PDF)
    ├── angulos.json                 (datos que consume el anuncios-architect)
    ├── research/                    (SOLO si hubo que investigar · research.md + research.html)
    │
    ├── angulo-1-[nombre-descriptivo]/        ← SUBCARPETA por cada ángulo
    │   ├── ANGULO.html              (EXPLICACIÓN de ESTE ángulo · estilo Crea Ofertas: Nombre descriptivo ·
    │   │                             A qué apela · Quién es · Qué cree · CÓMO LO ROMPEMOS · Reconocimiento · Hook · sub-ángulos · editable+PDF)
    │   ├── ANUNCIO-1.html           (doc-guion · con EL DIBUJO del formato · editable + PDF · BAJO dominante)
    │   ├── ANUNCIO-2.html           (BAJO dominante)
    │   ├── ANUNCIO-3.html           (MEDIO dominante fuerte)
    │   ├── ANUNCIO-4.html           (MEDIO dominante fuerte)
    │   ├── ANUNCIO-5.html           (ALTO)
    │   ├── ANUNCIO-1.md … ANUNCIO-5.md   (GUION.md legible de cada uno)
    │   └── GUIONES_ANGULO_1.docx    (los 5 guiones compilados para cliente · generate_docx.py)
    ├── angulo-2-[nombre]/  …
    └── angulo-N-[nombre]/  …
```

**Regla:** 3-4 ángulos por defecto (hasta 10) · **5 anuncios por ángulo con reparto 2 BAJO + 2 MEDIO fuerte + 1 ALTO** · **4 ganchos por anuncio** · cada anuncio con FORMATO distinto (puede haber algún talking-head/selfie, no los 5). **Dentro de cada subcarpeta de ángulo:** el `ANGULO.html` (explicación), los `ANUNCIO-N.html` (con el dibujo del formato) y el `.docx` con los guiones. Imágenes NO van aquí → `neurocopy-image-ads-master`.

---

## Estructura de CADA `ANUNCIO-N.html` (doc-guion Zenith · editable + PDF)

Cada anuncio es un documento-guion HTML autocontenido (paleta oscura: cian #00E5D0 · gold #f5c451 · dark #0c1015), **editable al clic** (contenteditable + autoguardado localStorage + botón Guardar PDF / Descargar copia / Restablecer) y con `@media print{*{print-color-adjust:exact!important}}`. Secciones OBLIGATORIAS, en orden:

1. **Cabecera** — `ANUNCIO N · NEUROCOPY` + badge del formato + título.
2. **⭐ BADGE NIVEL DE CONSCIENCIA** — `BAJO (1-2)` / `MEDIO (3-4)` / `ALTO (5)` + 1 frase de la táctica. Sin badge = incompleto.
3. **srcbox** — de qué ÁNGULO sale (tipo de persona + creencia + cómo lo rompemos).
4. **formatbox** — el formato en 1 frase.
5. **⭐ EL DIBUJO DEL FORMATO** — el componente visual HTML/SVG que el editor recrea (ticket, etiqueta nutricional, monitor ECG, alineación de fútbol, escalera 5 niveles, organigrama, mapa de metro, cajetilla de pregunta de IG…). Si es lista/escalera/ranking → "DI →" embebido en cada elemento.
6. **Los 4 ganchos** — cada uno: AUDIO + TEXTO OVERLAY + VISUAL + [CONTEXTO VISUAL] + ficha (asunto viral + estructura + 2 gatillos). **Regla del avatar** aplicada.
7. **⭐ CUERPO · lo que dices (palabra por palabra)** — guion literal beat a beat con timestamps. NUNCA resumido.
8. **Overlays** — tabla seg / texto.
9. **CTA exacto** — solo aquí.
10. **foot.**

---

## Conversión a .docx (cliente)

- `references/generate_docx.py` (auto-deploy si no está en el proyecto).
- `pip3 install python-docx` antes.
- `python3 generate_docx.py --all "proyecto-{cliente}-ads/"` genera los `GUIONES_ANGULO_N.docx`.
- El .docx de cliente excluye "POR QUÉ FUNCIONA", "Plataforma", "Fuente original" y añade banner "ANUNCIO N" + "NOTAS DE GRABACIÓN + CONSEJO EDITOR".

---

## Verificación final (output-architect-ads, Bash)

- Existen `00-avatar-resumen/`, `01-angulos/`, y una subcarpeta `01-angulos/angulo-N-[nombre]/` por cada ángulo.
- Cada subcarpeta de ángulo tiene su `ANGULO.html` (explicación) + 5 `ANUNCIO-N.html` (2 BAJO + 2 MEDIO + 1 ALTO) + `GUIONES_ANGULO_N.docx`.
- Cada `ANUNCIO-N.html`: 1 sola `</html>`, badge de nivel presente, EL DIBUJO del formato presente, sección CUERPO palabra por palabra (con puente) presente, `id="contenido"` (editable), `print-color-adjust`, 0 "quiz"/"captions".
- `ANGULO.html` con los campos de Crea Ofertas (A qué apela / Qué cree / Cómo lo rompemos / hook).

---

## Atribución
Sistema de entrega por carpetas · clona el patrón de Zenith Crea Ofertas + el doc-guion HTML de Zenith Audience. Joseph Moreno · 2026.
