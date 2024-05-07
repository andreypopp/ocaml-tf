(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type recurrence

val recurrence :
  ?interval:float prop ->
  ?week_days:string prop list ->
  expiration_date:string prop ->
  frequency:string prop ->
  unit ->
  recurrence

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lab_service_schedule

val azurerm_lab_service_schedule :
  ?id:string prop ->
  ?notes:string prop ->
  ?start_time:string prop ->
  ?recurrence:recurrence list ->
  ?timeouts:timeouts ->
  lab_id:string prop ->
  name:string prop ->
  stop_time:string prop ->
  time_zone:string prop ->
  unit ->
  azurerm_lab_service_schedule

val yojson_of_azurerm_lab_service_schedule :
  azurerm_lab_service_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  lab_id : string prop;
  name : string prop;
  notes : string prop;
  start_time : string prop;
  stop_time : string prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?notes:string prop ->
  ?start_time:string prop ->
  ?recurrence:recurrence list ->
  ?timeouts:timeouts ->
  lab_id:string prop ->
  name:string prop ->
  stop_time:string prop ->
  time_zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?notes:string prop ->
  ?start_time:string prop ->
  ?recurrence:recurrence list ->
  ?timeouts:timeouts ->
  lab_id:string prop ->
  name:string prop ->
  stop_time:string prop ->
  time_zone:string prop ->
  string ->
  t Tf_core.resource
