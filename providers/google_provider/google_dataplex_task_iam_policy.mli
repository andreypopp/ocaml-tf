(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_task_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  task_id : string prop;
}

val google_dataplex_task_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  lake:string prop ->
  policy_data:string prop ->
  task_id:string prop ->
  string ->
  t
