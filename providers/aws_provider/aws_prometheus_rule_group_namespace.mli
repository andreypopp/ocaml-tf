(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_prometheus_rule_group_namespace

type t = private {
  data : string prop;
  id : string prop;
  name : string prop;
  workspace_id : string prop;
}

val aws_prometheus_rule_group_namespace :
  ?id:string prop ->
  data:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t
