(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_trigger_recurrence__schedule = {
  at_these_hours : float list option; [@option]
      (** at_these_hours *)
  at_these_minutes : float list option; [@option]
      (** at_these_minutes *)
  on_these_days : string list option; [@option]  (** on_these_days *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence__schedule *)

type azurerm_logic_app_trigger_recurrence__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence__timeouts *)

type azurerm_logic_app_trigger_recurrence = {
  frequency : string;  (** frequency *)
  interval : float;  (** interval *)
  logic_app_id : string;  (** logic_app_id *)
  name : string;  (** name *)
  start_time : string option; [@option]  (** start_time *)
  schedule : azurerm_logic_app_trigger_recurrence__schedule list;
  timeouts : azurerm_logic_app_trigger_recurrence__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence *)

let azurerm_logic_app_trigger_recurrence ?start_time ?timeouts
    ~frequency ~interval ~logic_app_id ~name ~schedule __resource_id
    =
  let __resource_type = "azurerm_logic_app_trigger_recurrence" in
  let __resource =
    {
      frequency;
      interval;
      logic_app_id;
      name;
      start_time;
      schedule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_trigger_recurrence __resource);
  ()
