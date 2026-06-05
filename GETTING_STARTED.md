# Cómo empezar · NeuroCopy Ads Master

> Al terminar esta guía tendrás, en una sola sesión, un proyecto de carpetas ordenadas con **5 anuncios de vídeo por cada ángulo** (guion palabra por palabra, formato dibujado y 4 ganchos), listos para grabar y para entregar al cliente.

Esta es una guía paso a paso: qué pasa cuando invocas el plugin, qué te va a preguntar, qué decides tú, qué carpetas salen, en qué orden y cómo lo grabas. No explica la teoría (eso está en el `README.md` y en `knowledge/`); explica el **flujo de trabajo real**.

---

## 1. Antes de empezar

El plugin no inventa cifras ni avatares de fantasía. Si le das buen material, el resultado es brutal; si le das humo, te lo va a pedir. Ten a mano esto antes de invocarlo:

| Qué | Ejemplo concreto (no genérico) |
|---|---|
| **Nicho** | "Entrenadores online de pádel en España" |
| **Avatar** | "Entrenador que ya factura pero sube 3 reels al día y no le entra ni un cliente" |
| **Producto** | Qué vendes y qué incluye (curso, app, mentoría, suplemento, low-ticket…) |
| **Promesa** | Resultado + tiempo + sin qué dolor + aunque qué objeción |
| **Plataforma** | Meta (Reels/Feed) · TikTok · YouTube (Shorts/in-stream) |
| **Formatos que puedes grabar** | ¿cara a cámara? ¿2ª persona? ¿pizarra/pantalla? ¿gimbal o solo selfie? |
| **Espacio de grabación** | Dónde grabas de verdad (gimnasio, cocina, despacho, coche…) |
| **CTA + destino** | Qué pides y a dónde mandas (web, VSL, quiz, DM "X", link en bio, WhatsApp) |
| **Ángulos previos** | Si vienes de **Zenith Crea Ofertas**, ten localizado su `angulos.json` |

Si no tienes algo, no pasa nada: el `intake-brief` te lo pregunta y lo que sea secundario lo marca como `⚠️ SUPUESTO A VALIDAR` o `[DATO A RELLENAR]`.

> **Las imágenes / creativos estáticos NO se hacen aquí.** Este plugin solo hace **guiones de vídeo**. Para los estáticos se delega a `neurocopy-image-ads-master`.

---

## 2. La forma rápida

Un solo comando hace todo el recorrido:

```
/neurocopy-ads-master:ads-master
```

Lanza el pipeline completo de principio a fin:

```
intake-brief  →  angulos-importer  →  anuncios-architect  →  output-architect-ads
 (avatar)         (ángulos)            (5 anuncios/ángulo)     (carpetas + .docx)
```

Puedes lanzarlo seco o con contexto:

```
/neurocopy-ads-master:ads-master
/neurocopy-ads-master:ads-master entrenadores online que dependen de subir contenido cada día
/neurocopy-ads-master:ads-master tengo los ángulos en proyecto-X/12-angulos · hazme los anuncios
```

Cuando termina tienes el proyecto entero en carpetas: avatar, ángulos y, dentro de cada ángulo, sus 5 anuncios en HTML editable + `.md` + `.docx`.

---

## 3. Paso a paso detallado (las 4 fases)

El pipeline tiene 4 fases en orden. Aquí va qué agente actúa, qué te pregunta o decide, qué genera y qué revisas tú.

### FASE 0 · INTAKE / AVATAR

- **Agente:** `intake-brief`.
- **Qué te pregunta:** la tanda de la Fase 0, numerada, contestas lo que sepas: nicho · avatar · producto · promesa · nivel de consciencia objetivo (BAJO/MEDIO/ALTO o mezcla) · duración · plataforma · **formatos que puedes grabar** · perspectiva (1ª/3ª persona) · **espacio de grabación** · CTA + destino · ángulos ya trabajados · restricciones/no-go. Si falta info crítica (avatar, producto, promesa, CTA-destino) **para y pregunta**.
- **Qué genera:**

```
proyecto-{cliente}-ads/
└── 00-avatar-resumen/
    ├── avatar-resumen.html     (editable + Guardar PDF)
    └── avatar-resumen.md       (fuente de verdad · la leen los demás agentes)
```

- **Qué revisas tú:** que el avatar sea un tipo concreto (no "mujeres +40"), que la promesa y el CTA-destino sean los reales, y que los `⚠️ SUPUESTOS A VALIDAR` te cuadren.

### FASE 1 · ÁNGULOS

- **Agente:** `angulos-importer`.
- **Qué decide / pregunta:** si vienes de **Zenith Crea Ofertas**, lee su `12-angulos/angulos.json` y no te vuelve a preguntar. Si no, los pide o los intuye (si no sabe por dónde tirar, pregunta; si investiga, guarda el research). Por defecto **3-4 ángulos** (hasta 10).
- **Definición exacta de ángulo (Crea Ofertas):** cada ángulo lleva tipo concreto de persona + creencia específica + cómo lo rompemos. En el `ANGULO.html` van los campos canónicos: Nombre descriptivo · A qué apela · Quién es · Qué cree · **CÓMO LO ROMPEMOS** · Reconocimiento · Hook · sub-ángulos.
- **Qué genera:**

```
01-angulos/
├── _indice-angulos.html          (vista general de todos los ángulos · editable + PDF)
├── angulos.json                   (datos que consume el anuncios-architect)
├── research/                      (solo si hubo que investigar)
├── angulo-1-[nombre]/
│   └── ANGULO.html                (explicación de ESTE ángulo · editable + PDF)
├── angulo-2-[nombre]/  …
└── angulo-N-[nombre]/  …
```

- **Qué revisas tú:** que cada ángulo sea una **razón distinta** de por qué te comprarían (no el mismo dolor repetido), y que el "CÓMO LO ROMPEMOS" sea un giro de verdad.

### FASE 2 · ANUNCIOS POR ÁNGULO

- **Agente:** `anuncios-architect` (el núcleo). Orquesta a `hook-master`, `formato-master-ads`, `headline-3-tipos`, `asuntos-virales`, `consciencia-master` y `objeciones-master`; y delega el maquetado a `ad-html-builder`.
- **Qué hace (no te pregunta nada, fabrica):** por **cada ángulo**, 5 anuncios con reparto fijo **2-2-1**, nunca freestyle:

| # | Nivel dominante | Ejecución |
|---|---|---|
| 1 | **BAJO** (1-2) | UGC / Story / autodiagnóstico |
| 2 | **BAJO** (1-2) | Problem-Solution / creencia rota |
| 3 | **MEDIO** (3-4) fuerte | Big Secret / mecanismo + comparación CON-vs-SIN |
| 4 | **MEDIO** (3-4) fuerte | Contrarian / nueva forma / demostración |
| 5 | **ALTO** (5) | Prueba social / romper objeciones |

  Cada anuncio hereda los 3 ingredientes del ángulo y usa un **formato distinto** (formatos guapos; puede haber algún talking-head/selfie, pero **no los 5**). Y cada anuncio lleva: badge de nivel de consciencia + formato con **EL DIBUJO** + **4 ganchos** (regla del avatar) + headline 3 tipos + ficha técnica + **cuerpo palabra por palabra con el PUENTE** + overlays + CTA (objeciones en el nivel alto).
- **Qué genera (dentro de cada subcarpeta de ángulo):**

```
angulo-1-[nombre]/
├── ANGULO.html            (ya estaba · de la Fase 1)
├── ANUNCIO-1.html         (BAJO)
├── ANUNCIO-2.html         (BAJO)
├── ANUNCIO-3.html         (MEDIO fuerte)
├── ANUNCIO-4.html         (MEDIO fuerte)
├── ANUNCIO-5.html         (ALTO)
└── ANUNCIO-1.md … ANUNCIO-5.md
```

- **Qué revisas tú:** que cada anuncio tenga su badge de nivel, su DIBUJO del formato, los 4 ganchos con la regla del avatar bien aplicada y el cuerpo palabra por palabra (no resúmenes tipo "describe el problema").

### FASE 3 · OUTPUT

- **Agente:** `output-architect-ads`.
- **Qué hace:** monta la estructura final, genera el `.docx` de cliente por cada ángulo y **verifica** que todo está (carpetas, badge de nivel, DIBUJO del formato, cuerpo con puente, una sola `</html>` por archivo).
- **Qué genera:**

```
angulo-1-[nombre]/
└── GUIONES_ANGULO_1.docx   (los 5 guiones compilados para cliente)
```

- **Qué revisas tú:** abre un par de `ANUNCIO-N.html` y comprueba que son editables y que el `.docx` se ve limpio.

---

## 4. La forma por piezas (los otros 5 comandos)

Si no quieres el pipeline entero, hay 5 comandos sueltos. Úsalos cuando ya tienes parte hecha o quieres iterar una sola pieza:

| Comando | Cuándo usarlo |
|---|---|
| `/neurocopy-ads-master:ads-angulo` | Solo trabajar/importar los ángulos (def. exacta Crea Ofertas). Genera `01-angulos/` (html + md + json). |
| `/neurocopy-ads-master:ads-anuncio` | Crear los **5 anuncios de UN solo ángulo** (cuando los ángulos ya existen). |
| `/neurocopy-ads-master:ads-hooks` | Solo los **4 ganchos** de un anuncio, con la regla del avatar. Para afinar aperturas. |
| `/neurocopy-ads-master:ads-formato` | Recomendar **formato + EL DIBUJO** (menú amplio o inventado) para un anuncio. |
| `/neurocopy-ads-master:ads-headline` | El **headline 3 tipos** (verbal/visual/audio) + ficha técnica de un anuncio/gancho. |

Recomendación: para un proyecto nuevo, usa `/ads-master`. Los sueltos son para retocar o rehacer una pieza concreta sin tirar el resto.

---

## 5. Qué recibes al final

El árbol completo de entrega es siempre este:

```
proyecto-{cliente}-ads/
├── 00-avatar-resumen/
│   ├── avatar-resumen.html
│   └── avatar-resumen.md
└── 01-angulos/
    ├── _indice-angulos.html
    ├── angulos.json
    ├── research/                       (solo si hubo investigación)
    ├── angulo-1-[nombre]/
    │   ├── ANGULO.html                 (explicación del ángulo)
    │   ├── ANUNCIO-1.html              (BAJO)
    │   ├── ANUNCIO-2.html              (BAJO)
    │   ├── ANUNCIO-3.html              (MEDIO fuerte)
    │   ├── ANUNCIO-4.html              (MEDIO fuerte)
    │   ├── ANUNCIO-5.html              (ALTO)
    │   ├── ANUNCIO-1.md … ANUNCIO-5.md
    │   └── GUIONES_ANGULO_1.docx       (para cliente)
    ├── angulo-2-[nombre]/ …
    └── angulo-N-[nombre]/ …
```

### Qué abrir para grabar

- **El `ANUNCIO-N.html`** es lo que abres para grabar. Es un documento-guion autocontenido (paleta NeuroCopy oscura), **editable al clic** (`contenteditable` + autoguardado en el navegador). Sus secciones, en orden: cabecera + badge del formato · **badge nivel de consciencia** · srcbox (de qué ángulo sale) · formatbox · **EL DIBUJO del formato** · **los 4 ganchos** · **cuerpo palabra por palabra** · overlays · CTA exacto · foot.
- **Cómo se edita y exporta:** haz clic en cualquier texto y reescríbelo; se autoguarda. Botones **Guardar PDF / Descargar copia / Restablecer**. "Guardar PDF" imprime con los colores intactos (`@media print`).
- **El `GUIONES_ANGULO_N.docx`** es la versión para cliente (excluye notas internas como "POR QUÉ FUNCIONA"). Se genera con `references/generate_docx.py` (`pip3 install python-docx` antes).

---

## 6. Cómo grabarlo

Cada `ANUNCIO-N.html` se graba leyéndolo de arriba abajo:

1. **Monta EL DIBUJO del formato.** Es la guía visual (ticket, etiqueta nutricional, monitor ECG, alineación de fútbol, escalera de 5 niveles, mapa de metro, organigrama, cajetilla de pregunta de IG…). Recréalo en pantalla o en físico. Si lleva lista/escalera/ranking, cada elemento trae un **"DI →"** con lo que dices al señalarlo.
2. **Elige uno de los 4 ganchos y aplica la regla del avatar.** El avatar se nombra en **una sola capa**: si lo dice el **audio**, el **overlay** mete curiosidad + asunto viral; si lo dice el **overlay**, el audio mete la curiosidad. **Nunca en las dos a la vez.**
3. **Sigue el cuerpo palabra por palabra.** El guion va beat a beat con timestamps. Respeta el **PUENTE**: gancho (0-3s) → el puente educa sin vender (3-15s) → cuerpo → CTA. El producto y el CTA se nombran **lo más tarde posible**.
4. **Mete los overlays segundo a segundo.** La tabla seg/texto te dice qué aparece en pantalla y cuándo. El CTA va solo en su sección, al final.

---

## 7. Reglas que el plugin nunca rompe (las 6 globales)

1. **Por ángulo · 5 anuncios con reparto 2-2-1** → 2 BAJO + 2 MEDIO fuerte + 1 ALTO. Cada anuncio hereda persona + creencia + cómo lo rompemos del ángulo y usa un formato distinto.
2. **4 ganchos por anuncio** → todos HOOKS, nunca CTA. Cada uno: visual + audio + texto overlay + [contexto visual] + ficha.
3. **Regla del avatar en el gancho** → el avatar en una capa, curiosidad + asunto viral en la otra. Nunca duplicado.
4. **Niveles de consciencia obligatorio** → cada anuncio declara su nivel (Schwartz BAJO 1-2 / MEDIO 3-4 / ALTO 5) y qué formato/táctica encaja. Los niveles se mezclan (abre BAJO, sube).
5. **Headline 3 tipos + ficha técnica + formato con dibujo + puente** → el headline está al servicio del anuncio; el cuerpo lleva el puente (gancho → cuerpo gradual, sin saltos).
6. **Entrega por carpetas + HTML editable + PDF** → `00-avatar-resumen/`, `01-angulos/`, `01-angulos/angulo-N/`. Español de España, sin sonar a IA, sin inventar cifras.

---

## 8. Errores típicos / FAQ

**¿Y las imágenes / creativos estáticos?**
No se hacen aquí. Este plugin solo hace guiones de vídeo. Para los estáticos usa `neurocopy-image-ads-master` (se le pasan ángulos + avatar + copy de los headlines).

**¿Puedo cambiar el número de ángulos?**
Sí. Por defecto son **3-4**, pero puedes pedir hasta **10**. El reparto de 5 anuncios por ángulo (2-2-1) no cambia.

**No me aparecen los slash commands.**
Tras instalar comandos nuevos, **reinicia Claude Code** para que salgan en la lista. El entry point es `/neurocopy-ads-master:ads-master`.

**¿Puedo editar el HTML del guion?**
Sí. Cada `ANUNCIO-N.html` es `contenteditable`: clicas, reescribes y se autoguarda. Tienes Guardar PDF / Descargar copia / Restablecer.

**Vengo de Zenith Crea Ofertas, ¿tengo que rehacer los ángulos?**
No. El plugin lee su `12-angulos/angulos.json` y arranca directo desde ahí.

**¿Y si todos los anuncios me salen hablando a cámara?**
No debería: la variedad de formato es obligatoria entre los 5. Puede haber **algún** talking-head/selfie, pero nunca los 5.

**¿El nivel de consciencia decide el CTA?**
No. El CTA y el destino los pones tú en la Fase 0; el nivel de consciencia no lo decide.

---

NeuroCopy Ads Master · Joseph Moreno · Zenith · 2026. Imágenes → `neurocopy-image-ads-master`.
