(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_rule_set

val azurerm_cdn_frontdoor_rule_set :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_rule_set

val yojson_of_azurerm_cdn_frontdoor_rule_set :
  azurerm_cdn_frontdoor_rule_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_profile_id:string prop ->
  name:string prop ->
  string ->
  t
