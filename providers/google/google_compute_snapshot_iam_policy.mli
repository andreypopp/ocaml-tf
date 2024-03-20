(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_snapshot_iam_policy

val google_compute_snapshot_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  policy_data:string prop ->
  unit ->
  google_compute_snapshot_iam_policy

val yojson_of_google_compute_snapshot_iam_policy :
  google_compute_snapshot_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
