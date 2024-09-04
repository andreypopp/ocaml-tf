(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_devops_repo = {
  account_name : string prop;
  branch_name : string prop;
  last_commit_id : string prop option; [@option]
  project_name : string prop;
  repository_name : string prop;
  root_folder : string prop;
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_devops_repo) -> ()

let yojson_of_azure_devops_repo =
  (function
   | {
       account_name = v_account_name;
       branch_name = v_branch_name;
       last_commit_id = v_last_commit_id;
       project_name = v_project_name;
       repository_name = v_repository_name;
       root_folder = v_root_folder;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_root_folder in
         ("root_folder", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_name in
         ("project_name", arg) :: bnds
       in
       let bnds =
         match v_last_commit_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_commit_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azure_devops_repo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_devops_repo

[@@@deriving.end]

type customer_managed_key = {
  key_name : string prop option; [@option]
  key_versionless_id : string prop;
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : customer_managed_key) -> ()

let yojson_of_customer_managed_key =
  (function
   | {
       key_name = v_key_name;
       key_versionless_id = v_key_versionless_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_versionless_id
         in
         ("key_versionless_id", arg) :: bnds
       in
       let bnds =
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : customer_managed_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_customer_managed_key

[@@@deriving.end]

type github_repo = {
  account_name : string prop;
  branch_name : string prop;
  git_url : string prop option; [@option]
  last_commit_id : string prop option; [@option]
  repository_name : string prop;
  root_folder : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repo) -> ()

let yojson_of_github_repo =
  (function
   | {
       account_name = v_account_name;
       branch_name = v_branch_name;
       git_url = v_git_url;
       last_commit_id = v_last_commit_id;
       repository_name = v_repository_name;
       root_folder = v_root_folder;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_root_folder in
         ("root_folder", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
       in
       let bnds =
         match v_last_commit_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_commit_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_git_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "git_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : github_repo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repo

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aad_admin = {
  login : string prop;
  object_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aad_admin) -> ()

let yojson_of_aad_admin =
  (function
   | {
       login = v_login;
       object_id = v_object_id;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
       in
       `Assoc bnds
    : aad_admin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aad_admin

[@@@deriving.end]

type sql_aad_admin = {
  login : string prop;
  object_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sql_aad_admin) -> ()

let yojson_of_sql_aad_admin =
  (function
   | {
       login = v_login;
       object_id = v_object_id;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
       in
       `Assoc bnds
    : sql_aad_admin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sql_aad_admin

[@@@deriving.end]

type azurerm_synapse_workspace = {
  aad_admin : aad_admin list option; [@option]
  azuread_authentication_only : bool prop option; [@option]
  compute_subnet_id : string prop option; [@option]
  data_exfiltration_protection_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  linking_allowed_for_aad_tenant_ids : string prop list option;
      [@option]
  location : string prop;
  managed_resource_group_name : string prop option; [@option]
  managed_virtual_network_enabled : bool prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  purview_id : string prop option; [@option]
  resource_group_name : string prop;
  sql_aad_admin : sql_aad_admin list option; [@option]
  sql_administrator_login : string prop option; [@option]
  sql_administrator_login_password : string prop option; [@option]
  sql_identity_control_enabled : bool prop option; [@option]
  storage_data_lake_gen2_filesystem_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  azure_devops_repo : azure_devops_repo list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  customer_managed_key : customer_managed_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  github_repo : github_repo list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_workspace) -> ()

let yojson_of_azurerm_synapse_workspace =
  (function
   | {
       aad_admin = v_aad_admin;
       azuread_authentication_only = v_azuread_authentication_only;
       compute_subnet_id = v_compute_subnet_id;
       data_exfiltration_protection_enabled =
         v_data_exfiltration_protection_enabled;
       id = v_id;
       linking_allowed_for_aad_tenant_ids =
         v_linking_allowed_for_aad_tenant_ids;
       location = v_location;
       managed_resource_group_name = v_managed_resource_group_name;
       managed_virtual_network_enabled =
         v_managed_virtual_network_enabled;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       purview_id = v_purview_id;
       resource_group_name = v_resource_group_name;
       sql_aad_admin = v_sql_aad_admin;
       sql_administrator_login = v_sql_administrator_login;
       sql_administrator_login_password =
         v_sql_administrator_login_password;
       sql_identity_control_enabled = v_sql_identity_control_enabled;
       storage_data_lake_gen2_filesystem_id =
         v_storage_data_lake_gen2_filesystem_id;
       tags = v_tags;
       azure_devops_repo = v_azure_devops_repo;
       customer_managed_key = v_customer_managed_key;
       github_repo = v_github_repo;
       identity = v_identity;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_github_repo then bnds
         else
           let arg =
             (yojson_of_list yojson_of_github_repo) v_github_repo
           in
           let bnd = "github_repo", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_managed_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_customer_managed_key)
               v_customer_managed_key
           in
           let bnd = "customer_managed_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_devops_repo then bnds
         else
           let arg =
             (yojson_of_list yojson_of_azure_devops_repo)
               v_azure_devops_repo
           in
           let bnd = "azure_devops_repo", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_data_lake_gen2_filesystem_id
         in
         ("storage_data_lake_gen2_filesystem_id", arg) :: bnds
       in
       let bnds =
         match v_sql_identity_control_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sql_identity_control_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_administrator_login_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_administrator_login_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_administrator_login with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_administrator_login", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_aad_admin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_sql_aad_admin v in
             let bnd = "sql_aad_admin", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_purview_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purview_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_virtual_network_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "managed_virtual_network_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_linking_allowed_for_aad_tenant_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "linking_allowed_for_aad_tenant_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_exfiltration_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_exfiltration_protection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_azuread_authentication_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azuread_authentication_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aad_admin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_aad_admin v in
             let bnd = "aad_admin", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_workspace

[@@@deriving.end]

let azure_devops_repo ?last_commit_id ?tenant_id ~account_name
    ~branch_name ~project_name ~repository_name ~root_folder () :
    azure_devops_repo =
  {
    account_name;
    branch_name;
    last_commit_id;
    project_name;
    repository_name;
    root_folder;
    tenant_id;
  }

let customer_managed_key ?key_name ?user_assigned_identity_id
    ~key_versionless_id () : customer_managed_key =
  { key_name; key_versionless_id; user_assigned_identity_id }

let github_repo ?git_url ?last_commit_id ~account_name ~branch_name
    ~repository_name ~root_folder () : github_repo =
  {
    account_name;
    branch_name;
    git_url;
    last_commit_id;
    repository_name;
    root_folder;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_workspace ?aad_admin ?azuread_authentication_only
    ?compute_subnet_id ?data_exfiltration_protection_enabled ?id
    ?linking_allowed_for_aad_tenant_ids ?managed_resource_group_name
    ?managed_virtual_network_enabled ?public_network_access_enabled
    ?purview_id ?sql_aad_admin ?sql_administrator_login
    ?sql_administrator_login_password ?sql_identity_control_enabled
    ?tags ?(azure_devops_repo = []) ?(customer_managed_key = [])
    ?(github_repo = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name ~storage_data_lake_gen2_filesystem_id () :
    azurerm_synapse_workspace =
  {
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

type t = {
  tf_name : string;
  aad_admin : aad_admin list prop;
  azuread_authentication_only : bool prop;
  compute_subnet_id : string prop;
  connectivity_endpoints : string Tf_core.assoc prop;
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
  tags : string Tf_core.assoc prop;
}

let make ?aad_admin ?azuread_authentication_only ?compute_subnet_id
    ?data_exfiltration_protection_enabled ?id
    ?linking_allowed_for_aad_tenant_ids ?managed_resource_group_name
    ?managed_virtual_network_enabled ?public_network_access_enabled
    ?purview_id ?sql_aad_admin ?sql_administrator_login
    ?sql_administrator_login_password ?sql_identity_control_enabled
    ?tags ?(azure_devops_repo = []) ?(customer_managed_key = [])
    ?(github_repo = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name ~storage_data_lake_gen2_filesystem_id __id =
  let __type = "azurerm_synapse_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       aad_admin = Prop.computed __type __id "aad_admin";
       azuread_authentication_only =
         Prop.computed __type __id "azuread_authentication_only";
       compute_subnet_id =
         Prop.computed __type __id "compute_subnet_id";
       connectivity_endpoints =
         Prop.computed __type __id "connectivity_endpoints";
       data_exfiltration_protection_enabled =
         Prop.computed __type __id
           "data_exfiltration_protection_enabled";
       id = Prop.computed __type __id "id";
       linking_allowed_for_aad_tenant_ids =
         Prop.computed __type __id
           "linking_allowed_for_aad_tenant_ids";
       location = Prop.computed __type __id "location";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       managed_virtual_network_enabled =
         Prop.computed __type __id "managed_virtual_network_enabled";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       purview_id = Prop.computed __type __id "purview_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sql_aad_admin = Prop.computed __type __id "sql_aad_admin";
       sql_administrator_login =
         Prop.computed __type __id "sql_administrator_login";
       sql_administrator_login_password =
         Prop.computed __type __id "sql_administrator_login_password";
       sql_identity_control_enabled =
         Prop.computed __type __id "sql_identity_control_enabled";
       storage_data_lake_gen2_filesystem_id =
         Prop.computed __type __id
           "storage_data_lake_gen2_filesystem_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_workspace
        (azurerm_synapse_workspace ?aad_admin
           ?azuread_authentication_only ?compute_subnet_id
           ?data_exfiltration_protection_enabled ?id
           ?linking_allowed_for_aad_tenant_ids
           ?managed_resource_group_name
           ?managed_virtual_network_enabled
           ?public_network_access_enabled ?purview_id ?sql_aad_admin
           ?sql_administrator_login ?sql_administrator_login_password
           ?sql_identity_control_enabled ?tags ~azure_devops_repo
           ~customer_managed_key ~github_repo ~identity ?timeouts
           ~location ~name ~resource_group_name
           ~storage_data_lake_gen2_filesystem_id ());
    attrs = __attrs;
  }

let register ?tf_module ?aad_admin ?azuread_authentication_only
    ?compute_subnet_id ?data_exfiltration_protection_enabled ?id
    ?linking_allowed_for_aad_tenant_ids ?managed_resource_group_name
    ?managed_virtual_network_enabled ?public_network_access_enabled
    ?purview_id ?sql_aad_admin ?sql_administrator_login
    ?sql_administrator_login_password ?sql_identity_control_enabled
    ?tags ?(azure_devops_repo = []) ?(customer_managed_key = [])
    ?(github_repo = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name ~storage_data_lake_gen2_filesystem_id __id =
  let (r : _ Tf_core.resource) =
    make ?aad_admin ?azuread_authentication_only ?compute_subnet_id
      ?data_exfiltration_protection_enabled ?id
      ?linking_allowed_for_aad_tenant_ids
      ?managed_resource_group_name ?managed_virtual_network_enabled
      ?public_network_access_enabled ?purview_id ?sql_aad_admin
      ?sql_administrator_login ?sql_administrator_login_password
      ?sql_identity_control_enabled ?tags ~azure_devops_repo
      ~customer_managed_key ~github_repo ~identity ?timeouts
      ~location ~name ~resource_group_name
      ~storage_data_lake_gen2_filesystem_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
