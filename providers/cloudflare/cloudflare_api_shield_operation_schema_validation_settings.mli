(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_api_shield_operation_schema_validation_settings

val cloudflare_api_shield_operation_schema_validation_settings :
  ?id:string prop ->
  ?mitigation_action:string prop ->
  operation_id:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_api_shield_operation_schema_validation_settings

val yojson_of_cloudflare_api_shield_operation_schema_validation_settings :
  cloudflare_api_shield_operation_schema_validation_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  mitigation_action : string prop;
  operation_id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mitigation_action:string prop ->
  operation_id:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?mitigation_action:string prop ->
  operation_id:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
