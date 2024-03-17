(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_rate_limit__action__response
type cloudflare_rate_limit__action
type cloudflare_rate_limit__correlate
type cloudflare_rate_limit__match__request
type cloudflare_rate_limit__match__response
type cloudflare_rate_limit__match
type cloudflare_rate_limit

val cloudflare_rate_limit :
  ?bypass_url_patterns:string prop list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  period:float prop ->
  threshold:float prop ->
  zone_id:string prop ->
  action:cloudflare_rate_limit__action list ->
  correlate:cloudflare_rate_limit__correlate list ->
  match_:cloudflare_rate_limit__match list ->
  string ->
  unit
