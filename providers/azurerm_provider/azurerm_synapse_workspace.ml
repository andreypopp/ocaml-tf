(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace__azure_devops_repo = {
  account_name : string;  (** account_name *)
  branch_name : string;  (** branch_name *)
  last_commit_id : string option; [@option]  (** last_commit_id *)
  project_name : string;  (** project_name *)
  repository_name : string;  (** repository_name *)
  root_folder : string;  (** root_folder *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__azure_devops_repo *)

type azurerm_synapse_workspace__customer_managed_key = {
  key_name : string option; [@option]  (** key_name *)
  key_versionless_id : string;  (** key_versionless_id *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__customer_managed_key *)

type azurerm_synapse_workspace__github_repo = {
  account_name : string;  (** account_name *)
  branch_name : string;  (** branch_name *)
  git_url : string option; [@option]  (** git_url *)
  last_commit_id : string option; [@option]  (** last_commit_id *)
  repository_name : string;  (** repository_name *)
  root_folder : string;  (** root_folder *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__github_repo *)

type azurerm_synapse_workspace__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__identity *)

type azurerm_synapse_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__timeouts *)

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

type azurerm_synapse_workspace = {
  azuread_authentication_only : bool option; [@option]
      (** azuread_authentication_only *)
  compute_subnet_id : string option; [@option]
      (** compute_subnet_id *)
  data_exfiltration_protection_enabled : bool option; [@option]
      (** data_exfiltration_protection_enabled *)
  linking_allowed_for_aad_tenant_ids : string list option; [@option]
      (** linking_allowed_for_aad_tenant_ids *)
  location : string;  (** location *)
  managed_virtual_network_enabled : bool option; [@option]
      (** managed_virtual_network_enabled *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  purview_id : string option; [@option]  (** purview_id *)
  resource_group_name : string;  (** resource_group_name *)
  sql_administrator_login : string option; [@option]
      (** sql_administrator_login *)
  sql_administrator_login_password : string option; [@option]
      (** sql_administrator_login_password *)
  sql_identity_control_enabled : bool option; [@option]
      (** sql_identity_control_enabled *)
  storage_data_lake_gen2_filesystem_id : string;
      (** storage_data_lake_gen2_filesystem_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  azure_devops_repo :
    azurerm_synapse_workspace__azure_devops_repo list;
  customer_managed_key :
    azurerm_synapse_workspace__customer_managed_key list;
  github_repo : azurerm_synapse_workspace__github_repo list;
  identity : azurerm_synapse_workspace__identity list;
  timeouts : azurerm_synapse_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace *)

let azurerm_synapse_workspace ?azuread_authentication_only
    ?compute_subnet_id ?data_exfiltration_protection_enabled
    ?linking_allowed_for_aad_tenant_ids
    ?managed_virtual_network_enabled ?public_network_access_enabled
    ?purview_id ?sql_administrator_login
    ?sql_administrator_login_password ?sql_identity_control_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name
    ~storage_data_lake_gen2_filesystem_id ~azure_devops_repo
    ~customer_managed_key ~github_repo ~identity __resource_id =
  let __resource_type = "azurerm_synapse_workspace" in
  let __resource =
    {
      azuread_authentication_only;
      compute_subnet_id;
      data_exfiltration_protection_enabled;
      linking_allowed_for_aad_tenant_ids;
      location;
      managed_virtual_network_enabled;
      name;
      public_network_access_enabled;
      purview_id;
      resource_group_name;
      sql_administrator_login;
      sql_administrator_login_password;
      sql_identity_control_enabled;
      storage_data_lake_gen2_filesystem_id;
      tags;
      azure_devops_repo;
      customer_managed_key;
      github_repo;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace __resource);
  ()
