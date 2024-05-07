(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type daily_recurrence

val daily_recurrence : time:string prop -> unit -> daily_recurrence

type hourly_recurrence

val hourly_recurrence :
  minute:float prop -> unit -> hourly_recurrence

type notification_settings

val notification_settings :
  ?status:string prop ->
  ?time_in_minutes:float prop ->
  ?webhook_url:string prop ->
  unit ->
  notification_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type weekly_recurrence

val weekly_recurrence :
  ?week_days:string prop list ->
  time:string prop ->
  unit ->
  weekly_recurrence

type azurerm_dev_test_schedule

val azurerm_dev_test_schedule :
  ?id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?daily_recurrence:daily_recurrence list ->
  ?hourly_recurrence:hourly_recurrence list ->
  ?timeouts:timeouts ->
  ?weekly_recurrence:weekly_recurrence list ->
  lab_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  task_type:string prop ->
  time_zone_id:string prop ->
  notification_settings:notification_settings list ->
  unit ->
  azurerm_dev_test_schedule

val yojson_of_azurerm_dev_test_schedule :
  azurerm_dev_test_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?daily_recurrence:daily_recurrence list ->
  ?hourly_recurrence:hourly_recurrence list ->
  ?timeouts:timeouts ->
  ?weekly_recurrence:weekly_recurrence list ->
  lab_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  task_type:string prop ->
  time_zone_id:string prop ->
  notification_settings:notification_settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?daily_recurrence:daily_recurrence list ->
  ?hourly_recurrence:hourly_recurrence list ->
  ?timeouts:timeouts ->
  ?weekly_recurrence:weekly_recurrence list ->
  lab_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  task_type:string prop ->
  time_zone_id:string prop ->
  notification_settings:notification_settings list ->
  string ->
  t Tf_core.resource
