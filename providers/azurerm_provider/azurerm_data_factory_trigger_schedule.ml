(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_trigger_schedule__pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__pipeline *)

type azurerm_data_factory_trigger_schedule__schedule__monthly = {
  week : float prop option; [@option]  (** week *)
  weekday : string prop;  (** weekday *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__schedule__monthly *)

type azurerm_data_factory_trigger_schedule__schedule = {
  days_of_month : float prop list option; [@option]
      (** days_of_month *)
  days_of_week : string prop list option; [@option]
      (** days_of_week *)
  hours : float prop list option; [@option]  (** hours *)
  minutes : float prop list option; [@option]  (** minutes *)
  monthly :
    azurerm_data_factory_trigger_schedule__schedule__monthly list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__schedule *)

type azurerm_data_factory_trigger_schedule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__timeouts *)

type azurerm_data_factory_trigger_schedule = {
  activated : bool prop option; [@option]  (** activated *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  end_time : string prop option; [@option]  (** end_time *)
  frequency : string prop option; [@option]  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop option; [@option]  (** interval *)
  name : string prop;  (** name *)
  pipeline_name : string prop option; [@option]  (** pipeline_name *)
  pipeline_parameters : (string * string prop) list option; [@option]
      (** pipeline_parameters *)
  start_time : string prop option; [@option]  (** start_time *)
  time_zone : string prop option; [@option]  (** time_zone *)
  pipeline : azurerm_data_factory_trigger_schedule__pipeline list;
  schedule : azurerm_data_factory_trigger_schedule__schedule list;
  timeouts : azurerm_data_factory_trigger_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule *)

let azurerm_data_factory_trigger_schedule ?activated ?annotations
    ?description ?end_time ?frequency ?id ?interval ?pipeline_name
    ?pipeline_parameters ?start_time ?time_zone ?timeouts
    ~data_factory_id ~name ~pipeline ~schedule __resource_id =
  let __resource_type = "azurerm_data_factory_trigger_schedule" in
  let __resource =
    {
      activated;
      annotations;
      data_factory_id;
      description;
      end_time;
      frequency;
      id;
      interval;
      name;
      pipeline_name;
      pipeline_parameters;
      start_time;
      time_zone;
      pipeline;
      schedule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_schedule __resource);
  ()
