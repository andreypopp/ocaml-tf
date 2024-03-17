(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_trigger_custom_event__pipeline = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_custom_event__pipeline *)

type azurerm_data_factory_trigger_custom_event__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_custom_event__timeouts *)

type azurerm_data_factory_trigger_custom_event = {
  activated : bool option; [@option]  (** activated *)
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  eventgrid_topic_id : string;  (** eventgrid_topic_id *)
  events : string list;  (** events *)
  name : string;  (** name *)
  subject_begins_with : string option; [@option]
      (** subject_begins_with *)
  subject_ends_with : string option; [@option]
      (** subject_ends_with *)
  pipeline :
    azurerm_data_factory_trigger_custom_event__pipeline list;
  timeouts :
    azurerm_data_factory_trigger_custom_event__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_custom_event *)

let azurerm_data_factory_trigger_custom_event ?activated
    ?additional_properties ?annotations ?description
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
