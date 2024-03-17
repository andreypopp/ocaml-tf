(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_trigger_recurrence__schedule = {
  at_these_hours : float prop list option; [@option]
      (** at_these_hours *)
  at_these_minutes : float prop list option; [@option]
      (** at_these_minutes *)
  on_these_days : string prop list option; [@option]
      (** on_these_days *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence__schedule *)

type azurerm_logic_app_trigger_recurrence__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence__timeouts *)

type azurerm_logic_app_trigger_recurrence = {
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop;  (** interval *)
  logic_app_id : string prop;  (** logic_app_id *)
  name : string prop;  (** name *)
  start_time : string prop option; [@option]  (** start_time *)
  time_zone : string prop option; [@option]  (** time_zone *)
  schedule : azurerm_logic_app_trigger_recurrence__schedule list;
  timeouts : azurerm_logic_app_trigger_recurrence__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence *)

type t = {
  frequency : string prop;
  id : string prop;
  interval : float prop;
  logic_app_id : string prop;
  name : string prop;
  start_time : string prop;
  time_zone : string prop;
}

let azurerm_logic_app_trigger_recurrence ?id ?start_time ?time_zone
    ?timeouts ~frequency ~interval ~logic_app_id ~name ~schedule
    __resource_id =
  let __resource_type = "azurerm_logic_app_trigger_recurrence" in
  let __resource =
    ({
       frequency;
       id;
       interval;
       logic_app_id;
       name;
       start_time;
       time_zone;
       schedule;
       timeouts;
     }
      : azurerm_logic_app_trigger_recurrence)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_trigger_recurrence __resource);
  let __resource_attributes =
    ({
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       logic_app_id =
         Prop.computed __resource_type __resource_id "logic_app_id";
       name = Prop.computed __resource_type __resource_id "name";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
