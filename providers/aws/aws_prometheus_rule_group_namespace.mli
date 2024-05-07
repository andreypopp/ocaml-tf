(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_prometheus_rule_group_namespace

val aws_prometheus_rule_group_namespace :
  ?id:string prop ->
  data:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  aws_prometheus_rule_group_namespace

val yojson_of_aws_prometheus_rule_group_namespace :
  aws_prometheus_rule_group_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data : string prop;
  id : string prop;
  name : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  data:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  data:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
