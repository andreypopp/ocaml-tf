(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventhub_namespace_disaster_recovery_config__timeouts
type azurerm_eventhub_namespace_disaster_recovery_config

val azurerm_eventhub_namespace_disaster_recovery_config :
  ?id:string prop ->
  ?timeouts:
    azurerm_eventhub_namespace_disaster_recovery_config__timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  partner_namespace_id:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
