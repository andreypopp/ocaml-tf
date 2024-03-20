(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aad_admin = {
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}

[@@@deriving.end]

type sql_aad_admin = {
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}

[@@@deriving.end]

type azure_devops_repo

val azure_devops_repo :
  ?last_commit_id:string prop ->
  ?tenant_id:string prop ->
  account_name:string prop ->
  branch_name:string prop ->
  project_name:string prop ->
  repository_name:string prop ->
  root_folder:string prop ->
  unit ->
  azure_devops_repo

type customer_managed_key

val customer_managed_key :
  ?key_name:string prop ->
  ?user_assigned_identity_id:string prop ->
  key_versionless_id:string prop ->
  unit ->
  customer_managed_key

type github_repo

val github_repo :
  ?git_url:string prop ->
  ?last_commit_id:string prop ->
  account_name:string prop ->
  branch_name:string prop ->
  repository_name:string prop ->
  root_folder:string prop ->
  unit ->
  github_repo

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_synapse_workspace

val azurerm_synapse_workspace :
  ?aad_admin:aad_admin list ->
  ?azuread_authentication_only:bool prop ->
  ?compute_subnet_id:string prop ->
  ?data_exfiltration_protection_enabled:bool prop ->
  ?id:string prop ->
  ?linking_allowed_for_aad_tenant_ids:string prop list ->
  ?managed_resource_group_name:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?purview_id:string prop ->
  ?sql_aad_admin:sql_aad_admin list ->
  ?sql_administrator_login:string prop ->
  ?sql_administrator_login_password:string prop ->
  ?sql_identity_control_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_data_lake_gen2_filesystem_id:string prop ->
  azure_devops_repo:azure_devops_repo list ->
  customer_managed_key:customer_managed_key list ->
  github_repo:github_repo list ->
  identity:identity list ->
  unit ->
  azurerm_synapse_workspace

val yojson_of_azurerm_synapse_workspace :
  azurerm_synapse_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aad_admin : aad_admin list prop;
  azuread_authentication_only : bool prop;
  compute_subnet_id : string prop;
  connectivity_endpoints : (string * string) list prop;
  data_exfiltration_protection_enabled : bool prop;
  id : string prop;
  linking_allowed_for_aad_tenant_ids : string list prop;
  location : string prop;
  managed_resource_group_name : string prop;
  managed_virtual_network_enabled : bool prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  purview_id : string prop;
  resource_group_name : string prop;
  sql_aad_admin : sql_aad_admin list prop;
  sql_administrator_login : string prop;
  sql_administrator_login_password : string prop;
  sql_identity_control_enabled : bool prop;
  storage_data_lake_gen2_filesystem_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?aad_admin:aad_admin list ->
  ?azuread_authentication_only:bool prop ->
  ?compute_subnet_id:string prop ->
  ?data_exfiltration_protection_enabled:bool prop ->
  ?id:string prop ->
  ?linking_allowed_for_aad_tenant_ids:string prop list ->
  ?managed_resource_group_name:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?purview_id:string prop ->
  ?sql_aad_admin:sql_aad_admin list ->
  ?sql_administrator_login:string prop ->
  ?sql_administrator_login_password:string prop ->
  ?sql_identity_control_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_data_lake_gen2_filesystem_id:string prop ->
  azure_devops_repo:azure_devops_repo list ->
  customer_managed_key:customer_managed_key list ->
  github_repo:github_repo list ->
  identity:identity list ->
  string ->
  t

val make :
  ?aad_admin:aad_admin list ->
  ?azuread_authentication_only:bool prop ->
  ?compute_subnet_id:string prop ->
  ?data_exfiltration_protection_enabled:bool prop ->
  ?id:string prop ->
  ?linking_allowed_for_aad_tenant_ids:string prop list ->
  ?managed_resource_group_name:string prop ->
  ?managed_virtual_network_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?purview_id:string prop ->
  ?sql_aad_admin:sql_aad_admin list ->
  ?sql_administrator_login:string prop ->
  ?sql_administrator_login_password:string prop ->
  ?sql_identity_control_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_data_lake_gen2_filesystem_id:string prop ->
  azure_devops_repo:azure_devops_repo list ->
  customer_managed_key:customer_managed_key list ->
  github_repo:github_repo list ->
  identity:identity list ->
  string ->
  t Tf_core.resource
