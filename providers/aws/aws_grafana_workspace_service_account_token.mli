(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_grafana_workspace_service_account_token

val aws_grafana_workspace_service_account_token :
  name:string prop ->
  seconds_to_live:float prop ->
  service_account_id:string prop ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_workspace_service_account_token

val yojson_of_aws_grafana_workspace_service_account_token :
  aws_grafana_workspace_service_account_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  expires_at : string prop;
  id : string prop;
  key : string prop;
  name : string prop;
  seconds_to_live : float prop;
  service_account_id : string prop;
  service_account_token_id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  name:string prop ->
  seconds_to_live:float prop ->
  service_account_id:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  name:string prop ->
  seconds_to_live:float prop ->
  service_account_id:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
