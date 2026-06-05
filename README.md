# NeuroCopy Ads Master 🎯

> Plugin de Claude Code para crear **anuncios de vídeo (guiones) por ÁNGULO** para Meta / TikTok / YouTube. Solo publicidad. Las imágenes se delegan a `neurocopy-image-ads-master`.

Combina el ADN de **NeuroCopy** (niveles de consciencia, hooks, objeciones, la regla del avatar) + el **Método Audience de Zenith** (70+ formatos, headlines verbal/visual/audio, asuntos virales, ficha técnica, el doc-guion HTML) + la **definición exacta de ÁNGULO de Zenith Crea Ofertas** + la masterclass **Meta Ads Creative Strategy 2026**.

---

## Instalación
```bash
git clone https://github.com/zenithmetodo/neurocopy-ads-master.git ~/.claude/skills/neurocopy-ads-master
bash ~/.claude/skills/neurocopy-ads-master/install.sh
```
Luego en Claude Code: `/neurocopy-ads-master:ads-master`

---

## Qué hace (en una frase)
Por cada **ÁNGULO** crea **5 anuncios** (ejecuciones distintas), cada uno con **4 ganchos** (regla del avatar), su **formato con EL DIBUJO** en HTML/SVG, su **headline 3 tipos + ficha técnica**, su **nivel de consciencia**, y el **cuerpo palabra por palabra** — y lo entrega en **carpetas ordenadas** con cada anuncio en **HTML editable + PDF + .md + .docx**.

## Entrega por carpetas (en orden)
```
proyecto-{cliente}-ads/
├── 00-avatar-resumen/         avatar-resumen.html (editable+PDF) + .md
├── 01-angulos/                angulos.html (def. exacta Crea Ofertas) + .md + .json
└── 02-anuncios-por-angulo/
    ├── angulo-1-[nombre]/      ANUNCIO-1..5.html (doc-guion editable+PDF) + .md + GUIONES_ANGULO_1.docx
    ├── angulo-2-[nombre]/ …
    └── …
```

## ⚠️ La regla estrella: EL AVATAR EN EL GANCHO
En cada gancho se llama al avatar (entrenador, embarazada, psicóloga…) en **UNA sola capa**:
- Si el **AUDIO** nombra al avatar → el **TEXTO OVERLAY** mete **curiosidad + asunto viral**.
- Si el **OVERLAY** nombra al avatar → el **AUDIO** mete curiosidad + asunto viral.
- Nunca en las dos. → `knowledge/hooks/01-regla-avatar-gancho.md`

## 11 sub-agentes
`intake-brief` · `angulos-importer` · **`anuncios-architect`** (5 anuncios/ángulo) · **`hook-master`** (4 ganchos · 9 tipos · regla avatar) · `formato-master-ads` (70+ formatos + dibujo) · `headline-3-tipos` (+ ficha técnica) · `asuntos-virales` · `consciencia-master` · `objeciones-master` · **`ad-html-builder`** (doc-guion HTML editable+PDF) · `output-architect-ads` (carpetas + .docx).

## 6 slash commands
`/ads-master` · `/ads-angulo` · `/ads-anuncio` · `/ads-hooks` · `/ads-formato` · `/ads-headline`

## Conocimiento que aplica (obligatorio)
- **Niveles de consciencia** (Schwartz) + qué formato/táctica encaja con cada nivel.
- **70+ formatos** + banco Zenith (~24) + inventar fuera de la caja + **EL DIBUJO del formato** en HTML/SVG.
- **Headlines** verbal/visual/audio + **ficha técnica** obligatoria.
- **Asuntos virales** (6 categorías · 3 tipos · 5 criterios) + estructuras.
- **9 tipos de gancho** + 4 palancas + grading + el puente (masterclass 2026).
- **Romper objeciones** (Hormozi, Cialdini, sesgos).

## Fuera de alcance
Gestión de cuenta / media buying / presupuestos. Y las **imágenes** → `neurocopy-image-ads-master`.

---

## Atribución
Joseph Moreno · Zenith · 2026. NeuroCopy + Método Audience (Elias Mamã) + Zenith Crea Ofertas + masterclass "Meta Ads Creative Strategy in 2026".
