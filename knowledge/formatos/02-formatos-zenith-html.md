# ⭐ Formatos ZENITH + Know-how HTML (creados con Joseph · 2026)

> Banco de formatos NUEVOS validados en producción con Joseph (nicho: entrenadores online España, "liga del 1%") + el **método exacto para construir cada reel como un documento-guion HTML autocontenido**. Este archivo es la actualización 1000% del agente `formato-master`: añade ~24 formatos disruptivos que NO estaban en el master, el know-how para generar los HTML, y la directiva de inventar creatividad nueva en cada reel.

---

## 0 · DIRECTIVA MAESTRA (lo primero)

> **En CADA reel, `formato-master` propone al menos 1-2 formatos NUEVOS / inventados, nunca repite el mismo "dibujo".** Piensa fuera de la caja con **objetos y metáforas cotidianas** (un ticket de caja, una etiqueta nutricional, un monitor de hospital, un mapa de metro, una alineación de fútbol, un organigrama, un cerebro…). Lo aburrido (talking head + lista) es el suelo, no el techo. El formato es el 50% de que un reel pare el scroll.

Reglas que se mantienen del master: muchos formatos (no 3), nivel de consciencia obligatorio (`08`), engenharia reversa Apify de ganadores.

---

## 1 · CÓMO SE CONSTRUYE EL REEL (documento-guion HTML autocontenido)

Cada reel se entrega como **un solo archivo `.html`** (abre en navegador, imprime a PDF), plantilla oscura premium. El editor **graba "el dibujo del formato"** que va dentro.

### Plantilla base (CSS Zenith · copiar tal cual)
```
:root{--bg:#0c1015;--panel:#141b24;--panel2:#1b2530;--cian:#00E5D0;--cian-soft:#0bb6a6;
      --gold:#f5c451;--txt:#eaf2f2;--muted:#93a3a8;--line:#243240;--red:#e63946;--green:#16c784}
@media print{*{-webkit-print-color-adjust:exact!important;print-color-adjust:exact!important;color-adjust:exact!important}body{padding:14px}}
```
Clases núcleo: `.tag` (REEL N), `.fmt`/`.v2` (badge dorado del formato), `.srcbox` (de qué sale), `.formatbox` (cómo se ve), `.gancho`+`.ghead`, `.hookline` (la frase del gancho), `.layer`+`.pill`(`.pa` audio/`.pt` textual/`.pv` visual)/`.pfi`(ficha), `.overlay-txt`, `.body`+`.b`+`.ts`+`.say`+`.vis` (cuerpo), `.cta`, `.foot`. **Bug a evitar:** nunca `svg{width:100%}` global (agranda todos los iconos) → scopear a `.x svg` y dar width/height explícito a los iconos.

### Secciones OBLIGATORIAS de cada HTML
1. **Cabecera:** `REEL N · ZENITH AUDIENCE` + badge del formato + tema.
2. **srcbox:** de qué creador/idea/clase sale (con métricas si es modelado de un viral).
3. **formatbox:** cómo se ve el formato en 1 frase.
4. **⭐ EL DIBUJO DEL FORMATO:** el componente visual HTML/SVG que el editor recrea (la escalera, el ticket, el campo de fútbol, el organigrama…). Es el corazón del reel.
5. **Los 6 ganchos** (ver §2).
6. **⭐ CUERPO · lo que dices (palabra por palabra):** guion literal beat a beat con timestamps (0–Xs). NO resúmenes tipo "describes los niveles" → texto hablado real.
7. **Overlays:** tabla seg / texto / color.
8. **CTA exacto** (solo aquí va "comenta LIGA").
9. **foot.**

### ⭐ Truco PRO: meter el guion DENTRO del dibujo
Cuando el formato es lista/escalera/ranking, embeber en cada elemento una línea **`DI →` "lo que dices en ese punto"** (estilo cian) para que el creador **lea directo del dibujo al grabar** (clase `.say`). Pedido y validado por Joseph.

---

## 2 · LOS 6 GANCHOS (estándar duro)

- **6 ganchos = 6 HOOKS** (aperturas que paran el scroll en 0-3s). **NINGUNO es un CTA.** "Comenta LIGA" jamás va en un gancho → solo en la sección CTA y en el último beat del cuerpo.
- **CORTOS y directos.** El público entrenador se nombra **a nivel headline, repartido entre AUDIO y TEXTUAL** (en unos en el audio, en otros en el overlay; no en los 6 a la vez = call-out progresivo).
- Cada gancho lleva **ficha corta:** asunto(s) viral(es) (Deseo/Miedo/Creencia falsa/Identificación/Producto/Figura) + estructura (T01–T12) + 2 gatillos.
- **Formas de gancho que rotamos** (que se diga de maneras distintas):
  1. **Disparador directo:** *"Josep, [el título/encargo]."* (una voz le suelta el tema y arranca).
  2. **Reto / autodiagnóstico:** *"Hay 5 niveles… dime en cuál estás."*
  3. **Creencia rota:** *"Crees que [X]. Falso."*
  4. **Dato seco / número:** *"El 90% de los entrenadores online…"*
  5. **Contraorden (T11):** *"La próxima vez que [vayas a X], para."*
  6. **Espejo / identificación:** *"Si tu semana es [X], esto te va a doler."*
  7. **Aspiración:** *"El nivel en el que ya no dependes de [X]."*

---

## 3 · VOZ ZENITH (de `MEMORIA ARCHIVOS MD/tono-y-comunicacion.md`)

Claro y humano, **una idea por frase**, disruptivo ≠ chulería. **Psicología del no:** afirmar lo deseado, jamás "no es tu culpa" → apuntar a la causa externa ("te lo enseñaron al revés"). **Prohibida la típica analogía de IA** ("casa sin cimientos", "coche sin gasolina"); sí **analogías humanas españolas**. Palabrota muy dosificada (orgánico). **CTA pequeño:** *"comenta LIGA y te mando los 3 puntos/pasos…"* + *"sígueme si quieres dejar de ser un entrenador 24/7 y operar como la liga del 1%"*. Nunca "el método completo".

---

## 4 · CATÁLOGO DE FORMATOS ZENITH (todos los creados con Joseph)

> Cada uno: **cómo se ve · el dibujo (componentes) · cuándo brilla · nivel de consciencia · reel ejemplo**. Inventa variantes sobre estos, no los copies 1:1.

### A · CLASIFICATORIOS / JUEGO
1. **Alineación de fútbol · TITULAR / SUPLENTE / DESCARTE** — reimaginación del "kiss/marry/kill" en clave entrenador. Dibujo: **campo de fútbol SVG** (once titular, banquillo, grada) + camisetas con dorsal, balón, escudo (SVG limpio, NUNCA emojis). Clasificas tácticas/herramientas. Brilla: opinión + save-bait, súper on-brand deporte. Consciencia: MEDIO. Reel 83.
2. **Ranking irónico 1-10** — cartelas numeradas que se rellenan mientras hablas + cara de palo; orden invertido A POSTA (lo malo arriba con elogio absurdo, lo bueno abajo "como lo peor"). Brilla: sátira del sector, comentarios. BAJO. Reels 58, 62 (modelado @nuclimed). Variante: queja absurda sobre algo bueno ("traer cualificados = qué marrón, compran mucho").
3. **Ranking serio 1-10** — igual pero del derecho, con el "DI →" embebido. MEDIO. Reel 58-serio.
4. **Frecuencias CADA DÍA / DE VEZ EN CUANDO / NUNCA** — 3 etiquetas, chips/miniaturas que se apilan bajo cada una con justificación absurda dicha en serio. Satírico. BAJO. Reel 62.
5. **Tier list S/A/B/C con lógica real** — tarjetas en tiers PERO cada una con su **porqué lógico concreto** (S = patrón claro, la IA no se cansa; C = criterio/vínculo humano). MEDIO. Reel 80.
6. **VERDAD / MENTIRA** — tarjetas que se voltean a VERDAD (cian) o MENTIRA (rojo); desmonta mitos. Creencia falsa. BAJO-MEDIO. Reel 77.
7. **Herramienta INTERACTIVA drag-and-drop con mascota-cursor** — HTML jugable para GRABAR: arrastras tarjetas a zonas que se imantan; **la mascota Zenón es el cursor y "agarra" la tarjeta con el brazo**. SVG top, sin emojis, modo grabación. Para cualquier formato clasificatorio. Ver `KISS-MARRY-KILL-ZENON-CURSOR.html`. Pointer events + cursor:none.

### B · OBJETO COTIDIANO como argumento (los más disruptivos)
8. **Ticket / factura / recibo** — ticket de caja que imprime línea a línea los **costes ocultos** del modelo viejo; total ≠ cifra = **"tu techo"**. Pareja en POSITIVO (verde) = la factura del 1% que te "devuelve". Brilla: "nadie lo había sumado así". MEDIO. Reels 67, 68.
9. **Etiqueta de información nutricional del negocio** — etiqueta FDA realista (bordes negros, "porción: 1 mes", %): "Prospección 80%, Dependencia 100%, Ventas 4%, Libertad 0%". MEDIO. Reel 73.
10. **Monitor de hospital / ECG** — pantalla médica (línea verde de pulso) que entra en **flatline** cuando "paras los ads una semana". Constantes: pulso de leads, tensión de caja. Miedo. BAJO. Reel 74.
11. **Ecuaciones del error** — cada línea `[práctica concreta] = [coste + coste de oportunidad]` apareciendo con sonido seco; giro T12 "cambia un lado y el otro cae solo". MEDIO. (estilo pedido por Joseph).

### C · DIAGRAMAS / MAPAS
12. **Organigrama de equipo invisible** — tú = CEO arriba, debajo cajas de "empleados" (cada uno una automatización/IA) con su rol + nómina total 0€/24-7. Se puede mapear a las skills/plugins reales (badge por caja). MEDIO. Reels 64, 79.
13. **Mapa de metro** — líneas de metro de colores = procesos (captación / contenido / ventas / seguimiento); paradas = pasos; la IA mueve los trenes. MEDIO. Reel 82.
14. **El cerebro (Claude.md)** — órgano-cerebro SVG que se rellena con secciones (oferta / avatar / voz / precios): "la IA no te falla, le hablas sin cerebro". MEDIO. Reel 81.
15. **Escalera 5 niveles · autodiagnóstico** — 5 escalones que se encienden de rojo a cian; el espectador se ve en uno y quiere subir al 5. Embeber el "DI →" por escalón. Identificación. MEDIO. Reels 65, 85.

### D · COMPARATIVAS
16. **NO HAGAS / HAZ ESTO (DON'T/INSTEAD)** — 2 columnas (roja "no hagas" / cian "haz esto") que se rellenan en pares. Producto + creencia. MEDIO. Reels 61, 75 (modelado @sannidhyabaweja).
17. **ANTES / DESPUÉS · semana** — calendario semanal a 2 columnas: sin sistema/IA (agotado) vs con sistema/IA. Deseo. MEDIO. Reel 78.
18. **Versus split-list con micro-explicación** — lista partida por la mitad (izq vs der), cada fila comparada + su explicación corta y honesta. Figura/Creencia. MEDIO. Reel 84 (ChatGPT vs Claude).
19. **Debate a dos / desmonta excusas** — split-screen: 🅐 suelta una creencia que suena bien, 🅑 la desmonta seca; rounds que escalan hasta la rendición + reveal. Modelado @_celiarubio. MEDIO-ALTO. Reel 60.

### E · DEMOSTRACIÓN / PRUEBA
20. **Demo dual-cam (iPhone 17 Pro Max)** — graba con las DOS cámaras: frontal = tu cara en círculo arriba; trasera = la pantalla con lo que la IA te montó. "Mira lo que he montado con una frase." Prueba pura. ALTO. Reel 69.
21. **Screen-record "una frase" + time-lapse** — enseñas el prompt → time-lapse x8 de la construcción → el activo funcionando. Producto/Recompensa. ALTO. Reel 63.

### F · ESTÉTICOS / NARRATIVOS
22. **Cinematográfico filosófico / manifiesto** — b-roll lento + frases potentes en pantalla, una por plano, voz en off calmada, caption de 3 palabras. Modelado @thedankoe. Rompe tu propio patrón. ALTO. Reel 66.
23. **Roast / expediente clasificado** — tono dosier/roast del sector (sellos, tachones). BAJO. Reels 29, 45.
24. **Lead magnet / mini-SaaS / videojuego-funnel** — activos interactivos completos (8 mini-apps, juego retro) que se entregan como experiencia-embudo. ALTO. Reels 56, 57.

### G · NATIVOS DE INSTAGRAM (se sienten parte de la app)
25. **Cajetilla de pregunta de Instagram (respondiendo a un seguidor)** — EL DIBUJO es la **cajetilla nativa de pregunta de IG** (la cajita "Hazme una pregunta" con el texto del seguidor dentro + su @ y mini-avatar) flotando arriba de la pantalla, y tú respondes a cámara como si fuera un Q&A real. Súper nativo, frena el scroll porque parece contenido orgánico de stories. **Cómo se monta (editor):** recrea la cajita gris/blanca de IG en HTML/CSS (bordes redondeados, sombra, gradiente del sticker de pregunta, @handle + avatar circular) con la pregunta dentro; aparece con pop + micro-vibración; tú respondes en dual-cam o talking head. La pregunta puede ser real (de tus DMs) o una que TÚ plantas para abrir el tema. **Niveles:** BAJO → la pregunta nombra un síntoma ("¿por qué subo reels y no me entra nadie?"). MEDIO → pregunta de comparación/mecanismo ("¿ads o orgánico para captar?"). ALTO → pregunta-objeción ("¿merece la pena pagar una agencia?") y la rompes. Gatillos: Reconocimiento + Autoridad. Encaja con call-out al entrenador en la propia pregunta.

---

## 5 · CHECKLIST de entrega (formato-master, antes de dar el reel)
- [ ] ¿El formato es uno NUEVO o una variante fresca (no el típico talking head)?
- [ ] ¿Hay "EL DIBUJO DEL FORMATO" en HTML/SVG que el editor pueda grabar?
- [ ] ¿6 ganchos, todos HOOKS, ninguno CTA, call-out al entrenador repartido audio/textual?
- [ ] ¿Cada gancho con asunto viral + estructura T0X + 2 gatillos?
- [ ] ¿CUERPO palabra por palabra con timestamps? (y "DI →" embebido si es lista/escalera)
- [ ] ¿"Comenta LIGA" SOLO en CTA + último beat? ¿CTA pequeño + liga del 1%?
- [ ] ¿Voz Zenith (psicología del no, analogías humanas, sin gurú)? ¿@media print intacto, 1 sola `</html>`?

---

## Atribución
Formatos creados en producción con Joseph Moreno (Método Zenith) · 2026. Modelados de virales reales (@nuclimed, @_celiarubio, @sannidhyabaweja, @nathan.perdriau, @thedankoe, @danmartell, @benheathmarketing, @liamottley) + inventados desde cero. Conecta con `00-master-formatos-reels.md`, `08-niveles-consciencia.md` y la memoria `MEMORIA ARCHIVOS MD/`.
