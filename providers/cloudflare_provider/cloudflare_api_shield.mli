(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_api_shield__auth_id_characteristics
type cloudflare_api_shield

val cloudflare_api_shield :
  ?id:string prop ->
  zone_id:string prop ->
  auth_id_characteristics:
    cloudflare_api_shield__auth_id_characteristics list ->
  string ->
  unit
