(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type health_events_config

val health_events_config :
  ?availability_score_threshold:float prop ->
  ?performance_score_threshold:float prop ->
  unit ->
  health_events_config

type internet_measurements_log_delivery__s3_config

val internet_measurements_log_delivery__s3_config :
  ?bucket_prefix:string prop ->
  ?log_delivery_status:string prop ->
  bucket_name:string prop ->
  unit ->
  internet_measurements_log_delivery__s3_config

type internet_measurements_log_delivery

val internet_measurements_log_delivery :
  s3_config:internet_measurements_log_delivery__s3_config list ->
  unit ->
  internet_measurements_log_delivery

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
  health_events_config:health_events_config list ->
  internet_measurements_log_delivery:
    internet_measurements_log_delivery list ->
  unit ->
  aws_internetmonitor_monitor

val yojson_of_aws_internetmonitor_monitor :
  aws_internetmonitor_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  max_city_networks_to_monitor : float prop;
  monitor_name : string prop;
  resources : string list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_percentage_to_monitor : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?max_city_networks_to_monitor:float prop ->
  ?resources:string prop list ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?traffic_percentage_to_monitor:float prop ->
  monitor_name:string prop ->
  health_events_config:health_events_config list ->
  internet_measurements_log_delivery:
    internet_measurements_log_delivery list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?max_city_networks_to_monitor:float prop ->
  ?resources:string prop list ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?traffic_percentage_to_monitor:float prop ->
  monitor_name:string prop ->
  health_events_config:health_events_config list ->
  internet_measurements_log_delivery:
    internet_measurements_log_delivery list ->
  string ->
  t Tf_core.resource
