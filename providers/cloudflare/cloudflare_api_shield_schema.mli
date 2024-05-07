(** Provides a resource to manage a schema in API Shield Schema Validation 2.0.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  tf_name : string;
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

val make :
  ?id:string prop ->
  ?kind:string prop ->
  ?validation_enabled:bool prop ->
  name:string prop ->
  source:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
