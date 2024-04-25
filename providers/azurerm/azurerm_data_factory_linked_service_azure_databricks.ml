(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_pool = {
  cluster_version : string prop;
  instance_pool_id : string prop;
  max_number_of_workers : float prop option; [@option]
  min_number_of_workers : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_pool) -> ()

let yojson_of_instance_pool =
  (function
   | {
       cluster_version = v_cluster_version;
       instance_pool_id = v_instance_pool_id;
       max_number_of_workers = v_max_number_of_workers;
       min_number_of_workers = v_min_number_of_workers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_pool_id
         in
         ("instance_pool_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_version
         in
         ("cluster_version", arg) :: bnds
       in
       `Assoc bnds
    : instance_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_pool

[@@@deriving.end]

type key_vault_password = {
  linked_service_name : string prop;
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_password) -> ()

let yojson_of_key_vault_password =
  (function
   | {
       linked_service_name = v_linked_service_name;
       secret_name = v_secret_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_linked_service_name
         in
         ("linked_service_name", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_password -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_password

[@@@deriving.end]

type new_cluster_config = {
  cluster_version : string prop;
  custom_tags : (string * string prop) list option; [@option]
  driver_node_type : string prop option; [@option]
  init_scripts : string prop list option; [@option]
  log_destination : string prop option; [@option]
  max_number_of_workers : float prop option; [@option]
  min_number_of_workers : float prop option; [@option]
  node_type : string prop;
  spark_config : (string * string prop) list option; [@option]
  spark_environment_variables : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : new_cluster_config) -> ()

let yojson_of_new_cluster_config =
  (function
   | {
       cluster_version = v_cluster_version;
       custom_tags = v_custom_tags;
       driver_node_type = v_driver_node_type;
       init_scripts = v_init_scripts;
       log_destination = v_log_destination;
       max_number_of_workers = v_max_number_of_workers;
       min_number_of_workers = v_min_number_of_workers;
       node_type = v_node_type;
       spark_config = v_spark_config;
       spark_environment_variables = v_spark_environment_variables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_spark_environment_variables with
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
             let bnd = "spark_environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spark_config with
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
             let bnd = "spark_config", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
       in
       let bnds =
         match v_min_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_number_of_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_number_of_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_destination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_init_scripts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "init_scripts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_driver_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "driver_node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_tags with
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
             let bnd = "custom_tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_version
         in
         ("cluster_version", arg) :: bnds
       in
       `Assoc bnds
    : new_cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_new_cluster_config

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

type azurerm_data_factory_linked_service_azure_databricks = {
  access_token : string prop option; [@option]
  adb_domain : string prop;
  additional_properties : (string * string prop) list option;
      [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  existing_cluster_id : string prop option; [@option]
  id : string prop option; [@option]
  integration_runtime_name : string prop option; [@option]
  msi_work_space_resource_id : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  instance_pool : instance_pool list;
  key_vault_password : key_vault_password list;
  new_cluster_config : new_cluster_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_factory_linked_service_azure_databricks) -> ()

let yojson_of_azurerm_data_factory_linked_service_azure_databricks =
  (function
   | {
       access_token = v_access_token;
       adb_domain = v_adb_domain;
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       existing_cluster_id = v_existing_cluster_id;
       id = v_id;
       integration_runtime_name = v_integration_runtime_name;
       msi_work_space_resource_id = v_msi_work_space_resource_id;
       name = v_name;
       parameters = v_parameters;
       instance_pool = v_instance_pool;
       key_vault_password = v_key_vault_password;
       new_cluster_config = v_new_cluster_config;
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
         let arg =
           yojson_of_list yojson_of_new_cluster_config
             v_new_cluster_config
         in
         ("new_cluster_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_key_vault_password
             v_key_vault_password
         in
         ("key_vault_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_pool v_instance_pool
         in
         ("instance_pool", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_msi_work_space_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "msi_work_space_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integration_runtime_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_runtime_name", arg in
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
         match v_existing_cluster_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "existing_cluster_id", arg in
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
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_properties with
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
             let bnd = "additional_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_adb_domain in
         ("adb_domain", arg) :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_linked_service_azure_databricks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_data_factory_linked_service_azure_databricks

[@@@deriving.end]

let instance_pool ?max_number_of_workers ?min_number_of_workers
    ~cluster_version ~instance_pool_id () : instance_pool =
  {
    cluster_version;
    instance_pool_id;
    max_number_of_workers;
    min_number_of_workers;
  }

let key_vault_password ~linked_service_name ~secret_name () :
    key_vault_password =
  { linked_service_name; secret_name }

let new_cluster_config ?custom_tags ?driver_node_type ?init_scripts
    ?log_destination ?max_number_of_workers ?min_number_of_workers
    ?spark_config ?spark_environment_variables ~cluster_version
    ~node_type () : new_cluster_config =
  {
    cluster_version;
    custom_tags;
    driver_node_type;
    init_scripts;
    log_destination;
    max_number_of_workers;
    min_number_of_workers;
    node_type;
    spark_config;
    spark_environment_variables;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_linked_service_azure_databricks
    ?access_token ?additional_properties ?annotations ?description
    ?existing_cluster_id ?id ?integration_runtime_name
    ?msi_work_space_resource_id ?parameters ?(instance_pool = [])
    ?(key_vault_password = []) ?(new_cluster_config = []) ?timeouts
    ~adb_domain ~data_factory_id ~name () :
    azurerm_data_factory_linked_service_azure_databricks =
  {
    access_token;
    adb_domain;
    additional_properties;
    annotations;
    data_factory_id;
    description;
    existing_cluster_id;
    id;
    integration_runtime_name;
    msi_work_space_resource_id;
    name;
    parameters;
    instance_pool;
    key_vault_password;
    new_cluster_config;
    timeouts;
  }

type t = {
  access_token : string prop;
  adb_domain : string prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  existing_cluster_id : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  msi_work_space_resource_id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let make ?access_token ?additional_properties ?annotations
    ?description ?existing_cluster_id ?id ?integration_runtime_name
    ?msi_work_space_resource_id ?parameters ?(instance_pool = [])
    ?(key_vault_password = []) ?(new_cluster_config = []) ?timeouts
    ~adb_domain ~data_factory_id ~name __id =
  let __type =
    "azurerm_data_factory_linked_service_azure_databricks"
  in
  let __attrs =
    ({
       access_token = Prop.computed __type __id "access_token";
       adb_domain = Prop.computed __type __id "adb_domain";
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       existing_cluster_id =
         Prop.computed __type __id "existing_cluster_id";
       id = Prop.computed __type __id "id";
       integration_runtime_name =
         Prop.computed __type __id "integration_runtime_name";
       msi_work_space_resource_id =
         Prop.computed __type __id "msi_work_space_resource_id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_linked_service_azure_databricks
        (azurerm_data_factory_linked_service_azure_databricks
           ?access_token ?additional_properties ?annotations
           ?description ?existing_cluster_id ?id
           ?integration_runtime_name ?msi_work_space_resource_id
           ?parameters ~instance_pool ~key_vault_password
           ~new_cluster_config ?timeouts ~adb_domain ~data_factory_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token ?additional_properties
    ?annotations ?description ?existing_cluster_id ?id
    ?integration_runtime_name ?msi_work_space_resource_id ?parameters
    ?(instance_pool = []) ?(key_vault_password = [])
    ?(new_cluster_config = []) ?timeouts ~adb_domain ~data_factory_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?access_token ?additional_properties ?annotations
      ?description ?existing_cluster_id ?id ?integration_runtime_name
      ?msi_work_space_resource_id ?parameters ~instance_pool
      ~key_vault_password ~new_cluster_config ?timeouts ~adb_domain
      ~data_factory_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
