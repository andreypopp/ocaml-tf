(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_prometheus_alert_manager_definition

type t = private {
  definition : string prop;
  id : string prop;
  workspace_id : string prop;
}

val aws_prometheus_alert_manager_definition :
  ?id:string prop ->
  definition:string prop ->
  workspace_id:string prop ->
  string ->
  t
