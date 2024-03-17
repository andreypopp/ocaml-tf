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

let azurerm_data_factory_trigger_custom_event ?activated
    ?additional_properties ?annotations ?description ?id
    ?subject_begins_with ?subject_ends_with ?timeouts
    ~data_factory_id ~eventgrid_topic_id ~events ~name ~pipeline
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_trigger_custom_event"
  in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_custom_event __resource);
  ()
