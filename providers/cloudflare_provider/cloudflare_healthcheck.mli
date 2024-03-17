(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_healthcheck__header
type cloudflare_healthcheck__timeouts
type cloudflare_healthcheck

val cloudflare_healthcheck :
  ?allow_insecure:bool ->
  ?check_regions:string list ->
  ?consecutive_fails:float ->
  ?consecutive_successes:float ->
  ?description:string ->
  ?expected_body:string ->
  ?expected_codes:string list ->
  ?follow_redirects:bool ->
  ?id:string ->
  ?interval:float ->
  ?method_:string ->
  ?path:string ->
  ?port:float ->
  ?retries:float ->
  ?suspended:bool ->
  ?timeout:float ->
  ?timeouts:cloudflare_healthcheck__timeouts ->
  address:string ->
  name:string ->
  type_:string ->
  zone_id:string ->
  header:cloudflare_healthcheck__header list ->
  string ->
  unit
