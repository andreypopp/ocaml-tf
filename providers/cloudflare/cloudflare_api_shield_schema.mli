(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_api_shield_schema

type t = private {
  id : string prop;
  kind : string prop;
  name : string prop;
  source : string prop;
  validation_enabled : bool prop;
  zone_id : string prop;
}

val cloudflare_api_shield_schema :
  ?id:string prop ->
  ?kind:string prop ->
  ?validation_enabled:bool prop ->
  name:string prop ->
  source:string prop ->
  zone_id:string prop ->
  string ->
  t
