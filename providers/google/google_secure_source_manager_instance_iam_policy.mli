(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secure_source_manager_instance_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  instance_id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_secure_source_manager_instance_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_id:string prop ->
  policy_data:string prop ->
  string ->
  t
