(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_regional_hostname__timeouts
type cloudflare_regional_hostname

val cloudflare_regional_hostname :
  ?id:string ->
  ?timeouts:cloudflare_regional_hostname__timeouts ->
  hostname:string ->
  region_key:string ->
  zone_id:string ->
  string ->
  unit
