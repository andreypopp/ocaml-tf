(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_page_rule__actions__cache_key_fields__cookie
type cloudflare_page_rule__actions__cache_key_fields__header
type cloudflare_page_rule__actions__cache_key_fields__host
type cloudflare_page_rule__actions__cache_key_fields__query_string
type cloudflare_page_rule__actions__cache_key_fields__user
type cloudflare_page_rule__actions__cache_key_fields
type cloudflare_page_rule__actions__cache_ttl_by_status
type cloudflare_page_rule__actions__forwarding_url
type cloudflare_page_rule__actions__minify
type cloudflare_page_rule__actions
type cloudflare_page_rule

val cloudflare_page_rule :
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  target:string prop ->
  zone_id:string prop ->
  actions:cloudflare_page_rule__actions list ->
  string ->
  unit
