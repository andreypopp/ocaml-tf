(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_access_policy_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
}

val google_access_context_manager_access_policy_iam_policy :
  ?id:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t
