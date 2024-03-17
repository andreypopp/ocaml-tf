(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_workspace__custom_parameters
type azurerm_databricks_workspace__timeouts

type azurerm_databricks_workspace__managed_disk_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type azurerm_databricks_workspace__storage_account_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type azurerm_databricks_workspace

type t = private {
  customer_managed_key_enabled : bool prop;
  disk_encryption_set_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  load_balancer_backend_address_pool_id : string prop;
  location : string prop;
  managed_disk_cmk_key_vault_key_id : string prop;
  managed_disk_cmk_rotation_to_latest_version_enabled : bool prop;
  managed_disk_identity :
    azurerm_databricks_workspace__managed_disk_identity list prop;
  managed_resource_group_id : string prop;
  managed_resource_group_name : string prop;
  managed_services_cmk_key_vault_key_id : string prop;
  name : string prop;
  network_security_group_rules_required : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  storage_account_identity :
    azurerm_databricks_workspace__storage_account_identity list prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
  workspace_url : string prop;
}

val azurerm_databricks_workspace :
  ?customer_managed_key_enabled:bool prop ->
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?load_balancer_backend_address_pool_id:string prop ->
  ?managed_disk_cmk_key_vault_key_id:string prop ->
  ?managed_disk_cmk_rotation_to_latest_version_enabled:bool prop ->
  ?managed_resource_group_name:string prop ->
  ?managed_services_cmk_key_vault_key_id:string prop ->
  ?network_security_group_rules_required:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_databricks_workspace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  custom_parameters:
    azurerm_databricks_workspace__custom_parameters list ->
  string ->
  t
