(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_digital_twins_endpoint_eventgrid__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_eventgrid__timeouts *)

type azurerm_digital_twins_endpoint_eventgrid = {
  dead_letter_storage_secret : string option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string;  (** digital_twins_id *)
  eventgrid_topic_endpoint : string;  (** eventgrid_topic_endpoint *)
  eventgrid_topic_primary_access_key : string;
      (** eventgrid_topic_primary_access_key *)
  eventgrid_topic_secondary_access_key : string;
      (** eventgrid_topic_secondary_access_key *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  timeouts :
    azurerm_digital_twins_endpoint_eventgrid__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_eventgrid *)

let azurerm_digital_twins_endpoint_eventgrid
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name __resource_id =
  let __resource_type = "azurerm_digital_twins_endpoint_eventgrid" in
  let __resource =
    {
      dead_letter_storage_secret;
      digital_twins_id;
      eventgrid_topic_endpoint;
      eventgrid_topic_primary_access_key;
      eventgrid_topic_secondary_access_key;
      id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_endpoint_eventgrid __resource);
  ()
