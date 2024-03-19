(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type network_rules

val network_rules :
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  subnet_id:string prop ->
  unit ->
  network_rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_servicebus_namespace_network_rule_set

val azurerm_servicebus_namespace_network_rule_set :
  ?default_action:string prop ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?public_network_access_enabled:bool prop ->
  ?trusted_services_allowed:bool prop ->
  ?timeouts:timeouts ->
  namespace_id:string prop ->
  network_rules:network_rules list ->
  unit ->
  azurerm_servicebus_namespace_network_rule_set

val yojson_of_azurerm_servicebus_namespace_network_rule_set :
  azurerm_servicebus_namespace_network_rule_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  namespace_id : string prop;
  public_network_access_enabled : bool prop;
  trusted_services_allowed : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_action:string prop ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?public_network_access_enabled:bool prop ->
  ?trusted_services_allowed:bool prop ->
  ?timeouts:timeouts ->
  namespace_id:string prop ->
  network_rules:network_rules list ->
  string ->
  t
