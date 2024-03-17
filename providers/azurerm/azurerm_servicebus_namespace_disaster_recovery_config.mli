(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace_disaster_recovery_config__timeouts
type azurerm_servicebus_namespace_disaster_recovery_config

type t = private {
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

val azurerm_servicebus_namespace_disaster_recovery_config :
  ?alias_authorization_rule_id:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_servicebus_namespace_disaster_recovery_config__timeouts ->
  name:string prop ->
  partner_namespace_id:string prop ->
  primary_namespace_id:string prop ->
  string ->
  t
