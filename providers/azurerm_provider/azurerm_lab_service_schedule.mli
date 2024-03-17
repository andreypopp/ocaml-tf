(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_schedule__recurrence
type azurerm_lab_service_schedule__timeouts
type azurerm_lab_service_schedule

val azurerm_lab_service_schedule :
  ?notes:string ->
  ?start_time:string ->
  ?timeouts:azurerm_lab_service_schedule__timeouts ->
  lab_id:string ->
  name:string ->
  stop_time:string ->
  time_zone:string ->
  recurrence:azurerm_lab_service_schedule__recurrence list ->
  string ->
  unit
