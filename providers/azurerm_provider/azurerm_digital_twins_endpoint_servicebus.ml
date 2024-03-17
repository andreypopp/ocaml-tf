(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_digital_twins_endpoint_servicebus__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_servicebus__timeouts *)

type azurerm_digital_twins_endpoint_servicebus = {
  dead_letter_storage_secret : string option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string;  (** digital_twins_id *)
  name : string;  (** name *)
  servicebus_primary_connection_string : string;
      (** servicebus_primary_connection_string *)
  servicebus_secondary_connection_string : string;
      (** servicebus_secondary_connection_string *)
  timeouts :
    azurerm_digital_twins_endpoint_servicebus__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_servicebus *)

let azurerm_digital_twins_endpoint_servicebus
    ?dead_letter_storage_secret ?timeouts ~digital_twins_id ~name
    ~servicebus_primary_connection_string
    ~servicebus_secondary_connection_string __resource_id =
  let __resource_type =
    "azurerm_digital_twins_endpoint_servicebus"
  in
  let __resource =
    {
      dead_letter_storage_secret;
      digital_twins_id;
      name;
      servicebus_primary_connection_string;
      servicebus_secondary_connection_string;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_endpoint_servicebus __resource);
  ()
