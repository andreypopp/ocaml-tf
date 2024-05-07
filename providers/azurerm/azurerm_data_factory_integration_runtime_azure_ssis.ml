(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_info = {
  administrator_login : string prop option; [@option]
  administrator_password : string prop option; [@option]
  dual_standby_pair_name : string prop option; [@option]
  elastic_pool_name : string prop option; [@option]
  pricing_tier : string prop option; [@option]
  server_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : catalog_info) -> ()

let yojson_of_catalog_info =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_password = v_administrator_password;
       dual_standby_pair_name = v_dual_standby_pair_name;
       elastic_pool_name = v_elastic_pool_name;
       pricing_tier = v_pricing_tier;
       server_endpoint = v_server_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_endpoint
         in
         ("server_endpoint", arg) :: bnds
       in
       let bnds =
         match v_pricing_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pricing_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastic_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastic_pool_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dual_standby_pair_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dual_standby_pair_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : catalog_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_catalog_info

[@@@deriving.end]

type custom_setup_script = {
  blob_container_uri : string prop;
  sas_token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_setup_script) -> ()

let yojson_of_custom_setup_script =
  (function
   | {
       blob_container_uri = v_blob_container_uri;
       sas_token = v_sas_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_token in
         ("sas_token", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_blob_container_uri
         in
         ("blob_container_uri", arg) :: bnds
       in
       `Assoc bnds
    : custom_setup_script -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_setup_script

[@@@deriving.end]

type express_custom_setup__command_key__key_vault_password = {
  linked_service_name : string prop;
  parameters : (string * string prop) list option; [@option]
  secret_name : string prop;
  secret_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : express_custom_setup__command_key__key_vault_password) ->
  ()

let yojson_of_express_custom_setup__command_key__key_vault_password =
  (function
   | {
       linked_service_name = v_linked_service_name;
       parameters = v_parameters;
       secret_name = v_secret_name;
       secret_version = v_secret_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_service_name
         in
         ("linked_service_name", arg) :: bnds
       in
       `Assoc bnds
    : express_custom_setup__command_key__key_vault_password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_express_custom_setup__command_key__key_vault_password

[@@@deriving.end]

type express_custom_setup__command_key = {
  password : string prop option; [@option]
  target_name : string prop;
  user_name : string prop;
  key_vault_password :
    express_custom_setup__command_key__key_vault_password list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : express_custom_setup__command_key) -> ()

let yojson_of_express_custom_setup__command_key =
  (function
   | {
       password = v_password;
       target_name = v_target_name;
       user_name = v_user_name;
       key_vault_password = v_key_vault_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_express_custom_setup__command_key__key_vault_password
             v_key_vault_password
         in
         ("key_vault_password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_name in
         ("target_name", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : express_custom_setup__command_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_express_custom_setup__command_key

[@@@deriving.end]

type express_custom_setup__component__key_vault_license = {
  linked_service_name : string prop;
  parameters : (string * string prop) list option; [@option]
  secret_name : string prop;
  secret_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : express_custom_setup__component__key_vault_license) -> ()

let yojson_of_express_custom_setup__component__key_vault_license =
  (function
   | {
       linked_service_name = v_linked_service_name;
       parameters = v_parameters;
       secret_name = v_secret_name;
       secret_version = v_secret_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_service_name
         in
         ("linked_service_name", arg) :: bnds
       in
       `Assoc bnds
    : express_custom_setup__component__key_vault_license ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_express_custom_setup__component__key_vault_license

[@@@deriving.end]

type express_custom_setup__component = {
  license : string prop option; [@option]
  name : string prop;
  key_vault_license :
    express_custom_setup__component__key_vault_license list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : express_custom_setup__component) -> ()

let yojson_of_express_custom_setup__component =
  (function
   | {
       license = v_license;
       name = v_name;
       key_vault_license = v_key_vault_license;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_express_custom_setup__component__key_vault_license
             v_key_vault_license
         in
         ("key_vault_license", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_license with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : express_custom_setup__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_express_custom_setup__component

[@@@deriving.end]

type express_custom_setup = {
  environment : (string * string prop) list option; [@option]
  powershell_version : string prop option; [@option]
  command_key : express_custom_setup__command_key list;
  component : express_custom_setup__component list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : express_custom_setup) -> ()

let yojson_of_express_custom_setup =
  (function
   | {
       environment = v_environment;
       powershell_version = v_powershell_version;
       command_key = v_command_key;
       component = v_component;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_express_custom_setup__component
             v_component
         in
         ("component", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_express_custom_setup__command_key
             v_command_key
         in
         ("command_key", arg) :: bnds
       in
       let bnds =
         match v_powershell_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "powershell_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment with
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
             let bnd = "environment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : express_custom_setup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_express_custom_setup

[@@@deriving.end]

type express_vnet_integration = { subnet_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : express_vnet_integration) -> ()

let yojson_of_express_vnet_integration =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : express_vnet_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_express_vnet_integration

[@@@deriving.end]

type package_store = {
  linked_service_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : package_store) -> ()

let yojson_of_package_store =
  (function
   | { linked_service_name = v_linked_service_name; name = v_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_service_name
         in
         ("linked_service_name", arg) :: bnds
       in
       `Assoc bnds
    : package_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_package_store

[@@@deriving.end]

type proxy = {
  path : string prop option; [@option]
  self_hosted_integration_runtime_name : string prop;
  staging_storage_linked_service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy) -> ()

let yojson_of_proxy =
  (function
   | {
       path = v_path;
       self_hosted_integration_runtime_name =
         v_self_hosted_integration_runtime_name;
       staging_storage_linked_service_name =
         v_staging_storage_linked_service_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_staging_storage_linked_service_name
         in
         ("staging_storage_linked_service_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_self_hosted_integration_runtime_name
         in
         ("self_hosted_integration_runtime_name", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy

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

type vnet_integration = {
  public_ips : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  subnet_name : string prop option; [@option]
  vnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vnet_integration) -> ()

let yojson_of_vnet_integration =
  (function
   | {
       public_ips = v_public_ips;
       subnet_id = v_subnet_id;
       subnet_name = v_subnet_name;
       vnet_id = v_vnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "public_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vnet_integration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vnet_integration

[@@@deriving.end]

type azurerm_data_factory_integration_runtime_azure_ssis = {
  credential_name : string prop option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  edition : string prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  max_parallel_executions_per_node : float prop option; [@option]
  name : string prop;
  node_size : string prop;
  number_of_nodes : float prop option; [@option]
  catalog_info : catalog_info list;
  custom_setup_script : custom_setup_script list;
  express_custom_setup : express_custom_setup list;
  express_vnet_integration : express_vnet_integration list;
  package_store : package_store list;
  proxy : proxy list;
  timeouts : timeouts option;
  vnet_integration : vnet_integration list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_integration_runtime_azure_ssis) -> ()

let yojson_of_azurerm_data_factory_integration_runtime_azure_ssis =
  (function
   | {
       credential_name = v_credential_name;
       data_factory_id = v_data_factory_id;
       description = v_description;
       edition = v_edition;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       max_parallel_executions_per_node =
         v_max_parallel_executions_per_node;
       name = v_name;
       node_size = v_node_size;
       number_of_nodes = v_number_of_nodes;
       catalog_info = v_catalog_info;
       custom_setup_script = v_custom_setup_script;
       express_custom_setup = v_express_custom_setup;
       express_vnet_integration = v_express_vnet_integration;
       package_store = v_package_store;
       proxy = v_proxy;
       timeouts = v_timeouts;
       vnet_integration = v_vnet_integration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vnet_integration
             v_vnet_integration
         in
         ("vnet_integration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_proxy v_proxy in
         ("proxy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_package_store v_package_store
         in
         ("package_store", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_express_vnet_integration
             v_express_vnet_integration
         in
         ("express_vnet_integration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_express_custom_setup
             v_express_custom_setup
         in
         ("express_custom_setup", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_setup_script
             v_custom_setup_script
         in
         ("custom_setup_script", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_catalog_info v_catalog_info
         in
         ("catalog_info", arg) :: bnds
       in
       let bnds =
         match v_number_of_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_of_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_size in
         ("node_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_parallel_executions_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_parallel_executions_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
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
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_credential_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credential_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_integration_runtime_azure_ssis ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_integration_runtime_azure_ssis

[@@@deriving.end]

let catalog_info ?administrator_login ?administrator_password
    ?dual_standby_pair_name ?elastic_pool_name ?pricing_tier
    ~server_endpoint () : catalog_info =
  {
    administrator_login;
    administrator_password;
    dual_standby_pair_name;
    elastic_pool_name;
    pricing_tier;
    server_endpoint;
  }

let custom_setup_script ~blob_container_uri ~sas_token () :
    custom_setup_script =
  { blob_container_uri; sas_token }

let express_custom_setup__command_key__key_vault_password ?parameters
    ?secret_version ~linked_service_name ~secret_name () :
    express_custom_setup__command_key__key_vault_password =
  { linked_service_name; parameters; secret_name; secret_version }

let express_custom_setup__command_key ?password
    ?(key_vault_password = []) ~target_name ~user_name () :
    express_custom_setup__command_key =
  { password; target_name; user_name; key_vault_password }

let express_custom_setup__component__key_vault_license ?parameters
    ?secret_version ~linked_service_name ~secret_name () :
    express_custom_setup__component__key_vault_license =
  { linked_service_name; parameters; secret_name; secret_version }

let express_custom_setup__component ?license
    ?(key_vault_license = []) ~name () :
    express_custom_setup__component =
  { license; name; key_vault_license }

let express_custom_setup ?environment ?powershell_version
    ?(command_key = []) ?(component = []) () : express_custom_setup =
  { environment; powershell_version; command_key; component }

let express_vnet_integration ~subnet_id () : express_vnet_integration
    =
  { subnet_id }

let package_store ~linked_service_name ~name () : package_store =
  { linked_service_name; name }

let proxy ?path ~self_hosted_integration_runtime_name
    ~staging_storage_linked_service_name () : proxy =
  {
    path;
    self_hosted_integration_runtime_name;
    staging_storage_linked_service_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vnet_integration ?public_ips ?subnet_id ?subnet_name ?vnet_id ()
    : vnet_integration =
  { public_ips; subnet_id; subnet_name; vnet_id }

let azurerm_data_factory_integration_runtime_azure_ssis
    ?credential_name ?description ?edition ?id ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes
    ?(catalog_info = []) ?(custom_setup_script = [])
    ?(express_custom_setup = []) ?(express_vnet_integration = [])
    ?(package_store = []) ?(proxy = []) ?timeouts
    ?(vnet_integration = []) ~data_factory_id ~location ~name
    ~node_size () :
    azurerm_data_factory_integration_runtime_azure_ssis =
  {
    credential_name;
    data_factory_id;
    description;
    edition;
    id;
    license_type;
    location;
    max_parallel_executions_per_node;
    name;
    node_size;
    number_of_nodes;
    catalog_info;
    custom_setup_script;
    express_custom_setup;
    express_vnet_integration;
    package_store;
    proxy;
    timeouts;
    vnet_integration;
  }

type t = {
  tf_name : string;
  credential_name : string prop;
  data_factory_id : string prop;
  description : string prop;
  edition : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_parallel_executions_per_node : float prop;
  name : string prop;
  node_size : string prop;
  number_of_nodes : float prop;
}

let make ?credential_name ?description ?edition ?id ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes
    ?(catalog_info = []) ?(custom_setup_script = [])
    ?(express_custom_setup = []) ?(express_vnet_integration = [])
    ?(package_store = []) ?(proxy = []) ?timeouts
    ?(vnet_integration = []) ~data_factory_id ~location ~name
    ~node_size __id =
  let __type =
    "azurerm_data_factory_integration_runtime_azure_ssis"
  in
  let __attrs =
    ({
       tf_name = __id;
       credential_name = Prop.computed __type __id "credential_name";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       edition = Prop.computed __type __id "edition";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_parallel_executions_per_node =
         Prop.computed __type __id "max_parallel_executions_per_node";
       name = Prop.computed __type __id "name";
       node_size = Prop.computed __type __id "node_size";
       number_of_nodes = Prop.computed __type __id "number_of_nodes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_integration_runtime_azure_ssis
        (azurerm_data_factory_integration_runtime_azure_ssis
           ?credential_name ?description ?edition ?id ?license_type
           ?max_parallel_executions_per_node ?number_of_nodes
           ~catalog_info ~custom_setup_script ~express_custom_setup
           ~express_vnet_integration ~package_store ~proxy ?timeouts
           ~vnet_integration ~data_factory_id ~location ~name
           ~node_size ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_name ?description ?edition ?id
    ?license_type ?max_parallel_executions_per_node ?number_of_nodes
    ?(catalog_info = []) ?(custom_setup_script = [])
    ?(express_custom_setup = []) ?(express_vnet_integration = [])
    ?(package_store = []) ?(proxy = []) ?timeouts
    ?(vnet_integration = []) ~data_factory_id ~location ~name
    ~node_size __id =
  let (r : _ Tf_core.resource) =
    make ?credential_name ?description ?edition ?id ?license_type
      ?max_parallel_executions_per_node ?number_of_nodes
      ~catalog_info ~custom_setup_script ~express_custom_setup
      ~express_vnet_integration ~package_store ~proxy ?timeouts
      ~vnet_integration ~data_factory_id ~location ~name ~node_size
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
