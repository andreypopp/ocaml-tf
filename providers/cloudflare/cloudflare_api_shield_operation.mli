(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_api_shield_operation

val cloudflare_api_shield_operation :
  ?id:string prop ->
  endpoint:string prop ->
  host:string prop ->
  method_:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_api_shield_operation

val yojson_of_cloudflare_api_shield_operation :
  cloudflare_api_shield_operation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  endpoint : string prop;
  host : string prop;
  id : string prop;
  method_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  endpoint:string prop ->
  host:string prop ->
  method_:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  endpoint:string prop ->
  host:string prop ->
  method_:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
