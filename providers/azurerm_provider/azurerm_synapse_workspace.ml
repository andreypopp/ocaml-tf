(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_workspace__azure_devops_repo = {
  account_name : string prop;  (** account_name *)
  branch_name : string prop;  (** branch_name *)
  last_commit_id : string prop option; [@option]
      (** last_commit_id *)
  project_name : string prop;  (** project_name *)
  repository_name : string prop;  (** repository_name *)
  root_folder : string prop;  (** root_folder *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__azure_devops_repo *)

type azurerm_synapse_workspace__customer_managed_key = {
  key_name : string prop option; [@option]  (** key_name *)
  key_versionless_id : string prop;  (** key_versionless_id *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__customer_managed_key *)

type azurerm_synapse_workspace__github_repo = {
  account_name : string prop;  (** account_name *)
  branch_name : string prop;  (** branch_name *)
  git_url : string prop option; [@option]  (** git_url *)
  last_commit_id : string prop option; [@option]
      (** last_commit_id *)
  repository_name : string prop;  (** repository_name *)
  root_folder : string prop;  (** root_folder *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__github_repo *)

type azurerm_synapse_workspace__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__identity *)

type azurerm_synapse_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_workspace__timeouts *)

type azurerm_synapse_workspace__aad_admin = {
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_synapse_workspace__sql_aad_admin = {
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_synapse_workspace = {
  aad_admin : azurerm_synapse_workspace__aad_admin list option;
      [@option]
      (** aad_admin *)
  azuread_authentication_only : bool prop option; [@option]
      (** azuread_authentication_only *)
  compute_subnet_id : string prop option; [@option]
      (** compute_subnet_id *)
  data_exfiltration_protection_enabled : bool prop option; [@option]
      (** data_exfiltration_protection_enabled *)
  id : string prop option; [@option]  (** id *)
  linking_allowed_for_aad_tenant_ids : string prop list option;
      [@option]
      (** linking_allowed_for_aad_tenant_ids *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  managed_virtual_network_enabled : bool prop option; [@option]
      (** managed_virtual_network_enabled *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  purview_id : string prop option; [@option]  (** purview_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  sql_aad_admin :
    azurerm_synapse_workspace__sql_aad_admin list option;
      [@option]
      (** sql_aad_admin *)
  sql_administrator_login : string prop option; [@option]
      (** sql_administrator_login *)
  sql_administrator_login_password : string prop option; [@option]
      (** sql_administrator_login_password *)
  sql_identity_control_enabled : bool prop option; [@option]
      (** sql_identity_control_enabled *)
  storage_data_lake_gen2_filesystem_id : string prop;
      (** storage_data_lake_gen2_filesystem_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

type t = {
  aad_admin : azurerm_synapse_workspace__aad_admin list prop;
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
  sql_aad_admin : azurerm_synapse_workspace__sql_aad_admin list prop;
  sql_administrator_login : string prop;
  sql_administrator_login_password : string prop;
  sql_identity_control_enabled : bool prop;
  storage_data_lake_gen2_filesystem_id : string prop;
  tags : (string * string) list prop;
}

let azurerm_synapse_workspace ?aad_admin ?azuread_authentication_only
    ?compute_subnet_id ?data_exfiltration_protection_enabled ?id
    ?linking_allowed_for_aad_tenant_ids ?managed_resource_group_name
    ?managed_virtual_network_enabled ?public_network_access_enabled
    ?purview_id ?sql_aad_admin ?sql_administrator_login
    ?sql_administrator_login_password ?sql_identity_control_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name
    ~storage_data_lake_gen2_filesystem_id ~azure_devops_repo
    ~customer_managed_key ~github_repo ~identity __resource_id =
  let __resource_type = "azurerm_synapse_workspace" in
  let __resource =
    ({
       aad_admin;
       azuread_authentication_only;
       compute_subnet_id;
       data_exfiltration_protection_enabled;
       id;
       linking_allowed_for_aad_tenant_ids;
       location;
       managed_resource_group_name;
       managed_virtual_network_enabled;
       name;
       public_network_access_enabled;
       purview_id;
       resource_group_name;
       sql_aad_admin;
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
      : azurerm_synapse_workspace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_workspace __resource);
  let __resource_attributes =
    ({
       aad_admin =
         Prop.computed __resource_type __resource_id "aad_admin";
       azuread_authentication_only =
         Prop.computed __resource_type __resource_id
           "azuread_authentication_only";
       compute_subnet_id =
         Prop.computed __resource_type __resource_id
           "compute_subnet_id";
       connectivity_endpoints =
         Prop.computed __resource_type __resource_id
           "connectivity_endpoints";
       data_exfiltration_protection_enabled =
         Prop.computed __resource_type __resource_id
           "data_exfiltration_protection_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       linking_allowed_for_aad_tenant_ids =
         Prop.computed __resource_type __resource_id
           "linking_allowed_for_aad_tenant_ids";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_resource_group_name =
         Prop.computed __resource_type __resource_id
           "managed_resource_group_name";
       managed_virtual_network_enabled =
         Prop.computed __resource_type __resource_id
           "managed_virtual_network_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       purview_id =
         Prop.computed __resource_type __resource_id "purview_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sql_aad_admin =
         Prop.computed __resource_type __resource_id "sql_aad_admin";
       sql_administrator_login =
         Prop.computed __resource_type __resource_id
           "sql_administrator_login";
       sql_administrator_login_password =
         Prop.computed __resource_type __resource_id
           "sql_administrator_login_password";
       sql_identity_control_enabled =
         Prop.computed __resource_type __resource_id
           "sql_identity_control_enabled";
       storage_data_lake_gen2_filesystem_id =
         Prop.computed __resource_type __resource_id
           "storage_data_lake_gen2_filesystem_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
