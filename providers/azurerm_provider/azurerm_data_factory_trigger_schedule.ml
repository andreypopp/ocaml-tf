(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_trigger_schedule__pipeline = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__pipeline *)

type azurerm_data_factory_trigger_schedule__schedule__monthly = {
  week : float option; [@option]  (** week *)
  weekday : string;  (** weekday *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__schedule__monthly *)

type azurerm_data_factory_trigger_schedule__schedule = {
  days_of_month : float list option; [@option]  (** days_of_month *)
  days_of_week : string list option; [@option]  (** days_of_week *)
  hours : float list option; [@option]  (** hours *)
  minutes : float list option; [@option]  (** minutes *)
  monthly :
    azurerm_data_factory_trigger_schedule__schedule__monthly list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__schedule *)

type azurerm_data_factory_trigger_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule__timeouts *)

type azurerm_data_factory_trigger_schedule = {
  activated : bool option; [@option]  (** activated *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  end_time : string option; [@option]  (** end_time *)
  frequency : string option; [@option]  (** frequency *)
  interval : float option; [@option]  (** interval *)
  name : string;  (** name *)
  time_zone : string option; [@option]  (** time_zone *)
  pipeline : azurerm_data_factory_trigger_schedule__pipeline list;
  schedule : azurerm_data_factory_trigger_schedule__schedule list;
  timeouts : azurerm_data_factory_trigger_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule *)

let azurerm_data_factory_trigger_schedule ?activated ?annotations
    ?description ?end_time ?frequency ?interval ?time_zone ?timeouts
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
      interval;
      name;
      time_zone;
      pipeline;
      schedule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_schedule __resource);
  ()
