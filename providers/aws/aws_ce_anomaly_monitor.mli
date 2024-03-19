(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ce_anomaly_monitor

val aws_ce_anomaly_monitor :
  ?id:string prop ->
  ?monitor_dimension:string prop ->
  ?monitor_specification:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  monitor_type:string prop ->
  name:string prop ->
  unit ->
  aws_ce_anomaly_monitor

val yojson_of_aws_ce_anomaly_monitor : aws_ce_anomaly_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  monitor_dimension : string prop;
  monitor_specification : string prop;
  monitor_type : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?monitor_dimension:string prop ->
  ?monitor_specification:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  monitor_type:string prop ->
  name:string prop ->
  string ->
  t
