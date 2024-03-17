(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_workspace__encryption
type azurerm_machine_learning_workspace__feature_store
type azurerm_machine_learning_workspace__identity
type azurerm_machine_learning_workspace__managed_network
type azurerm_machine_learning_workspace__timeouts
type azurerm_machine_learning_workspace

type t = private {
  application_insights_id : string prop;
  container_registry_id : string prop;
  description : string prop;
  discovery_url : string prop;
  friendly_name : string prop;
  high_business_impact : bool prop;
  id : string prop;
  image_build_compute_name : string prop;
  key_vault_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  primary_user_assigned_identity : string prop;
  public_access_behind_virtual_network_enabled : bool prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  v1_legacy_mode_enabled : bool prop;
  workspace_id : string prop;
}

val azurerm_machine_learning_workspace :
  ?container_registry_id:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?high_business_impact:bool prop ->
  ?id:string prop ->
  ?image_build_compute_name:string prop ->
  ?kind:string prop ->
  ?primary_user_assigned_identity:string prop ->
  ?public_access_behind_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku_name:string prop ->
  ?tags:(string * string prop) list ->
  ?v1_legacy_mode_enabled:bool prop ->
  ?timeouts:azurerm_machine_learning_workspace__timeouts ->
  application_insights_id:string prop ->
  key_vault_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  encryption:azurerm_machine_learning_workspace__encryption list ->
  feature_store:
    azurerm_machine_learning_workspace__feature_store list ->
  identity:azurerm_machine_learning_workspace__identity list ->
  managed_network:
    azurerm_machine_learning_workspace__managed_network list ->
  string ->
  t
