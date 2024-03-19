(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_apigee_environment_iam_policy

val google_apigee_environment_iam_policy :
  ?id:string prop ->
  env_id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  unit ->
  google_apigee_environment_iam_policy

val yojson_of_google_apigee_environment_iam_policy :
  google_apigee_environment_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  env_id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  string ->
  t
