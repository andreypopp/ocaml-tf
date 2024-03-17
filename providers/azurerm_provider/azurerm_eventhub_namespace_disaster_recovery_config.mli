(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace_disaster_recovery_config__timeouts
type azurerm_eventhub_namespace_disaster_recovery_config

val azurerm_eventhub_namespace_disaster_recovery_config :
  ?timeouts:
    azurerm_eventhub_namespace_disaster_recovery_config__timeouts ->
  name:string ->
  namespace_name:string ->
  partner_namespace_id:string ->
  resource_group_name:string ->
  string ->
  unit
