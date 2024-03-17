(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_endpoint_servicebus_topic__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_servicebus_topic__timeouts *)

type azurerm_iothub_endpoint_servicebus_topic = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  connection_string : string prop option; [@option]
      (** connection_string *)
  endpoint_uri : string prop option; [@option]  (** endpoint_uri *)
  entity_path : string prop option; [@option]  (** entity_path *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_iothub_endpoint_servicebus_topic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_servicebus_topic *)

type t = {
  authentication_type : string prop;
  connection_string : string prop;
  endpoint_uri : string prop;
  entity_path : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let azurerm_iothub_endpoint_servicebus_topic ?authentication_type
    ?connection_string ?endpoint_uri ?entity_path ?id ?identity_id
    ?timeouts ~iothub_id ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_endpoint_servicebus_topic" in
  let __resource =
    ({
       authentication_type;
       connection_string;
       endpoint_uri;
       entity_path;
       id;
       identity_id;
       iothub_id;
       name;
       resource_group_name;
       timeouts;
     }
      : azurerm_iothub_endpoint_servicebus_topic)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_endpoint_servicebus_topic __resource);
  let __resource_attributes =
    ({
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       connection_string =
         Prop.computed __resource_type __resource_id
           "connection_string";
       endpoint_uri =
         Prop.computed __resource_type __resource_id "endpoint_uri";
       entity_path =
         Prop.computed __resource_type __resource_id "entity_path";
       id = Prop.computed __resource_type __resource_id "id";
       identity_id =
         Prop.computed __resource_type __resource_id "identity_id";
       iothub_id =
         Prop.computed __resource_type __resource_id "iothub_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
