(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_file_storage__key_vault_password = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage__key_vault_password *)

type azurerm_data_factory_linked_service_azure_file_storage__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage__timeouts *)

type azurerm_data_factory_linked_service_azure_file_storage = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop;  (** connection_string *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  file_share : string prop option; [@option]  (** file_share *)
  host : string prop option; [@option]  (** host *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  password : string prop option; [@option]  (** password *)
  user_id : string prop option; [@option]  (** user_id *)
  key_vault_password :
    azurerm_data_factory_linked_service_azure_file_storage__key_vault_password
    list;
  timeouts :
    azurerm_data_factory_linked_service_azure_file_storage__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_file_storage *)

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  file_share : string prop;
  host : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  password : string prop;
  user_id : string prop;
}

let azurerm_data_factory_linked_service_azure_file_storage
    ?additional_properties ?annotations ?description ?file_share
    ?host ?id ?integration_runtime_name ?parameters ?password
    ?user_id ?timeouts ~connection_string ~data_factory_id ~name
    ~key_vault_password __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_file_storage"
  in
  let __resource =
    ({
       additional_properties;
       annotations;
       connection_string;
       data_factory_id;
       description;
       file_share;
       host;
       id;
       integration_runtime_name;
       name;
       parameters;
       password;
       user_id;
       key_vault_password;
       timeouts;
     }
      : azurerm_data_factory_linked_service_azure_file_storage)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_file_storage
       __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       connection_string =
         Prop.computed __resource_type __resource_id
           "connection_string";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       file_share =
         Prop.computed __resource_type __resource_id "file_share";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       integration_runtime_name =
         Prop.computed __resource_type __resource_id
           "integration_runtime_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       password =
         Prop.computed __resource_type __resource_id "password";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
