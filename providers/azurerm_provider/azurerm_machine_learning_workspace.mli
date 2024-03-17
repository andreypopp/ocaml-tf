(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_workspace__encryption
type azurerm_machine_learning_workspace__feature_store
type azurerm_machine_learning_workspace__identity
type azurerm_machine_learning_workspace__managed_network
type azurerm_machine_learning_workspace__timeouts
type azurerm_machine_learning_workspace

val azurerm_machine_learning_workspace :
  ?container_registry_id:string ->
  ?description:string ->
  ?friendly_name:string ->
  ?high_business_impact:bool ->
  ?image_build_compute_name:string ->
  ?kind:string ->
  ?primary_user_assigned_identity:string ->
  ?public_access_behind_virtual_network_enabled:bool ->
  ?sku_name:string ->
  ?tags:(string * string) list ->
  ?v1_legacy_mode_enabled:bool ->
  ?timeouts:azurerm_machine_learning_workspace__timeouts ->
  application_insights_id:string ->
  key_vault_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  storage_account_id:string ->
  encryption:azurerm_machine_learning_workspace__encryption list ->
  feature_store:
    azurerm_machine_learning_workspace__feature_store list ->
  identity:azurerm_machine_learning_workspace__identity list ->
  managed_network:
    azurerm_machine_learning_workspace__managed_network list ->
  string ->
  unit
