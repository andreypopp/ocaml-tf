(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_service__authentication_configuration
type azurerm_healthcare_service__cors_configuration
type azurerm_healthcare_service__timeouts
type azurerm_healthcare_service

val azurerm_healthcare_service :
  ?access_policy_object_ids:string prop list ->
  ?cosmosdb_key_vault_key_versionless_id:string prop ->
  ?cosmosdb_throughput:float prop ->
  ?id:string prop ->
  ?kind:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_healthcare_service__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  authentication_configuration:
    azurerm_healthcare_service__authentication_configuration list ->
  cors_configuration:
    azurerm_healthcare_service__cors_configuration list ->
  string ->
  unit
