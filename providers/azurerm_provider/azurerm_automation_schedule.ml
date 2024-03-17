(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_schedule__monthly_occurrence = {
  day : string;  (** day *)
  occurrence : float;  (** occurrence *)
}
[@@deriving yojson_of]
(** azurerm_automation_schedule__monthly_occurrence *)

type azurerm_automation_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_schedule__timeouts *)

type azurerm_automation_schedule = {
  automation_account_name : string;  (** automation_account_name *)
  description : string option; [@option]  (** description *)
  expiry_time : string option; [@option]  (** expiry_time *)
  frequency : string;  (** frequency *)
  id : string option; [@option]  (** id *)
  interval : float option; [@option]  (** interval *)
  month_days : float list option; [@option]  (** month_days *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  start_time : string option; [@option]  (** start_time *)
  timezone : string option; [@option]  (** timezone *)
  week_days : string list option; [@option]  (** week_days *)
  monthly_occurrence :
    azurerm_automation_schedule__monthly_occurrence list;
  timeouts : azurerm_automation_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_schedule *)

let azurerm_automation_schedule ?description ?expiry_time ?id
    ?interval ?month_days ?start_time ?timezone ?week_days ?timeouts
    ~automation_account_name ~frequency ~name ~resource_group_name
    ~monthly_occurrence __resource_id =
  let __resource_type = "azurerm_automation_schedule" in
  let __resource =
    {
      automation_account_name;
      description;
      expiry_time;
      frequency;
      id;
      interval;
      month_days;
      name;
      resource_group_name;
      start_time;
      timezone;
      week_days;
      monthly_occurrence;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_schedule __resource);
  ()
