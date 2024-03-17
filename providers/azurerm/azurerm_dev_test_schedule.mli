(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_schedule__daily_recurrence
type azurerm_dev_test_schedule__hourly_recurrence
type azurerm_dev_test_schedule__notification_settings
type azurerm_dev_test_schedule__timeouts
type azurerm_dev_test_schedule__weekly_recurrence
type azurerm_dev_test_schedule

type t = private {
  id : string prop;
  lab_name : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  task_type : string prop;
  time_zone_id : string prop;
}

val azurerm_dev_test_schedule :
  ?id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dev_test_schedule__timeouts ->
  lab_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  task_type:string prop ->
  time_zone_id:string prop ->
  daily_recurrence:azurerm_dev_test_schedule__daily_recurrence list ->
  hourly_recurrence:azurerm_dev_test_schedule__hourly_recurrence list ->
  notification_settings:
    azurerm_dev_test_schedule__notification_settings list ->
  weekly_recurrence:azurerm_dev_test_schedule__weekly_recurrence list ->
  string ->
  t
