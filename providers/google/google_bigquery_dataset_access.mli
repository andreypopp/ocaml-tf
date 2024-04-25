(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dataset__dataset

val dataset__dataset :
  dataset_id:string prop ->
  project_id:string prop ->
  unit ->
  dataset__dataset

type dataset

val dataset :
  target_types:string prop list ->
  dataset:dataset__dataset list ->
  unit ->
  dataset

type routine

val routine :
  dataset_id:string prop ->
  project_id:string prop ->
  routine_id:string prop ->
  unit ->
  routine

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type view

val view :
  dataset_id:string prop ->
  project_id:string prop ->
  table_id:string prop ->
  unit ->
  view

type google_bigquery_dataset_access

val google_bigquery_dataset_access :
  ?domain:string prop ->
  ?group_by_email:string prop ->
  ?iam_member:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?role:string prop ->
  ?special_group:string prop ->
  ?user_by_email:string prop ->
  ?dataset:dataset list ->
  ?routine:routine list ->
  ?timeouts:timeouts ->
  ?view:view list ->
  dataset_id:string prop ->
  unit ->
  google_bigquery_dataset_access

val yojson_of_google_bigquery_dataset_access :
  google_bigquery_dataset_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_updated_member : bool prop;
  dataset_id : string prop;
  domain : string prop;
  group_by_email : string prop;
  iam_member : string prop;
  id : string prop;
  project : string prop;
  role : string prop;
  special_group : string prop;
  user_by_email : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain:string prop ->
  ?group_by_email:string prop ->
  ?iam_member:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?role:string prop ->
  ?special_group:string prop ->
  ?user_by_email:string prop ->
  ?dataset:dataset list ->
  ?routine:routine list ->
  ?timeouts:timeouts ->
  ?view:view list ->
  dataset_id:string prop ->
  string ->
  t

val make :
  ?domain:string prop ->
  ?group_by_email:string prop ->
  ?iam_member:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?role:string prop ->
  ?special_group:string prop ->
  ?user_by_email:string prop ->
  ?dataset:dataset list ->
  ?routine:routine list ->
  ?timeouts:timeouts ->
  ?view:view list ->
  dataset_id:string prop ->
  string ->
  t Tf_core.resource
