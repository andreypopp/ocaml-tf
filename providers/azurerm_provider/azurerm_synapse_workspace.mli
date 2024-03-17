(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace__azure_devops_repo
type azurerm_synapse_workspace__customer_managed_key
type azurerm_synapse_workspace__github_repo
type azurerm_synapse_workspace__identity
type azurerm_synapse_workspace__timeouts

type azurerm_synapse_workspace__aad_admin = {
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}

type azurerm_synapse_workspace__sql_aad_admin = {
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}

type azurerm_synapse_workspace

val azurerm_synapse_workspace :
  ?aad_admin:azurerm_synapse_workspace__aad_admin list ->
  ?azuread_authentication_only:bool prop ->
  ?compute_subnet_id:string prop ->
  ?data_exfiltration_protection_enabled:bool prop ->
  ?id:string prop ->
  ?linking_allowed_for_aad_tenant_ids:string prop list ->
  ?managed_resource_group_name:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?purview_id:string prop ->
  ?sql_aad_admin:azurerm_synapse_workspace__sql_aad_admin list ->
  ?sql_administrator_login:string prop ->
  ?sql_administrator_login_password:string prop ->
  ?sql_identity_control_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_synapse_workspace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_data_lake_gen2_filesystem_id:string prop ->
  azure_devops_repo:azurerm_synapse_workspace__azure_devops_repo list ->
  customer_managed_key:
    azurerm_synapse_workspace__customer_managed_key list ->
  github_repo:azurerm_synapse_workspace__github_repo list ->
  identity:azurerm_synapse_workspace__identity list ->
  string ->
  unit
