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

type t = {
  automation_account_name : string prop;
  description : string prop;
  expiry_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  month_days : float list prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop;
  timezone : string prop;
  week_days : string list prop;
}

let azurerm_automation_schedule ?description ?expiry_time ?id
    ?interval ?month_days ?start_time ?timezone ?week_days ?timeouts
    ~automation_account_name ~frequency ~name ~resource_group_name
    ~monthly_occurrence __resource_id =
  let __resource_type = "azurerm_automation_schedule" in
  let __resource =
    ({
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
      : azurerm_automation_schedule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_schedule __resource);
  let __resource_attributes =
    ({
       automation_account_name =
         Prop.computed __resource_type __resource_id
           "automation_account_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       expiry_time =
         Prop.computed __resource_type __resource_id "expiry_time";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       month_days =
         Prop.computed __resource_type __resource_id "month_days";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       timezone =
         Prop.computed __resource_type __resource_id "timezone";
       week_days =
         Prop.computed __resource_type __resource_id "week_days";
     }
      : t)
  in
  __resource_attributes
