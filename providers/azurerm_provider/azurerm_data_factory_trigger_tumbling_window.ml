(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_trigger_tumbling_window__pipeline = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__pipeline *)

type azurerm_data_factory_trigger_tumbling_window__retry = {
  count : float;  (** count *)
  interval : float option; [@option]  (** interval *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__retry *)

type azurerm_data_factory_trigger_tumbling_window__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__timeouts *)

type azurerm_data_factory_trigger_tumbling_window__trigger_dependency = {
  offset : string option; [@option]  (** offset *)
  size : string option; [@option]  (** size *)
  trigger_name : string option; [@option]  (** trigger_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__trigger_dependency *)

type azurerm_data_factory_trigger_tumbling_window = {
  activated : bool option; [@option]  (** activated *)
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  delay : string option; [@option]  (** delay *)
  description : string option; [@option]  (** description *)
  end_time : string option; [@option]  (** end_time *)
  frequency : string;  (** frequency *)
  interval : float;  (** interval *)
  max_concurrency : float option; [@option]  (** max_concurrency *)
  name : string;  (** name *)
  start_time : string;  (** start_time *)
  pipeline :
    azurerm_data_factory_trigger_tumbling_window__pipeline list;
  retry : azurerm_data_factory_trigger_tumbling_window__retry list;
  timeouts :
    azurerm_data_factory_trigger_tumbling_window__timeouts option;
  trigger_dependency :
    azurerm_data_factory_trigger_tumbling_window__trigger_dependency
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window *)

let azurerm_data_factory_trigger_tumbling_window ?activated
    ?additional_properties ?annotations ?delay ?description ?end_time
    ?max_concurrency ?timeouts ~data_factory_id ~frequency ~interval
    ~name ~start_time ~pipeline ~retry ~trigger_dependency
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_trigger_tumbling_window"
  in
  let __resource =
    {
      activated;
      additional_properties;
      annotations;
      data_factory_id;
      delay;
      description;
      end_time;
      frequency;
      interval;
      max_concurrency;
      name;
      start_time;
      pipeline;
      retry;
      timeouts;
      trigger_dependency;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_tumbling_window
       __resource);
  ()
