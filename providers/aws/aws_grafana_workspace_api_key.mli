(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_grafana_workspace_api_key

val aws_grafana_workspace_api_key :
  ?id:string prop ->
  key_name:string prop ->
  key_role:string prop ->
  seconds_to_live:float prop ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_workspace_api_key

val yojson_of_aws_grafana_workspace_api_key :
  aws_grafana_workspace_api_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key : string prop;
  key_name : string prop;
  key_role : string prop;
  seconds_to_live : float prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key_name:string prop ->
  key_role:string prop ->
  seconds_to_live:float prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key_name:string prop ->
  key_role:string prop ->
  seconds_to_live:float prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
