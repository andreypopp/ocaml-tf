(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_healthcheck__header
type cloudflare_healthcheck__timeouts
type cloudflare_healthcheck

val cloudflare_healthcheck :
  ?allow_insecure:bool prop ->
  ?check_regions:string prop list ->
  ?consecutive_fails:float prop ->
  ?consecutive_successes:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop list ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?retries:float prop ->
  ?suspended:bool prop ->
  ?timeout:float prop ->
  ?timeouts:cloudflare_healthcheck__timeouts ->
  address:string prop ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  header:cloudflare_healthcheck__header list ->
  string ->
  unit
