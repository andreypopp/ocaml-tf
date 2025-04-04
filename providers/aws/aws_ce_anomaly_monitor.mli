(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ce_anomaly_monitor

val aws_ce_anomaly_monitor :
  ?id:string prop ->
  ?monitor_dimension:string prop ->
  ?monitor_specification:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  monitor_type:string prop ->
  name:string prop ->
  unit ->
  aws_ce_anomaly_monitor

val yojson_of_aws_ce_anomaly_monitor : aws_ce_anomaly_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  monitor_dimension : string prop;
  monitor_specification : string prop;
  monitor_type : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?monitor_dimension:string prop ->
  ?monitor_specification:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  monitor_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?monitor_dimension:string prop ->
  ?monitor_specification:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  monitor_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
