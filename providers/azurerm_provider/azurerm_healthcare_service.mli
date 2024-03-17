(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_service__authentication_configuration
type azurerm_healthcare_service__cors_configuration
type azurerm_healthcare_service__timeouts
type azurerm_healthcare_service

val azurerm_healthcare_service :
  ?access_policy_object_ids:string list ->
  ?cosmosdb_key_vault_key_versionless_id:string ->
  ?cosmosdb_throughput:float ->
  ?kind:string ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthcare_service__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  authentication_configuration:
    azurerm_healthcare_service__authentication_configuration list ->
  cors_configuration:
    azurerm_healthcare_service__cors_configuration list ->
  string ->
  unit
