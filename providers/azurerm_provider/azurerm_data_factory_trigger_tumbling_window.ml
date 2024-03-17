(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_trigger_tumbling_window__pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__pipeline *)

type azurerm_data_factory_trigger_tumbling_window__retry = {
  count : float prop;  (** count *)
  interval : float prop option; [@option]  (** interval *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__retry *)

type azurerm_data_factory_trigger_tumbling_window__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__timeouts *)

type azurerm_data_factory_trigger_tumbling_window__trigger_dependency = {
  offset : string prop option; [@option]  (** offset *)
  size : string prop option; [@option]  (** size *)
  trigger_name : string prop option; [@option]  (** trigger_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window__trigger_dependency *)

type azurerm_data_factory_trigger_tumbling_window = {
  activated : bool prop option; [@option]  (** activated *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  delay : string prop option; [@option]  (** delay *)
  description : string prop option; [@option]  (** description *)
  end_time : string prop option; [@option]  (** end_time *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop;  (** interval *)
  max_concurrency : float prop option; [@option]
      (** max_concurrency *)
  name : string prop;  (** name *)
  start_time : string prop;  (** start_time *)
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
    ?id ?max_concurrency ?timeouts ~data_factory_id ~frequency
    ~interval ~name ~start_time ~pipeline ~retry ~trigger_dependency
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
      id;
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
