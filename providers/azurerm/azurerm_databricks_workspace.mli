(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_disk_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type storage_account_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type custom_parameters

val custom_parameters :
  ?machine_learning_workspace_id:string prop ->
  ?nat_gateway_name:string prop ->
  ?no_public_ip:bool prop ->
  ?private_subnet_name:string prop ->
  ?private_subnet_network_security_group_association_id:string prop ->
  ?public_ip_name:string prop ->
  ?public_subnet_name:string prop ->
  ?public_subnet_network_security_group_association_id:string prop ->
  ?storage_account_name:string prop ->
  ?storage_account_sku_name:string prop ->
  ?virtual_network_id:string prop ->
  ?vnet_address_prefix:string prop ->
  unit ->
  custom_parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_databricks_workspace

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
  ?custom_parameters:custom_parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_databricks_workspace

val yojson_of_azurerm_databricks_workspace :
  azurerm_databricks_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  customer_managed_key_enabled : bool prop;
  disk_encryption_set_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  load_balancer_backend_address_pool_id : string prop;
  location : string prop;
  managed_disk_cmk_key_vault_key_id : string prop;
  managed_disk_cmk_rotation_to_latest_version_enabled : bool prop;
  managed_disk_identity : managed_disk_identity list prop;
  managed_resource_group_id : string prop;
  managed_resource_group_name : string prop;
  managed_services_cmk_key_vault_key_id : string prop;
  name : string prop;
  network_security_group_rules_required : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  storage_account_identity : storage_account_identity list prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
  workspace_url : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?custom_parameters:custom_parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
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
  ?custom_parameters:custom_parameters list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
