---
name: ads-variantes
description: Lateraliza UN ángulo (o un anuncio ganador) en MUCHAS variantes cruzando 3 ejes — ESTRUCTURA de guion × FORMATO/dibujo × NIVEL de consciencia. Genera un menú masivo (15-30+) para no quedarte NUNCA con un solo formato. Marca un TOP para testear + deja el resto como banco. Para escalar lateral y llenar el banco de creativos.
---

# /ads-variantes · Sácale mil versiones (nunca un solo formato)

Lanza `variantes-master`: coge un ángulo (o un anuncio que ya funciona) y genera un **menú masivo de variantes** cruzando **estructura × formato × nivel de consciencia**. El ángulo/mensaje se mantiene; cambia el dibujo y la estructura. Mínimo 15-30+ variantes, con 2-3 formatos inventados.

## Cómo usarlo
```
/ads-variantes
/ads-variantes sácale 20 versiones distintas al ángulo 1
/ads-variantes este anuncio funciona, dame variantes con otros formatos y estructuras para escalar
```

## Qué entrega
- Matriz de 15-30+ variantes (estructura · formato con EL DIBUJO · nivel · gancho-semilla · twist), dibujos NO repetidos.
- ⭐ TOP 5-8 para arrancar el test + banco con el resto. Handoff a `guion-body-master` + `hook-master` + `ad-html-builder`.
- Base: `estructuras-guion-por-nivel.md` × formatos (70+/Zenith) × `niveles-consciencia.md`.
