# Claude + Atlas: Disección de Anuncios con IA

Documento de knowledge de la primera clase de Cloud (Claude, la IA de Anthropic) del módulo de Copy DR. Explica cómo encontrar anuncios que estén funcionando, bajarlos, transcribirlos y diseccionarlos con la skill ATLAS para obtener la ficha técnica completa de un anuncio etapa por etapa, y por qué la ingeniería inversa de creativos es el atajo para aprender copy de respuesta directa.

## Tesis central

- No inventas la pólvora: robas como un artista. La maestría no está en crear de cero, sino en ENTENDER LOS PATRONES de los anuncios que ya venden y adaptarlos.
- Disecar anuncios reales que funcionan es la forma más rápida de aprender la teoría (qué es un hook, un ángulo, un mecanismo): la ves aplicada etapa por etapa en lugar de estudiarla en abstracto.
- La IA (Claude + la skill Atlas) hace en minutos lo que a mano te llevaría días: organiza el anuncio por etapas y por colores, y te devuelve la psicología profunda del avatar. Negar la herramienta es perder el tiempo.
- El mercado no está saturado, está en colapso / commodity: todos ruedan lo mismo. Justo por eso, tener el Atlas en la mano te diferencia.

## Flujo de la materia prima (de anuncio a texto)

El objetivo es conseguir el TEXTO de un anuncio que esté funcionando para meterlo en el Atlas.

1. Encuentra el anuncio en un swipe file o en la biblioteca de anuncios, buscando un mecanismo que esté caliente.
2. Fíltralo con Copcat Ads (anunciantes con 5+ creativos activos) y bájalo.
3. Transcríbelo con Assembly (modelo "universal").
4. Ya tienes el texto listo para el Atlas.

### Dónde encontrar anuncios (swipe files)

Un swipe file es una colección de anuncios guardados para estudiar.

- Opciones citadas: Swipe Redpill, Native Swipe, Swipe Offers, Swipe Nature.
- Recomendación personal del formador (a ojo, su "achismo"): Redpill y Swipe Nature, los más útiles para encontrar mecanismos que estén calientes.
- El formador trabaja el 100% del tiempo el mercado americano: busca el mecanismo en la biblioteca (ejemplo citado: el mecanismo de la "gelatina" como hack para adelgazar) y mira quién lo está rodando.
- Si trabajas otra área (nutricionista, abogado, etc.): busca las ofertas de tus competidores filtrando por país (España), idioma (español) y nicho. Mismo juego, otro tablero.

### Copcat Ads (filtrar y descargar)

- Herramienta que filtra anuncios. Tiene versión gratuita y de pago (unos 25-30 reales/mes, una birria).
- Función clave: le dices "ponme los anuncios con 5 o más creativos activos" (señal de que el anunciante escala) y te filtra de entre 50.000+ anuncios solo lo que de verdad está funcionando.
- También descarga anuncios. Al bajar, prefiere la opción "Ad" antes que "Adlib note" porque baja más rápido.

### Assembly / AssemblyAI (transcribir)

- En su playground subes el archivo de vídeo o grabas audio.
- Elige el modelo "universal": rápido y muy certero.
- Te devuelve el texto del anuncio.

## Claude / Cloud: versiones e instalación de skills

### Las versiones de Claude

| Versión | Para qué | Uso recomendado |
|---|---|---|
| Opus | Planear y ejecutar tareas; la potente | La que se usa con el Atlas. Punto. |
| Sonnet | Escribir, creatividad, día a día | Tareas de redacción |
| Haiku | Cosas muy rápidas y ligeras | Tareas ligeras |

- Las demás versiones son inferiores. Para el Atlas: Opus con la skill.
- La versión gratuita de Claude es limitada; para esto necesitas la de pago (Opus).

### Qué es una skill

Una skill es una "habilidad": un archivo de instrucciones (un plan) que instalas en Claude para que ejecute una tarea concreta de una forma concreta.

### Cómo instalar una skill

1. Configuración.
2. Capacidades.
3. Personalizar.
4. Crear habilidad.
5. Subir el archivo.

Truco más rápido: arrastra la skill directamente y te aparece la opción de instalarla.

## El libro de cabecera: "Roba como un artista" (Austin Kleon)

- Rompe la creencia de que tienes que crear todo de cero o ser el mejor inventando.
- Libro cortísimo, esquemático, lleno de dibujos: se lee en un día.
- Idea central: "Nada se crea, todo se copia" (Picasso). Van Gogh, Miguel Ángel… copiaban; eran famosos por estar en los sitios de poder, pero había pintores mejores no reconocidos. El mensaje no es "copia y pega", es entender el patrón de por qué algo funciona y adaptarlo.
- Frases que marcaron al formador:
  - "No esperes a saber quién eres para empezar."
  - "Escribe el libro que quieres leer."
  - "Usa las manos." (no te quedes solo pensando, hazlo)
- Conexión directa con disecar anuncios: entiendes el patrón del anuncio que vende y lo haces tuyo.

## El Atlas: qué es y cómo se usa

El Atlas es la skill creada por el formador para hacer ingeniería inversa de un anuncio.

- Uso: pegas la copy del anuncio (el texto sacado de Assembly) y escribes la barra de la skill (`/atlas`). El Atlas ya tiene el plan dentro y genera el output: la ficha técnica completa, etapa por etapa, en un documento.
- Dentro de la skill vive el rol y las reglas, no se escribe cada vez en el chat. Ejemplo de instrucción interna: "Eres un analista de creativos de Direct Response con 15 años de experiencia… nunca inventes datos ni cites fragmentos que no existan en el texto."
- Sirve también para evaluar tus PROPIAS copys: le metes la tuya y te la puntúa con el score card y te dice qué mejorar.

### El cambio que lo cambia todo: separar por color

- Copy en el swipe = todo el texto pegado, en bloque, junto, sin separar. Para leer eso hace falta una paciencia que no tienes; no ves la estructura.
- Copy separada por color (lo que hace el Atlas) = ves de un vistazo la causa raíz, el gancho, el cuerpo y el cierre. Ejemplo citado: la causa raíz nº 1 detectada fue "cadmium chloride" (cloruro de cadmio): "los pesticidas y metales pesados contaminan el agua".

### Cómo se entrenaron las notas (squad de skills)

- Se usan skills para crear skills. El formador tenía una skill llamada "DR Score System" y le dijo al Atlas: "usa el DR Score System dentro del Atlas".
- Sumar una skill validada con otra = crear un "squad" (escuadrón) que ejecuta tareas conjuntas.
- El score se genera a partir de copys validadas que le envías.

### Soporte del documento

- El formador tira el documento en Google Docs, no en Word: tiene TDAH y necesita una página sin divisiones, libre, donde moverse sin estructura rígida.
- Cowork vs. proyecto en Claude: el "cowork" lee una carpeta entera (por ejemplo 10 creativos de golpe, en bloque); el "proyecto" no lo usa porque es una estructura cerrada que le resulta desordenada.

## La salida del Atlas: la ficha técnica completa

Esto es lo que el Atlas devuelve en la disección.

### Nivel de sofisticación
En qué etapa de sofisticación de mercado está el anuncio (cuánto ha oído ya el mercado el mismo mensaje).

### Framework (AIDA)
- Atención = el gancho (hook).
- Interés + Deseo = el cuerpo.
- Acción = el cierre / close.

### Game Name (nombre chicle)
Nombre pegadizo y con misterio del mecanismo. Ejemplos: "freno metabólico invisible", "hack de la gelatina bariátrica". Ese nombre que se te queda pegado.

### Tipo de creativo
- Habla en 1ª persona.
- Vicio de oralidad (lenguaje hablado, coloquial: "esta puta báscula").
- Termina con un CTA visual.
- Plataforma: Meta.
- Tono UGC (parece grabado por un usuario normal).
- Tono provocativo / conspiracionista / autoritario.

### Arquitectura del hook
- Transcripción literal del hook.
- Tipo: provocación / conspiración / promesa. Abre fuerte un pensamiento y NO lo concluye (abre el bucle). Ejemplo: "cuál es el método real y cómo la industria está manipulando con la gelatina".
- Promesa específica: "9 libras en una semana" (ojo: el mercado americano mide en libras, no en kg; 1 libra ≈ 0,45 kg).
- Mecanismo de la solución (la gelatina) y mecanismo del problema (la industria te lo manipuló).
- Loop abierto numérico.
- Dog whistle (silbato para perros): los vicios de lenguaje que solo entiende el grupo objetivo. Ejemplo del fútbol: "¿qué pasa, pierna?" lo pilla solo quien es del mundillo.
- Promesa específica + invalidación de alternativas (invalida los medicamentos: "esto NO es como los pinchazos").

### Cuerpo
Problema → agitación → solución (el anuncio entero, desplegado).

### Score card (tarjeta de puntuación)
- La nota del anuncio por bloque + los puntos a mejorar.
- Ejemplo: hook 9, ángulo 7. ¿Cómo subo el ángulo? El ángulo era conspiración + casero vs. Ozempic, pero Ozempic está SATURADO. Si lo cambias por Mounjaro / Zepbound / tirzepatida (mecanismos más frescos), la nota del ángulo sube. El score card te dice exactamente qué tocar.

### Organización por colores
| Color | Bloque |
|---|---|
| Verde | El "sob" / la apertura (hook) |
| Naranja | El cuerpo |
| Morado | El cierre |
| Rojo | La psicología |

## La psicología (la parte que más te hace crecer)

### Deseo dominante / deep psychology (el porqué de los porqués)
La mujer no quiere SOLO perder peso. Lo que quiere de verdad: volver a ser mirada, ser deseada, dar envidia a sus amigas, ser la más guapa de la fiesta, ponerse la ropa que la hace sentirse sexy. Si te quedas en "perder peso" no abres el abanico de segmentos. Ejemplo del abanico: trabaja el pelo y la ropa, no solo "el biquini", porque hay quien no va a la playa; abre más ángulos.

### Deep core (el núcleo profundo)
"Ella quiere perder peso, pero lo que de verdad quiere es: dejar de sentirme derrotada cada vez que me peso. Otra vez cedí a la tentación, otra vez engordé." Esa es la herida.

### Loops cognitivos = romper objeciones
La lista de cosas que el avatar se dice a sí mismo: "ya lo he probado todo, no funciona nada, debe de ser mi metabolismo, no tengo disciplina, no puedo pagar los pinchazos, todo es un timo, como poco y no adelgazo".

Cada loop se convierte en una rotura de objeción dentro de la copy:
- "No importa que lo hayas probado todo: este método está 100% comprobado para mujeres de más de 30."
- "No importa tu edad ni tu genética; es un factor actual: lo que comes."
- "No vas a gastarte 2.000 € en Mounjaro; este tratamiento es gratis, con ingredientes de casa." Pero ojo: la venta se condiciona a una entrega / a un protocolo (no es magia gratis).

### El mapa de las capas
Perfil, tormentos, miedos, tipo de público, sueños y por qué NO actúa. Toda la cebolla del avatar.

> "Esto se está robando muchísimo en el mercado: todos se copian. Tener esto en la palma de la mano te hace crecer rápido."

## La VSL y los modelos de embudo

- Una VSL (Video Sales Letter) es un vídeo de ventas de en torno a 1 hora que la gente compra.
- "¿Quién es el infeliz que se ve una hora y luego compra? No lo sé. Solo sé que VENDE." Nunca dudes del modelo VSL: es uno de los mejores modelos de adquisición que existen.
- Dato concreto: en una VSL de 1h02, el botón de compra / el precio aparece a los 55 minutos. 55 minutos calentando al lead antes de pedirle un euro.
- El mercado americano consume muchísimo este formato; el brasileño y el español son más escépticos.
- Para mercados escépticos: mini VSL de 20-25 minutos, o quiz + VSL. Hay muchos modelos de embudo, no solo uno.

## Dónde estudiar el mercado: fuentes y regla de oro

### ClickBank (mercado Nutra / suplementos)
- Marketplace de afiliados. Entra en "marketplace" → "top offers" → categoría "health & fitness".
- En la "affiliate page" pones un link y te llevas la VSL completa que está rodando el competidor.

### CB Snooper (ClickBank Snooper)
- Sirve para ver los productos con mayor movimiento / mayor gravedad (gravity), o sea, los que más se venden y más demanda tienen ("watch hot").

### Swiper
- Colección de copys antiguas en texto y Magalogs organizados por nicho. Oro puro para estudiar la copy clásica.

### Regla de oro de las fuentes
- Para tomar el pulso del mercado / ver qué escala → SWIPE.
- Para estudiar COPY y MECANISMOS a fondo → CLICKBANK / ClickBank Analytics.

## Plataformas y su público

- Native / Taboola: público más mayor, lector de noticias. Estalla cuando pasa un acontecimiento (una bomba en Dubái, la muerte de un famoso).
- Facebook: el zombi de la dopamina.
- YouTube: vídeo largo / VSL.

## Mentalidad y carrera (Q&A)

- Sin ego con la herramienta ni con la copy: "La copy no tiene amor ni sentimiento." Si te encariñas con tu VSL, no la sueltas cuando se gasta 100-300k y no valida. Hay que ser frío. El ego del copy de agencia te hunde.
- Al negacionista de la IA, mándalo a disecar un anuncio a mano y que cuente los días que tarda, frente al Atlas que lo organiza por color y por etapas en minutos.
- Fijo vs. comisión: el fijo te acomoda y te condiciona. El primer mes de comisión del formador fueron 50.000 con un sueldo previo de 3.500 (doce meses en uno). Rechazó una propuesta americana de 50.000 $ fijos por esto mismo. DR paga COMISIÓN, algo raro frente al mundo del lanzamiento.
- Empezar como afiliado es caro y arriesgado: "con 5k empiezas" es mentira. Caião juntó 25k y no consiguió la virada (el despegue); Covolan acertó rápido pero se dejó 60k en estructura (cloaker, programador). Es un juego de mucha pasta.
- La estabilidad no existe: el padre del formador, 20 años en la misma empresa, +50 años, sueldo de 10k, lo echaron a la calle.
- El socio tiene que ser igual de loco/psicópata que tú; os cobráis desde el respeto. "Contrata despacio, despide rápido."
- Cámara abierta en las clases: "Quien no es visto, no es recordado." A los mejores alumnos se les reconoce por la cara y el compromiso.
- El copy júnior debe ir él mismo a por las métricas: el gestor de tráfico no para a enseñarte.
- El portfolio tiene que ser diferente: nada de un link de Google Drive con cuatro docs; usa Lovable o Notion. Es la primera impresión.
- Especialízate en un nicho si eres afiliado / operación propia. El error es saltar de rama en rama.

## Errores a evitar

- Quedarte en el deseo de superficie ("perder peso") sin abrir el deseo profundo ni el abanico de segmentos.
- Estudiar la copy en bloque, sin separarla por etapas/colores: no ves la estructura.
- Usar ángulos o mecanismos saturados (ejemplo: Ozempic) cuando hay alternativas más frescas (Mounjaro, Zepbound, tirzepatida).
- Inventar datos o citar fragmentos que no existen en el texto del anuncio.
- Encariñarte con tu copy y no soltarla cuando no valida.
- Confundir libras con kilos en el mercado americano.
- Creer que con poca caja puedes empezar como afiliado, o que el mercado está "saturado" en vez de en colapso/commodity.

## Glosario rápido

- Atlas: skill que disecciona un anuncio (ingeniería inversa) y devuelve su ficha técnica por etapas y colores.
- Skill: archivo de instrucciones (un plan) que instalas en Claude.
- Game name / nombre chicle: nombre pegadizo y misterioso del mecanismo.
- Mecanismo: el "cómo"; del problema (la causa villana) y de la solución.
- Dog whistle: jerga que solo entiende el grupo objetivo.
- Loop abierto: idea que se abre y no se cierra para mantener la atención.
- Score card: nota del anuncio por bloque + qué mejorar.
- Sofisticación de mercado: cuánto ha oído ya el mercado el mismo mensaje.
- Deep core / deep psychology: el deseo profundo detrás del deseo de superficie.
- Loops cognitivos: las objeciones que el avatar se repite y que la copy va rompiendo.
- UGC: contenido que parece grabado por un usuario normal.
- Gravity: indicador de cuánto se vende/promueve un producto en ClickBank.
- Cloaker: software para ocultar la página real a la revisión de la plataforma.
- Commodity: mercado donde todos ruedan lo mismo.

## Cómo lo aplica un agente

- Pide al usuario el texto del anuncio (o el flujo: swipe → Copcat Ads con 5+ creativos activos → Assembly modelo universal) y solo trabaja sobre texto que existe; nunca inventes datos ni cites fragmentos inexistentes.
- Devuelve la ficha técnica completa en el orden del Atlas: nivel de sofisticación, AIDA, game name, tipo de creativo, arquitectura del hook, cuerpo (problema→agitación→solución), score card y mapa de capas.
- Separa siempre el output por colores: verde = apertura/hook, naranja = cuerpo, morado = cierre, rojo = psicología, para que se vea la estructura de un vistazo.
- En el hook identifica tipo (provocación/conspiración/promesa), loop abierto, promesa específica, mecanismo de problema y de solución, dog whistle e invalidación de alternativas.
- Extrae el deseo dominante profundo (no el de superficie), abre el abanico de segmentos y convierte cada loop cognitivo del avatar en una rotura de objeción concreta dentro de la copy.
- En el score card puntúa por bloque y propón mejoras accionables, sustituyendo ángulos/mecanismos saturados por otros más frescos; si el usuario aporta su propia copy, evalúala igual.
