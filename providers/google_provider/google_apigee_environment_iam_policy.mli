(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment_iam_policy

type t = private {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

val google_apigee_environment_iam_policy :
  ?id:string prop ->
  env_id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  string ->
  t
