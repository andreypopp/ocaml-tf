(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_linked_service_azure_file_storage__key_vault_password = {
  linked_service_name : string;  (** linked_service_name *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage__key_vault_password *)

type azurerm_data_factory_linked_service_azure_file_storage__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage__timeouts *)

type azurerm_data_factory_linked_service_azure_file_storage = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  connection_string : string;  (** connection_string *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  file_share : string option; [@option]  (** file_share *)
  host : string option; [@option]  (** host *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  password : string option; [@option]  (** password *)
  user_id : string option; [@option]  (** user_id *)
  key_vault_password :
    azurerm_data_factory_linked_service_azure_file_storage__key_vault_password
    list;
  timeouts :
    azurerm_data_factory_linked_service_azure_file_storage__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage *)

let azurerm_data_factory_linked_service_azure_file_storage
    ?additional_properties ?annotations ?description ?file_share
    ?host ?integration_runtime_name ?parameters ?password ?user_id
    ?timeouts ~connection_string ~data_factory_id ~name
    ~key_vault_password __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_file_storage"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      connection_string;
      data_factory_id;
      description;
      file_share;
      host;
      integration_runtime_name;
      name;
      parameters;
      password;
      user_id;
      key_vault_password;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_file_storage
       __resource);
  ()
