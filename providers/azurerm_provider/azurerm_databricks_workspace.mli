(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_databricks_workspace__custom_parameters
type azurerm_databricks_workspace__timeouts

type azurerm_databricks_workspace__managed_disk_identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databricks_workspace__storage_account_identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databricks_workspace

val azurerm_databricks_workspace :
  ?customer_managed_key_enabled:bool ->
  ?infrastructure_encryption_enabled:bool ->
  ?load_balancer_backend_address_pool_id:string ->
  ?managed_disk_cmk_key_vault_key_id:string ->
  ?managed_disk_cmk_rotation_to_latest_version_enabled:bool ->
  ?managed_services_cmk_key_vault_key_id:string ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_databricks_workspace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  custom_parameters:
    azurerm_databricks_workspace__custom_parameters list ->
  string ->
  unit
