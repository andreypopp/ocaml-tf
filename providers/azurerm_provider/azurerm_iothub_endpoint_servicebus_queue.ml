(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_endpoint_servicebus_queue__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_servicebus_queue__timeouts *)

type azurerm_iothub_endpoint_servicebus_queue = {
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
    azurerm_iothub_endpoint_servicebus_queue__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_servicebus_queue *)

let azurerm_iothub_endpoint_servicebus_queue ?authentication_type
    ?connection_string ?endpoint_uri ?entity_path ?id ?identity_id
    ?timeouts ~iothub_id ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_iothub_endpoint_servicebus_queue" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_endpoint_servicebus_queue __resource);
  ()
