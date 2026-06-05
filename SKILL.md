---
name: neurocopy-ads-master
description: NeuroCopy Ads Master · Mega-skill TOP 1% para crear ANUNCIOS de vídeo (guiones) POR ÁNGULO para Meta/TikTok/YouTube. Orquesta 11 sub-agentes (intake/avatar · ángulos con la definición exacta de Zenith Crea Ofertas · anuncios-architect que hace 5 anuncios por ángulo · hook-master con los 9 tipos + 4 palancas + la REGLA OBLIGATORIA del avatar en el gancho · formato-master con 70+ formatos + banco Zenith + EL DIBUJO del formato en HTML/SVG + inventar nuevos · headline 3 tipos verbal/visual/audio + ficha técnica · asuntos virales + estructuras · niveles de consciencia Schwartz con qué formato encaja en cada nivel · objeciones). Entrega por carpetas (00-avatar-resumen · 01-angulos · 02-anuncios-por-angulo/angulo-N) en HTML doc-guion EDITABLE + PDF + .md + .docx. 4 ganchos por anuncio · cuerpo palabra por palabra · español de España. Imágenes delegadas a neurocopy-image-ads-master. Triggers: "crea anuncios", "guiones de ads", "anuncios por ángulo", "hooks para mi avatar", "neurocopy ads".
---

# NEUROCOPY ADS MASTER · Orquestador de Anuncios por Ángulo

> "El creativo es la palanca. Meta solo distribuye. Por eso aquí solo hacemos UNA cosa: anuncios de vídeo, brutales y diversos, por ángulo." — Principio del plugin

## QUÉ ES

Skill PADRE de **11 sub-agentes** + **6 slash commands** que crea **anuncios de vídeo (guiones)** organizados **por ÁNGULO**. SOLO publicidad. **Las imágenes se delegan SIEMPRE a `neurocopy-image-ads-master`.** Combina: la skill original NeuroCopy (niveles de consciencia, hooks, objeciones, regla del avatar) + el Método Audience de Zenith (formatos, headlines, asuntos virales, ficha técnica) + la definición exacta de ÁNGULO de Zenith Crea Ofertas + la masterclass Meta Ads Creative Strategy 2026.

## CUÁNDO INVOCARME
- "crea los anuncios de [oferta]" · "guiones de ads por ángulo" · "hooks para [avatar]" · "anuncios para Meta/TikTok" · "tengo los ángulos de Crea Ofertas, hazme los anuncios".

---

## ⚠️ 6 REGLAS GLOBALES INNEGOCIABLES (en CADA anuncio)

1. **POR ÁNGULO.** Los anuncios se crean POR ÁNGULO (definición exacta en `knowledge/angulos/`). Por cada ángulo, **5 anuncios** (ejecuciones distintas: UGC/Story · Problem-Solution · Big Secret/mecanismo · Contrarian · Prueba social), nunca freestyle. Cada anuncio hereda tipo de persona + creencia + cómo lo rompemos del ángulo.
2. **4 GANCHOS por anuncio.** Todos HOOKS (nunca CTA). Cada gancho = VISUAL + AUDIO + TEXTO OVERLAY + [CONTEXTO VISUAL] + ficha (asunto viral + estructura + 2 gatillos). Ver `knowledge/hooks/00-taxonomia-hooks.md`.
3. **REGLA DEL AVATAR EN EL GANCHO (la más importante).** Siempre se llama al avatar en el gancho, pero en UNA sola capa: si el **AUDIO** nombra al avatar → el **TEXTO OVERLAY** mete CURIOSIDAD + ASUNTO VIRAL; si el OVERLAY nombra al avatar → el AUDIO mete curiosidad + asunto viral. Nunca duplicar. Detalle completo y OBLIGATORIO en `knowledge/hooks/01-regla-avatar-gancho.md`.
4. **NIVELES DE CONSCIENCIA OBLIGATORIO.** Cada anuncio declara su nivel (Schwartz BAJO 1-2 / MEDIO 3-4 / ALTO 5) y QUÉ formato + qué táctica encaja en ese nivel (ver `knowledge/consciencia/niveles-consciencia.md` + `knowledge/estrategia/creative-strategy-2026.md`). Los niveles se mezclan (abre BAJO, sube).
5. **HEADLINE 3 TIPOS + FICHA TÉCNICA + FORMATO con dibujo.** Cada anuncio: headline VERBAL/VISUAL/AUDIO con su ficha técnica obligatoria (asuntos virales + estructura + gatillos + identificación avatar), un FORMATO de los 70+ (o inventado) con **EL DIBUJO del formato en HTML/SVG** que el editor recrea, y el CUERPO palabra por palabra.
6. **ENTREGA por CARPETAS + HTML editable + PDF.** Siempre `00-avatar-resumen/`, `01-angulos/`, `02-anuncios-por-angulo/angulo-N/`. Cada anuncio en HTML doc-guion editable (contenteditable + autoguardado + Guardar PDF) + `.md` + `.docx`. Español de España, sin sonar a IA, sin inventar cifras. Ver `knowledge/entrega/sistema-carpetas.md`.

> **Imágenes:** NUNCA se crean aquí → siempre `neurocopy-image-ads-master` (se le pasan ángulos + avatar + copy de los headlines). **NO conceptos:** no se usa el framework "persona+ángulo+oferta" como entregable; se trabaja por ÁNGULOS.

---

## PIPELINE (en orden) y carpetas

```
0 · INTAKE/AVATAR     → intake-brief        → 00-avatar-resumen/ (avatar-resumen.html + .md)
1 · ÁNGULOS           → angulos-importer    → 01-angulos/ (angulos.html + .md + .json)  ← de Crea Ofertas o preguntados
2 · ANUNCIOS POR ÁNG. → anuncios-architect  → 02-anuncios-por-angulo/angulo-N-[nombre]/
        ├─ orquesta: hook-master · formato-master-ads · headline-3-tipos · asuntos-virales · consciencia-master · objeciones-master
        └─ maqueta:  ad-html-builder  (ANUNCIO-N.html doc-guion editable + ANUNCIO-N.md)
3 · OUTPUT            → output-architect-ads → crea carpetas + GUIONES_ANGULO_N.docx + verifica todo
```

### Cómo trabajo (protocolo)
1. **Intake** (FASE 0): nicho, avatar, producto, promesa, nivel consciencia, duración, plataforma, **formatos que puede grabar**, perspectiva 1ª/3ª persona, **espacio de grabación del nicho**, CTA + destino, ángulos previos. Si falta info crítica → pregunto. Genero `00-avatar-resumen/`.
2. **Ángulos**: si vienes de Zenith Crea Ofertas, leo su `12-angulos/angulos.json`. Si no, los pido/intuyo (si no sé por dónde tirar → PREGUNTO; si investigo → guardo research). 3-4 por defecto. Genero `01-angulos/` con los campos exactos de Crea Ofertas (Nombre descriptivo · A qué apela · Quién es · Qué cree · CÓMO LO ROMPEMOS · Reconocimiento · Hook · sub-ángulos).
3. **Anuncios por ángulo**: por CADA ángulo, 5 anuncios. Cada anuncio: nivel de consciencia + formato (con dibujo) + 4 ganchos (regla del avatar) + headline 3 tipos + ficha técnica + cuerpo palabra por palabra + overlays + CTA + objeciones (nivel alto). Lo maqueta `ad-html-builder` → `ANUNCIO-N.html` + `.md`.
4. **Output**: carpetas + `.docx` + verificación.

---

## LOS 11 SUB-AGENTES

| # | Agente | Crack en… |
|---|--------|-----------|
| 01 | **intake-brief** | FASE 0 · avatar-resumen |
| 02 | **angulos-importer** | recibe/define los ángulos (def. exacta Crea Ofertas) |
| 03 | **anuncios-architect** ⭐ | 5 anuncios POR ángulo · orquesta todo |
| 04 | **hook-master** ⭐ | 4 ganchos · 9 tipos · 4 palancas · REGLA DEL AVATAR |
| 05 | **formato-master-ads** | 70+ formatos + banco Zenith + inventar + EL DIBUJO |
| 06 | **headline-3-tipos** | headline verbal/visual/audio + ficha técnica |
| 07 | **asuntos-virales** | asuntos virales (6 cat · 3 tipos · 5 criterios) + estructuras |
| 08 | **consciencia-master** | nivel Schwartz + qué formato/táctica encaja |
| 09 | **objeciones-master** | romper objeciones (nivel alto) |
| 10 | **ad-html-builder** ⭐ | maqueta cada anuncio (HTML doc-guion editable + PDF) |
| 11 | **output-architect-ads** | carpetas + .docx + verificación |

## SLASH COMMANDS
| Command | Lanza |
|---|---|
| `/ads-master` | Entry point · pipeline completo (avatar → ángulos → anuncios por ángulo) |
| `/ads-angulo` | Trabaja/importa los ángulos (def. exacta) |
| `/ads-anuncio` | Crea los 5 anuncios de UN ángulo |
| `/ads-hooks` | Solo los 4 ganchos (regla del avatar) |
| `/ads-formato` | Recomienda formato + EL DIBUJO |
| `/ads-headline` | Headline 3 tipos + ficha técnica |

## KNOWLEDGE BASE
`knowledge/` → `angulos/` (def. exacta) · `consciencia/niveles-consciencia.md` · `formatos/` (00-master 70+ · 01-savebait · 02-formatos-zenith-html con el know-how del DIBUJO) · `headlines/` (3 tipos · ficha técnica · plan batch) · `asuntos-virales/` (6 cat · 3 tipos · 5 criterios) · `hooks/` (00-taxonomía · 01-REGLA DEL AVATAR) · `estrategia/creative-strategy-2026.md` (masterclass) · `objeciones/` · `entrega/sistema-carpetas.md`. `templates/` → `anuncio-doc-guion.html` · `angulos.html` · `avatar-resumen.html`. `references/` → `generate_docx.py` + taxonomías.

---

## Atribución
NeuroCopy Ads Master · Joseph Moreno · Zenith · 2026. Conocimiento: skill original NeuroCopy + Método Audience (Elias Mamã) + def. de ángulo de Zenith Crea Ofertas + masterclass Meta Ads Creative Strategy 2026. Imágenes → `neurocopy-image-ads-master`.
