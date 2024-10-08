(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_servicebus_namespace_disaster_recovery_config

val azurerm_servicebus_namespace_disaster_recovery_config :
  ?alias_authorization_rule_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  partner_namespace_id:string prop ->
  primary_namespace_id:string prop ->
  unit ->
  azurerm_servicebus_namespace_disaster_recovery_config

val yojson_of_azurerm_servicebus_namespace_disaster_recovery_config :
  azurerm_servicebus_namespace_disaster_recovery_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_authorization_rule_id : string prop;
  default_primary_key : string prop;
  default_secondary_key : string prop;
  id : string prop;
  name : string prop;
  partner_namespace_id : string prop;
  primary_connection_string_alias : string prop;
  primary_namespace_id : string prop;
  secondary_connection_string_alias : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias_authorization_rule_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  partner_namespace_id:string prop ->
  primary_namespace_id:string prop ->
  string ->
  t

val make :
  ?alias_authorization_rule_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  partner_namespace_id:string prop ->
  primary_namespace_id:string prop ->
  string ->
  t Tf_core.resource
