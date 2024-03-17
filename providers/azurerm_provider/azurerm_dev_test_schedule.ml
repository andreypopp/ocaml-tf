(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_schedule__daily_recurrence = {
  time : string;  (** time *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule__daily_recurrence *)

type azurerm_dev_test_schedule__hourly_recurrence = {
  minute : float;  (** minute *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule__hourly_recurrence *)

type azurerm_dev_test_schedule__notification_settings = {
  status : string option; [@option]  (** status *)
  time_in_minutes : float option; [@option]  (** time_in_minutes *)
  webhook_url : string option; [@option]  (** webhook_url *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule__notification_settings *)

type azurerm_dev_test_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule__timeouts *)

type azurerm_dev_test_schedule__weekly_recurrence = {
  time : string;  (** time *)
  week_days : string list option; [@option]  (** week_days *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule__weekly_recurrence *)

type azurerm_dev_test_schedule = {
  lab_name : string;  (** lab_name *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  task_type : string;  (** task_type *)
  time_zone_id : string;  (** time_zone_id *)
  daily_recurrence :
    azurerm_dev_test_schedule__daily_recurrence list;
  hourly_recurrence :
    azurerm_dev_test_schedule__hourly_recurrence list;
  notification_settings :
    azurerm_dev_test_schedule__notification_settings list;
  timeouts : azurerm_dev_test_schedule__timeouts option;
  weekly_recurrence :
    azurerm_dev_test_schedule__weekly_recurrence list;
}
[@@deriving yojson_of]
(** azurerm_dev_test_schedule *)

let azurerm_dev_test_schedule ?status ?tags ?timeouts ~lab_name
    ~location ~name ~resource_group_name ~task_type ~time_zone_id
    ~daily_recurrence ~hourly_recurrence ~notification_settings
    ~weekly_recurrence __resource_id =
  let __resource_type = "azurerm_dev_test_schedule" in
  let __resource =
    {
      lab_name;
      location;
      name;
      resource_group_name;
      status;
      tags;
      task_type;
      time_zone_id;
      daily_recurrence;
      hourly_recurrence;
      notification_settings;
      timeouts;
      weekly_recurrence;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_schedule __resource);
  ()
