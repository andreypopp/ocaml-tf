(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_digital_twins_endpoint_servicebus__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_servicebus__timeouts *)

type azurerm_digital_twins_endpoint_servicebus = {
  dead_letter_storage_secret : string prop option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string prop;  (** digital_twins_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  servicebus_primary_connection_string : string prop;
      (** servicebus_primary_connection_string *)
  servicebus_secondary_connection_string : string prop;
      (** servicebus_secondary_connection_string *)
  timeouts :
    azurerm_digital_twins_endpoint_servicebus__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_servicebus *)

let azurerm_digital_twins_endpoint_servicebus
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id ~name
    ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string __resource_id =
  let __resource_type =
    "azurerm_digital_twins_endpoint_servicebus"
  in
  let __resource =
    {
      dead_letter_storage_secret;
      digital_twins_id;
      id;
      name;
      servicebus_primary_connection_string;
      servicebus_secondary_connection_string;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_endpoint_servicebus __resource);
  ()
