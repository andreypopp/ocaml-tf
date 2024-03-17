(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace__azure_devops_repo
type azurerm_synapse_workspace__customer_managed_key
type azurerm_synapse_workspace__github_repo
type azurerm_synapse_workspace__identity
type azurerm_synapse_workspace__timeouts

type azurerm_synapse_workspace__aad_admin = {
  login : string;  (** login *)
  object_id : string;  (** object_id *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_synapse_workspace__sql_aad_admin = {
  login : string;  (** login *)
  object_id : string;  (** object_id *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_synapse_workspace

val azurerm_synapse_workspace :
  ?azuread_authentication_only:bool ->
  ?compute_subnet_id:string ->
  ?data_exfiltration_protection_enabled:bool ->
  ?linking_allowed_for_aad_tenant_ids:string list ->
  ?managed_virtual_network_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?purview_id:string ->
  ?sql_administrator_login:string ->
  ?sql_administrator_login_password:string ->
  ?sql_identity_control_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_synapse_workspace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  storage_data_lake_gen2_filesystem_id:string ->
  azure_devops_repo:azurerm_synapse_workspace__azure_devops_repo list ->
  customer_managed_key:
    azurerm_synapse_workspace__customer_managed_key list ->
  github_repo:azurerm_synapse_workspace__github_repo list ->
  identity:azurerm_synapse_workspace__identity list ->
  string ->
  unit
