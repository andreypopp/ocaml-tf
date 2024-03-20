(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_pool = {
  cluster_version : string prop;  (** cluster_version *)
  instance_pool_id : string prop;  (** instance_pool_id *)
  max_number_of_workers : float prop option; [@option]
      (** max_number_of_workers *)
  min_number_of_workers : float prop option; [@option]
      (** min_number_of_workers *)
}
[@@deriving yojson_of]
(** instance_pool *)

type key_vault_password = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** key_vault_password *)

type new_cluster_config = {
  cluster_version : string prop;  (** cluster_version *)
  custom_tags : (string * string prop) list option; [@option]
      (** custom_tags *)
  driver_node_type : string prop option; [@option]
      (** driver_node_type *)
  init_scripts : string prop list option; [@option]
      (** init_scripts *)
  log_destination : string prop option; [@option]
      (** log_destination *)
  max_number_of_workers : float prop option; [@option]
      (** max_number_of_workers *)
  min_number_of_workers : float prop option; [@option]
      (** min_number_of_workers *)
  node_type : string prop;  (** node_type *)
  spark_config : (string * string prop) list option; [@option]
      (** spark_config *)
  spark_environment_variables : (string * string prop) list option;
      [@option]
      (** spark_environment_variables *)
}
[@@deriving yojson_of]
(** new_cluster_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_linked_service_azure_databricks = {
  access_token : string prop option; [@option]  (** access_token *)
  adb_domain : string prop;  (** adb_domain *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  existing_cluster_id : string prop option; [@option]
      (** existing_cluster_id *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  msi_work_space_resource_id : string prop option; [@option]
      (** msi_work_space_resource_id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  instance_pool : instance_pool list;
  key_vault_password : key_vault_password list;
  new_cluster_config : new_cluster_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_databricks *)

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
    ?msi_work_space_resource_id ?parameters ?timeouts ~adb_domain
    ~data_factory_id ~name ~instance_pool ~key_vault_password
    ~new_cluster_config () :
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
    ?msi_work_space_resource_id ?parameters ?timeouts ~adb_domain
    ~data_factory_id ~name ~instance_pool ~key_vault_password
    ~new_cluster_config __id =
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
           ?parameters ?timeouts ~adb_domain ~data_factory_id ~name
           ~instance_pool ~key_vault_password ~new_cluster_config ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token ?additional_properties
    ?annotations ?description ?existing_cluster_id ?id
    ?integration_runtime_name ?msi_work_space_resource_id ?parameters
    ?timeouts ~adb_domain ~data_factory_id ~name ~instance_pool
    ~key_vault_password ~new_cluster_config __id =
  let (r : _ Tf_core.resource) =
    make ?access_token ?additional_properties ?annotations
      ?description ?existing_cluster_id ?id ?integration_runtime_name
      ?msi_work_space_resource_id ?parameters ?timeouts ~adb_domain
      ~data_factory_id ~name ~instance_pool ~key_vault_password
      ~new_cluster_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
