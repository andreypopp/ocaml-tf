(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_internetmonitor_monitor__health_events_config

type aws_internetmonitor_monitor__internet_measurements_log_delivery__s3_config

type aws_internetmonitor_monitor__internet_measurements_log_delivery
type aws_internetmonitor_monitor

val aws_internetmonitor_monitor :
  ?id:string ->
  ?max_city_networks_to_monitor:float ->
  ?resources:string list ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?traffic_percentage_to_monitor:float ->
  monitor_name:string ->
  health_events_config:
    aws_internetmonitor_monitor__health_events_config list ->
  internet_measurements_log_delivery:
    aws_internetmonitor_monitor__internet_measurements_log_delivery
    list ->
  string ->
  unit
