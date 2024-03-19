(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_digital_twins_endpoint_eventgrid = {
  dead_letter_storage_secret : string prop option; [@option]
      (** dead_letter_storage_secret *)
  digital_twins_id : string prop;  (** digital_twins_id *)
  eventgrid_topic_endpoint : string prop;
      (** eventgrid_topic_endpoint *)
  eventgrid_topic_primary_access_key : string prop;
      (** eventgrid_topic_primary_access_key *)
  eventgrid_topic_secondary_access_key : string prop;
      (** eventgrid_topic_secondary_access_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_endpoint_eventgrid *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_digital_twins_endpoint_eventgrid
    ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
    ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name () :
    azurerm_digital_twins_endpoint_eventgrid =
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

type t = {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventgrid_topic_endpoint : string prop;
  eventgrid_topic_primary_access_key : string prop;
  eventgrid_topic_secondary_access_key : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?dead_letter_storage_secret ?id ?timeouts
    ~digital_twins_id ~eventgrid_topic_endpoint
    ~eventgrid_topic_primary_access_key
    ~eventgrid_topic_secondary_access_key ~name __resource_id =
  let __resource_type = "azurerm_digital_twins_endpoint_eventgrid" in
  let __resource =
    azurerm_digital_twins_endpoint_eventgrid
      ?dead_letter_storage_secret ?id ?timeouts ~digital_twins_id
      ~eventgrid_topic_endpoint ~eventgrid_topic_primary_access_key
      ~eventgrid_topic_secondary_access_key ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_endpoint_eventgrid __resource);
  let __resource_attributes =
    ({
       dead_letter_storage_secret =
         Prop.computed __resource_type __resource_id
           "dead_letter_storage_secret";
       digital_twins_id =
         Prop.computed __resource_type __resource_id
           "digital_twins_id";
       eventgrid_topic_endpoint =
         Prop.computed __resource_type __resource_id
           "eventgrid_topic_endpoint";
       eventgrid_topic_primary_access_key =
         Prop.computed __resource_type __resource_id
           "eventgrid_topic_primary_access_key";
       eventgrid_topic_secondary_access_key =
         Prop.computed __resource_type __resource_id
           "eventgrid_topic_secondary_access_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
