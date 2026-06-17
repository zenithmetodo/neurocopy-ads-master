---
name: ads-research
description: Investiga ANTES de escribir: busca anuncios validados en la Meta Ad Library (API oficial, Apify o biblioteca publica) y mina la voz del cliente (Reddit, Amazon, YouTube). Devuelve angulos validados, ganchos, duraciones, ofertas y las frases textuales del avatar, con fuente y confianza. No inventa.
---

# /ads-research · Pesquisa real (Ads Library + voz del cliente)

Lanza `ads-research`: trae datos reales antes de escribir anuncios. Busca anuncios que llevan meses corriendo (= funcionan) en la **Meta Ad Library** y extrae las **palabras exactas del avatar** de Reddit/Amazon/YouTube.

## Cómo usarlo
```
/ads-research
/ads-research nicho: entrenadores online en España; competidores: [paginas]
/ads-research busca winners de video en ES de los ultimos 90 dias para [nicho]
```

## Método (no falla)
1. **Apify (vía principal)** con `APIFY_TOKEN`: lanza un actor de scraping de la Ad Library, espera el run y lee el dataset (texto, fecha de inicio = winner, plataforma, media).
2. **Meta Ad Library API** si hay `META_ADS_TOKEN` (respaldo · da gasto e impresiones reales).
3. **Biblioteca pública + web** si no hay tokens (lectura pública, declara confianza).
4. **Voz del cliente** siempre (Reddit/Amazon/YouTube · frases textuales · 9 categorías).

## Requisito (token propio)
Cada usuario pone **su propio** `APIFY_TOKEN` (o `META_ADS_TOKEN`) en su entorno; el plugin no trae ninguno ni se comparte. Sin token, funciona en modo público (menos datos).

## Qué entrega
Escribe `00-avatar-resumen/research.md`: anuncios validados (con `ad_snapshot_url`, antigüedad, duración, oferta), patrones (ángulos/ganchos/duraciones), voz del cliente textual, el GAP competitivo, y fuente + confianza. No inventa: lo que no verifica lo marca `[DATO A RELLENAR]` o lo pregunta.
