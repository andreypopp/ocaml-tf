(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_grafana_workspace_api_key

type t = private {
  id : string prop;
  key : string prop;
  key_name : string prop;
  key_role : string prop;
  seconds_to_live : float prop;
  workspace_id : string prop;
}

val aws_grafana_workspace_api_key :
  ?id:string prop ->
  key_name:string prop ->
  key_role:string prop ->
  seconds_to_live:float prop ->
  workspace_id:string prop ->
  string ->
  t
