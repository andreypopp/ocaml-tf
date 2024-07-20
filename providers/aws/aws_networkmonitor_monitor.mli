(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmonitor_monitor

val aws_networkmonitor_monitor :
  ?aggregation_period:float prop ->
  ?tags:(string * string prop) list ->
  monitor_name:string prop ->
  unit ->
  aws_networkmonitor_monitor

val yojson_of_aws_networkmonitor_monitor :
  aws_networkmonitor_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aggregation_period : float prop;
  arn : string prop;
  id : string prop;
  monitor_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?aggregation_period:float prop ->
  ?tags:(string * string prop) list ->
  monitor_name:string prop ->
  string ->
  t

val make :
  ?aggregation_period:float prop ->
  ?tags:(string * string prop) list ->
  monitor_name:string prop ->
  string ->
  t Tf_core.resource
