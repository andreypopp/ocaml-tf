(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_schedule__monthly_occurrence = {
  day : string prop;  (** day *)
  occurrence : float prop;  (** occurrence *)
}
[@@deriving yojson_of]
(** azurerm_automation_schedule__monthly_occurrence *)

type azurerm_automation_schedule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_schedule__timeouts *)

type azurerm_automation_schedule = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  expiry_time : string prop option; [@option]  (** expiry_time *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop option; [@option]  (** interval *)
  month_days : float prop list option; [@option]  (** month_days *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  start_time : string prop option; [@option]  (** start_time *)
  timezone : string prop option; [@option]  (** timezone *)
  week_days : string prop list option; [@option]  (** week_days *)
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
