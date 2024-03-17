(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_schedule__recurrence
type azurerm_lab_service_schedule__timeouts
type azurerm_lab_service_schedule

val azurerm_lab_service_schedule :
  ?id:string prop ->
  ?notes:string prop ->
  ?start_time:string prop ->
  ?timeouts:azurerm_lab_service_schedule__timeouts ->
  lab_id:string prop ->
  name:string prop ->
  stop_time:string prop ->
  time_zone:string prop ->
  recurrence:azurerm_lab_service_schedule__recurrence list ->
  string ->
  unit
