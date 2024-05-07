(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_prometheus_alert_manager_definition

val aws_prometheus_alert_manager_definition :
  ?id:string prop ->
  definition:string prop ->
  workspace_id:string prop ->
  unit ->
  aws_prometheus_alert_manager_definition

val yojson_of_aws_prometheus_alert_manager_definition :
  aws_prometheus_alert_manager_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  definition : string prop;
  id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  definition:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  definition:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
