(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_trigger_custom_event__pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_custom_event__pipeline *)

type azurerm_data_factory_trigger_custom_event__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_custom_event__timeouts *)

type azurerm_data_factory_trigger_custom_event = {
  activated : bool prop option; [@option]  (** activated *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  eventgrid_topic_id : string prop;  (** eventgrid_topic_id *)
  events : string prop list;  (** events *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subject_begins_with : string prop option; [@option]
      (** subject_begins_with *)
  subject_ends_with : string prop option; [@option]
      (** subject_ends_with *)
  pipeline :
    azurerm_data_factory_trigger_custom_event__pipeline list;
  timeouts :
    azurerm_data_factory_trigger_custom_event__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_custom_event *)

type t = {
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  eventgrid_topic_id : string prop;
  events : string list prop;
  id : string prop;
  name : string prop;
  subject_begins_with : string prop;
  subject_ends_with : string prop;
}

let azurerm_data_factory_trigger_custom_event ?activated
    ?additional_properties ?annotations ?description ?id
    ?subject_begins_with ?subject_ends_with ?timeouts
    ~data_factory_id ~eventgrid_topic_id ~events ~name ~pipeline
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_trigger_custom_event"
  in
  let __resource =
    ({
       activated;
       additional_properties;
       annotations;
       data_factory_id;
       description;
       eventgrid_topic_id;
       events;
       id;
       name;
       subject_begins_with;
       subject_ends_with;
       pipeline;
       timeouts;
     }
      : azurerm_data_factory_trigger_custom_event)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_custom_event __resource);
  let __resource_attributes =
    ({
       activated =
         Prop.computed __resource_type __resource_id "activated";
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       eventgrid_topic_id =
         Prop.computed __resource_type __resource_id
           "eventgrid_topic_id";
       events = Prop.computed __resource_type __resource_id "events";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subject_begins_with =
         Prop.computed __resource_type __resource_id
           "subject_begins_with";
       subject_ends_with =
         Prop.computed __resource_type __resource_id
           "subject_ends_with";
     }
      : t)
  in
  __resource_attributes
