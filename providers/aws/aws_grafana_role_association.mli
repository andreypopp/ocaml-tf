(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_grafana_role_association

val aws_grafana_role_association :
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?user_ids:string prop list ->
  ?timeouts:timeouts ->
  role:string prop ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_role_association

val yojson_of_aws_grafana_role_association :
  aws_grafana_role_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group_ids : string list prop;
  id : string prop;
  role : string prop;
  user_ids : string list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?user_ids:string prop list ->
  ?timeouts:timeouts ->
  role:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?user_ids:string prop list ->
  ?timeouts:timeouts ->
  role:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
