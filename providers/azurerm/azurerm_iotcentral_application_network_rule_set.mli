(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_rule

val ip_rule :
  ip_mask:string prop -> name:string prop -> unit -> ip_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iotcentral_application_network_rule_set

val azurerm_iotcentral_application_network_rule_set :
  ?apply_to_device:bool prop ->
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  iotcentral_application_id:string prop ->
  ip_rule:ip_rule list ->
  unit ->
  azurerm_iotcentral_application_network_rule_set

val yojson_of_azurerm_iotcentral_application_network_rule_set :
  azurerm_iotcentral_application_network_rule_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  apply_to_device : bool prop;
  default_action : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?apply_to_device:bool prop ->
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  iotcentral_application_id:string prop ->
  ip_rule:ip_rule list ->
  string ->
  t

val make :
  ?apply_to_device:bool prop ->
  ?default_action:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  iotcentral_application_id:string prop ->
  ip_rule:ip_rule list ->
  string ->
  t Tf_core.resource
