(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_odbc__basic_authentication = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_odbc__basic_authentication *)

type azurerm_data_factory_linked_service_odbc__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_odbc__timeouts *)

type azurerm_data_factory_linked_service_odbc = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop;  (** connection_string *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  basic_authentication :
    azurerm_data_factory_linked_service_odbc__basic_authentication
    list;
  timeouts :
    azurerm_data_factory_linked_service_odbc__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_odbc *)

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  connection_string : string prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let azurerm_data_factory_linked_service_odbc ?additional_properties
    ?annotations ?description ?id ?integration_runtime_name
    ?parameters ?timeouts ~connection_string ~data_factory_id ~name
    ~basic_authentication __resource_id =
  let __resource_type = "azurerm_data_factory_linked_service_odbc" in
  let __resource =
    ({
       additional_properties;
       annotations;
       connection_string;
       data_factory_id;
       description;
       id;
       integration_runtime_name;
       name;
       parameters;
       basic_authentication;
       timeouts;
     }
      : azurerm_data_factory_linked_service_odbc)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_odbc __resource);
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
       id = Prop.computed __resource_type __resource_id "id";
       integration_runtime_name =
         Prop.computed __resource_type __resource_id
           "integration_runtime_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
     }
      : t)
  in
  __resource_attributes
