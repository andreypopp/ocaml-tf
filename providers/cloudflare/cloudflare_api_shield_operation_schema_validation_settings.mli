(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_api_shield_operation_schema_validation_settings

type t = private {
  id : string prop;
  mitigation_action : string prop;
  operation_id : string prop;
  zone_id : string prop;
}

val cloudflare_api_shield_operation_schema_validation_settings :
  ?id:string prop ->
  ?mitigation_action:string prop ->
  operation_id:string prop ->
  zone_id:string prop ->
  string ->
  t
