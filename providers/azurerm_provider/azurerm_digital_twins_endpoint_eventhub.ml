(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_digital_twins_endpoint_eventhub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_eventhub__timeouts *)

type azurerm_digital_twins_endpoint_eventhub = {
  dead_letter_storage_secret : string option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string;  (** digital_twins_id *)
  eventhub_primary_connection_string : string;
      (** eventhub_primary_connection_string *)
  eventhub_secondary_connection_string : string;
      (** eventhub_secondary_connection_string *)
  name : string;  (** name *)
  timeouts : azurerm_digital_twins_endpoint_eventhub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_eventhub *)

let azurerm_digital_twins_endpoint_eventhub
    ?dead_letter_storage_secret ?timeouts ~digital_twins_id
    ~eventhub_primary_connection_string
    ~eventhub_secondary_connection_string ~name __resource_id =
  let __resource_type = "azurerm_digital_twins_endpoint_eventhub" in
  let __resource =
    {
      dead_letter_storage_secret;
      digital_twins_id;
      eventhub_primary_connection_string;
      eventhub_secondary_connection_string;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_endpoint_eventhub __resource);
  ()
