(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_regional_hostname__timeouts
type cloudflare_regional_hostname

type t = private {
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  region_key : string prop;
  zone_id : string prop;
}

val cloudflare_regional_hostname :
  ?id:string prop ->
  ?timeouts:cloudflare_regional_hostname__timeouts ->
  hostname:string prop ->
  region_key:string prop ->
  zone_id:string prop ->
  string ->
  t
