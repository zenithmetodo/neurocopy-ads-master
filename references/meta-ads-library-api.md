# META ADS LIBRARY API — Referencia para Investigacion de Competencia

## QUE ES

La Meta Ad Library API permite buscar y analizar anuncios que estan corriendo (o han corrido) en Facebook, Instagram, Messenger, Audience Network y Threads.

## ENDPOINT

```
GET https://graph.facebook.com/v23.0/ads_archive
```

## PARAMETROS DE BUSQUEDA

| Parametro | Tipo | Descripcion |
|---|---|---|
| search_terms | string | Palabras clave (max 100 chars) |
| search_page_ids | array | Hasta 10 Facebook Page IDs de competidores |
| ad_reached_countries | array | Codigos ISO o "ALL" |
| ad_active_status | enum | ACTIVE, INACTIVE, ALL |
| ad_type | enum | ALL, POLITICAL_AND_ISSUE_ADS, EMPLOYMENT_ADS, etc. |
| media_type | enum | ALL, IMAGE, MEME, VIDEO, NONE |
| publisher_platforms | array | FACEBOOK, INSTAGRAM, AUDIENCE_NETWORK, MESSENGER, WHATSAPP, THREADS |
| ad_delivery_date_min/max | string | YYYY-mm-dd |
| languages | array | Codigos ISO 639-1 |
| estimated_audience_size_min/max | int64 | 100, 1000, 5000, 10000, 50000, 100000, 500000, 1000000 |
| search_type | enum | KEYWORD_UNORDERED, KEYWORD_EXACT_PHRASE |
| limit | int | Hasta 2000 por request (default 25) |

## CAMPOS DE RESPUESTA

| Campo | Descripcion |
|---|---|
| id | ID unico del ad |
| ad_snapshot_url | URL para ver el ad archivado |
| page_id / page_name | Pagina que lo publico |
| ad_creative_bodies | Texto del ad |
| ad_creative_link_titles | Titulo del link |
| ad_creative_link_descriptions | Descripcion del link |
| ad_creative_link_captions | Caption del link |
| ad_delivery_start_time | Cuando empezo |
| ad_delivery_stop_time | Cuando paro |
| publisher_platforms | Donde aparecio |
| spend | Rango de gasto (lower/upper) |
| impressions | Rango de impresiones |
| media_type | Imagen, video, meme |

## EJEMPLO DE LLAMADA (Investigar competidor)

```
GET https://graph.facebook.com/v23.0/ads_archive
  ?access_token=TU_TOKEN
  &ad_reached_countries=["ES"]
  &search_page_ids=["ID_COMPETIDOR"]
  &ad_active_status=ACTIVE
  &fields=ad_creative_bodies,ad_creative_link_titles,ad_snapshot_url,page_name,ad_delivery_start_time,spend,impressions,media_type
  &limit=50
```

## COMO ENCONTRAR WINNERS DE COMPETIDORES

Un "winner" es un ad que lleva MUCHO TIEMPO activo. Si un competidor paga por un ad durante 3+ meses, ES RENTABLE.

Proceso:
1. Busca por search_page_ids del competidor
2. Filtra por ad_active_status=ACTIVE
3. Ordena por ad_delivery_start_time (los mas antiguos = los winners)
4. Analiza: que hook usan? que copy? que visual? que CTA?

## LIMITACIONES IMPORTANTES

- La API oficial solo da acceso completo a ads politicos/issue en UE
- Para ads comerciales en cualquier pais: usar la WEB UI de facebook.com/ads/library
- La web UI SI muestra todos los ads de cualquier pais/tipo
- Alternativas de terceros (SearchAPI, AdLibrary.com) permiten buscar todo

## COMO USAR ESTO EN LA PRACTICA

1. Ve a facebook.com/ads/library
2. Selecciona "Todos los paises" y "Todos los anuncios"
3. Busca el nombre del competidor o keywords del nicho
4. Filtra por "Activos" para ver solo los que estan corriendo
5. Los que llevan mas tiempo activos son sus WINNERS
6. Analiza: hook, copy, visual, CTA, formato
7. No copies — ADAPTA al avatar y angulo de tu cliente

## ACCESO

- Necesitas un access token de Facebook Developer
- Requiere verificacion de identidad
- Rate limit: 200 calls/hora
- Error 613 = rate limit exceeded
