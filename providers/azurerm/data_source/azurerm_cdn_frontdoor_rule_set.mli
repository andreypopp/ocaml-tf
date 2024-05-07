(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cdn_frontdoor_rule_set

val azurerm_cdn_frontdoor_rule_set :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_rule_set

val yojson_of_azurerm_cdn_frontdoor_rule_set :
  azurerm_cdn_frontdoor_rule_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
