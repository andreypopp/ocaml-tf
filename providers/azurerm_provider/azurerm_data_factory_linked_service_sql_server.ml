(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_sql_server__key_vault_connection_string = {
  linked_service_name : string;  (** linked_service_name *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sql_server__key_vault_connection_string *)

type azurerm_data_factory_linked_service_sql_server__key_vault_password = {
  linked_service_name : string;  (** linked_service_name *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sql_server__key_vault_password *)

type azurerm_data_factory_linked_service_sql_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sql_server__timeouts *)

type azurerm_data_factory_linked_service_sql_server = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  connection_string : string option; [@option]
      (** connection_string *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  user_name : string option; [@option]  (** user_name *)
  key_vault_connection_string :
    azurerm_data_factory_linked_service_sql_server__key_vault_connection_string
    list;
  key_vault_password :
    azurerm_data_factory_linked_service_sql_server__key_vault_password
    list;
  timeouts :
    azurerm_data_factory_linked_service_sql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_sql_server *)

let azurerm_data_factory_linked_service_sql_server
    ?additional_properties ?annotations ?connection_string
    ?description ?integration_runtime_name ?parameters ?user_name
    ?timeouts ~data_factory_id ~name ~key_vault_connection_string
    ~key_vault_password __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_sql_server"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      connection_string;
      data_factory_id;
      description;
      integration_runtime_name;
      name;
      parameters;
      user_name;
      key_vault_connection_string;
      key_vault_password;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_sql_server
       __resource);
  ()
