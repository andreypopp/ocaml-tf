(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_api_shield_schema

val cloudflare_api_shield_schema :
  ?id:string prop ->
  ?kind:string prop ->
  ?validation_enabled:bool prop ->
  name:string prop ->
  source:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_api_shield_schema

val yojson_of_cloudflare_api_shield_schema :
  cloudflare_api_shield_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  kind : string prop;
  name : string prop;
  source : string prop;
  validation_enabled : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kind:string prop ->
  ?validation_enabled:bool prop ->
  name:string prop ->
  source:string prop ->
  zone_id:string prop ->
  string ->
  t
