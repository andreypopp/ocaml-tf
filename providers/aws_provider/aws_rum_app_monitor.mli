(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rum_app_monitor__app_monitor_configuration
type aws_rum_app_monitor__custom_events
type aws_rum_app_monitor

val aws_rum_app_monitor :
  ?cw_log_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain:string prop ->
  name:string prop ->
  app_monitor_configuration:
    aws_rum_app_monitor__app_monitor_configuration list ->
  custom_events:aws_rum_app_monitor__custom_events list ->
  string ->
  unit
