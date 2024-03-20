(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_configuration = {
  account_name : string prop;
  branch_name : string prop;
  git_url : string prop option; [@option]
  publishing_enabled : bool prop option; [@option]
  repository_name : string prop;
  root_folder : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_configuration) -> ()

let yojson_of_github_configuration =
  (function
   | {
       account_name = v_account_name;
       branch_name = v_branch_name;
       git_url = v_git_url;
       publishing_enabled = v_publishing_enabled;
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
         match v_publishing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publishing_enabled", arg in
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
    : github_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_configuration

[@@@deriving.end]

type global_parameter = {
  name : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_parameter) -> ()

let yojson_of_global_parameter =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : global_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_parameter

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

type vsts_configuration = {
  account_name : string prop;
  branch_name : string prop;
  project_name : string prop;
  publishing_enabled : bool prop option; [@option]
  repository_name : string prop;
  root_folder : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vsts_configuration) -> ()

let yojson_of_vsts_configuration =
  (function
   | {
       account_name = v_account_name;
       branch_name = v_branch_name;
       project_name = v_project_name;
       publishing_enabled = v_publishing_enabled;
       repository_name = v_repository_name;
       root_folder = v_root_folder;
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
         match v_publishing_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publishing_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_name in
         ("project_name", arg) :: bnds
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
    : vsts_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vsts_configuration

[@@@deriving.end]

type azurerm_data_factory = {
  customer_managed_key_id : string prop option; [@option]
  customer_managed_key_identity_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  managed_virtual_network_enabled : bool prop option; [@option]
  name : string prop;
  public_network_enabled : bool prop option; [@option]
  purview_id : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  github_configuration : github_configuration list;
  global_parameter : global_parameter list;
  identity : identity list;
  timeouts : timeouts option;
  vsts_configuration : vsts_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory) -> ()

let yojson_of_azurerm_data_factory =
  (function
   | {
       customer_managed_key_id = v_customer_managed_key_id;
       customer_managed_key_identity_id =
         v_customer_managed_key_identity_id;
       id = v_id;
       location = v_location;
       managed_virtual_network_enabled =
         v_managed_virtual_network_enabled;
       name = v_name;
       public_network_enabled = v_public_network_enabled;
       purview_id = v_purview_id;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       github_configuration = v_github_configuration;
       global_parameter = v_global_parameter;
       identity = v_identity;
       timeouts = v_timeouts;
       vsts_configuration = v_vsts_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vsts_configuration
             v_vsts_configuration
         in
         ("vsts_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_global_parameter
             v_global_parameter
         in
         ("global_parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_github_configuration
             v_github_configuration
         in
         ("github_configuration", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
         match v_public_network_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_enabled", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_customer_managed_key_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_managed_key_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_managed_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_managed_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory

[@@@deriving.end]

let github_configuration ?git_url ?publishing_enabled ~account_name
    ~branch_name ~repository_name ~root_folder () :
    github_configuration =
  {
    account_name;
    branch_name;
    git_url;
    publishing_enabled;
    repository_name;
    root_folder;
  }

let global_parameter ~name ~type_ ~value () : global_parameter =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vsts_configuration ?publishing_enabled ~account_name ~branch_name
    ~project_name ~repository_name ~root_folder ~tenant_id () :
    vsts_configuration =
  {
    account_name;
    branch_name;
    project_name;
    publishing_enabled;
    repository_name;
    root_folder;
    tenant_id;
  }

let azurerm_data_factory ?customer_managed_key_id
    ?customer_managed_key_identity_id ?id
    ?managed_virtual_network_enabled ?public_network_enabled
    ?purview_id ?tags ?timeouts ~location ~name ~resource_group_name
    ~github_configuration ~global_parameter ~identity
    ~vsts_configuration () : azurerm_data_factory =
  {
    customer_managed_key_id;
    customer_managed_key_identity_id;
    id;
    location;
    managed_virtual_network_enabled;
    name;
    public_network_enabled;
    purview_id;
    resource_group_name;
    tags;
    github_configuration;
    global_parameter;
    identity;
    timeouts;
    vsts_configuration;
  }

type t = {
  customer_managed_key_id : string prop;
  customer_managed_key_identity_id : string prop;
  id : string prop;
  location : string prop;
  managed_virtual_network_enabled : bool prop;
  name : string prop;
  public_network_enabled : bool prop;
  purview_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?customer_managed_key_id ?customer_managed_key_identity_id
    ?id ?managed_virtual_network_enabled ?public_network_enabled
    ?purview_id ?tags ?timeouts ~location ~name ~resource_group_name
    ~github_configuration ~global_parameter ~identity
    ~vsts_configuration __id =
  let __type = "azurerm_data_factory" in
  let __attrs =
    ({
       customer_managed_key_id =
         Prop.computed __type __id "customer_managed_key_id";
       customer_managed_key_identity_id =
         Prop.computed __type __id "customer_managed_key_identity_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_virtual_network_enabled =
         Prop.computed __type __id "managed_virtual_network_enabled";
       name = Prop.computed __type __id "name";
       public_network_enabled =
         Prop.computed __type __id "public_network_enabled";
       purview_id = Prop.computed __type __id "purview_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory
        (azurerm_data_factory ?customer_managed_key_id
           ?customer_managed_key_identity_id ?id
           ?managed_virtual_network_enabled ?public_network_enabled
           ?purview_id ?tags ?timeouts ~location ~name
           ~resource_group_name ~github_configuration
           ~global_parameter ~identity ~vsts_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_id
    ?customer_managed_key_identity_id ?id
    ?managed_virtual_network_enabled ?public_network_enabled
    ?purview_id ?tags ?timeouts ~location ~name ~resource_group_name
    ~github_configuration ~global_parameter ~identity
    ~vsts_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_id ?customer_managed_key_identity_id
      ?id ?managed_virtual_network_enabled ?public_network_enabled
      ?purview_id ?tags ?timeouts ~location ~name
      ~resource_group_name ~github_configuration ~global_parameter
      ~identity ~vsts_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
