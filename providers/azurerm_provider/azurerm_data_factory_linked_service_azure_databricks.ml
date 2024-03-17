(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_databricks__instance_pool = {
  cluster_version : string;  (** cluster_version *)
  instance_pool_id : string;  (** instance_pool_id *)
  max_number_of_workers : float option; [@option]
      (** max_number_of_workers *)
  min_number_of_workers : float option; [@option]
      (** min_number_of_workers *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_databricks__instance_pool *)

type azurerm_data_factory_linked_service_azure_databricks__key_vault_password = {
  linked_service_name : string;  (** linked_service_name *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_databricks__key_vault_password *)

type azurerm_data_factory_linked_service_azure_databricks__new_cluster_config = {
  cluster_version : string;  (** cluster_version *)
  custom_tags : (string * string) list option; [@option]
      (** custom_tags *)
  driver_node_type : string option; [@option]
      (** driver_node_type *)
  init_scripts : string list option; [@option]  (** init_scripts *)
  log_destination : string option; [@option]  (** log_destination *)
  max_number_of_workers : float option; [@option]
      (** max_number_of_workers *)
  min_number_of_workers : float option; [@option]
      (** min_number_of_workers *)
  node_type : string;  (** node_type *)
  spark_config : (string * string) list option; [@option]
      (** spark_config *)
  spark_environment_variables : (string * string) list option;
      [@option]
      (** spark_environment_variables *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_databricks__new_cluster_config *)

type azurerm_data_factory_linked_service_azure_databricks__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_databricks__timeouts *)

type azurerm_data_factory_linked_service_azure_databricks = {
  access_token : string option; [@option]  (** access_token *)
  adb_domain : string;  (** adb_domain *)
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  existing_cluster_id : string option; [@option]
      (** existing_cluster_id *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  msi_work_space_resource_id : string option; [@option]
      (** msi_work_space_resource_id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  instance_pool :
    azurerm_data_factory_linked_service_azure_databricks__instance_pool
    list;
  key_vault_password :
    azurerm_data_factory_linked_service_azure_databricks__key_vault_password
    list;
  new_cluster_config :
    azurerm_data_factory_linked_service_azure_databricks__new_cluster_config
    list;
  timeouts :
    azurerm_data_factory_linked_service_azure_databricks__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_databricks *)

let azurerm_data_factory_linked_service_azure_databricks
    ?access_token ?additional_properties ?annotations ?description
    ?existing_cluster_id ?integration_runtime_name
    ?msi_work_space_resource_id ?parameters ?timeouts ~adb_domain
    ~data_factory_id ~name ~instance_pool ~key_vault_password
    ~new_cluster_config __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_databricks"
  in
  let __resource =
    {
      access_token;
      adb_domain;
      additional_properties;
      annotations;
      data_factory_id;
      description;
      existing_cluster_id;
      integration_runtime_name;
      msi_work_space_resource_id;
      name;
      parameters;
      instance_pool;
      key_vault_password;
      new_cluster_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_databricks
       __resource);
  ()
