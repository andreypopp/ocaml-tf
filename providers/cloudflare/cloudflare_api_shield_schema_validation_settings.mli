(** Provides a resource to manage settings in API Shield Schema Validation 2.0.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_api_shield_schema_validation_settings

val cloudflare_api_shield_schema_validation_settings :
  ?id:string prop ->
  ?validation_override_mitigation_action:string prop ->
  validation_default_mitigation_action:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_api_shield_schema_validation_settings

val yojson_of_cloudflare_api_shield_schema_validation_settings :
  cloudflare_api_shield_schema_validation_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  validation_default_mitigation_action : string prop;
  validation_override_mitigation_action : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?validation_override_mitigation_action:string prop ->
  validation_default_mitigation_action:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?validation_override_mitigation_action:string prop ->
  validation_default_mitigation_action:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
