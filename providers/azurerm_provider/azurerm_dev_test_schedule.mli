(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_test_schedule__daily_recurrence
type azurerm_dev_test_schedule__hourly_recurrence
type azurerm_dev_test_schedule__notification_settings
type azurerm_dev_test_schedule__timeouts
type azurerm_dev_test_schedule__weekly_recurrence
type azurerm_dev_test_schedule

val azurerm_dev_test_schedule :
  ?id:string ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dev_test_schedule__timeouts ->
  lab_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  task_type:string ->
  time_zone_id:string ->
  daily_recurrence:azurerm_dev_test_schedule__daily_recurrence list ->
  hourly_recurrence:azurerm_dev_test_schedule__hourly_recurrence list ->
  notification_settings:
    azurerm_dev_test_schedule__notification_settings list ->
  weekly_recurrence:azurerm_dev_test_schedule__weekly_recurrence list ->
  string ->
  unit
