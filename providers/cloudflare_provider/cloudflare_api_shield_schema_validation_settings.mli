(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_api_shield_schema_validation_settings

type t = private {
  id : string prop;
  validation_default_mitigation_action : string prop;
  validation_override_mitigation_action : string prop;
  zone_id : string prop;
}

val cloudflare_api_shield_schema_validation_settings :
  ?id:string prop ->
  ?validation_override_mitigation_action:string prop ->
  validation_default_mitigation_action:string prop ->
  zone_id:string prop ->
  string ->
  t
