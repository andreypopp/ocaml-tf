(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_internetmonitor_monitor__health_events_config

type aws_internetmonitor_monitor__internet_measurements_log_delivery__s3_config

type aws_internetmonitor_monitor__internet_measurements_log_delivery
type aws_internetmonitor_monitor

val aws_internetmonitor_monitor :
  ?id:string prop ->
  ?max_city_networks_to_monitor:float prop ->
  ?resources:string prop list ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?traffic_percentage_to_monitor:float prop ->
  monitor_name:string prop ->
  health_events_config:
    aws_internetmonitor_monitor__health_events_config list ->
  internet_measurements_log_delivery:
    aws_internetmonitor_monitor__internet_measurements_log_delivery
    list ->
  string ->
  unit
