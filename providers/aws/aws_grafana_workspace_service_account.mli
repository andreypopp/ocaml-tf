(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_grafana_workspace_service_account

val aws_grafana_workspace_service_account :
  grafana_role:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_workspace_service_account

val yojson_of_aws_grafana_workspace_service_account :
  aws_grafana_workspace_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  grafana_role : string prop;
  id : string prop;
  name : string prop;
  service_account_id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  grafana_role:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  grafana_role:string prop ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
