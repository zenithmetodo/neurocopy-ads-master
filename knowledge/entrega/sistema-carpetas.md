# Sistema de carpetas de entrega · NeuroCopy Ads Master

> Igual que Zenith Crea Ofertas crea una carpeta por cada etapa, NeuroCopy Ads Master entrega SIEMPRE en carpetas ordenadas. El `output-architect-ads` las crea SIN EXCEPCIÓN. Si al terminar no existen, el pipeline está MAL.

---

## Estructura OBLIGATORIA (en orden)

```
proyecto-{cliente}-ads/
├── 00-avatar-resumen/
│   ├── avatar-resumen.html     (editable + PDF · quién es, día a día, dolores, deseos, objeciones, lenguaje real, creencias)
│   └── avatar-resumen.md
│
├── 01-angulos/
│   ├── angulos.html            (EXACTAMENTE como Zenith Crea Ofertas: definición del ángulo + cards con
│   │                            Nombre descriptivo · A qué apela · Quién es · Qué cree · CÓMO LO ROMPEMOS · Reconocimiento · Hook · sub-ángulos)
│   ├── angulos.md
│   ├── angulos.json            (datos que consume el anuncios-architect para crear los anuncios por ángulo)
│   └── research/               (SOLO si hubo que investigar para intuir los ángulos · research.md + research.html)
│
└── 02-anuncios-por-angulo/
    ├── angulo-1-[nombre-descriptivo]/
    │   ├── ANUNCIO-1.html       (doc-guion estilo Zenith · editable + PDF · ver estructura abajo)
    │   ├── ANUNCIO-1.md         (GUION.md legible)
    │   ├── ANUNCIO-2.html / .md
    │   ├── ANUNCIO-3.html / .md
    │   ├── ANUNCIO-4.html / .md
    │   ├── ANUNCIO-5.html / .md
    │   └── GUIONES_ANGULO_1.docx  (compilado para cliente · generate_docx.py)
    ├── angulo-2-[nombre]/  …
    └── angulo-N-[nombre]/  …
```

**Regla:** 3-4 ángulos por defecto (hasta 10), **5 anuncios por ángulo**, **4 ganchos por anuncio**. Imágenes NO van aquí → las hace `neurocopy-image-ads-master` en su propio flujo.

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

- Existen `00-avatar-resumen/`, `01-angulos/`, `02-anuncios-por-angulo/angulo-N/`.
- Cada `ANUNCIO-N.html`: 1 sola `</html>`, badge de nivel presente, sección CUERPO palabra por palabra presente, `id="contenido"` (editable), `print-color-adjust`, 0 "quiz"/"captions".
- `angulos.html` con los campos de Crea Ofertas (A qué apela / Qué cree / Cómo lo rompemos).

---

## Atribución
Sistema de entrega por carpetas · clona el patrón de Zenith Crea Ofertas + el doc-guion HTML de Zenith Audience. Joseph Moreno · 2026.
