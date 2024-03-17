(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment_iam_member__condition
type google_apigee_environment_iam_member

type t = private {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  org_id : string prop;
  role : string prop;
}

val google_apigee_environment_iam_member :
  ?id:string prop ->
  env_id:string prop ->
  member:string prop ->
  org_id:string prop ->
  role:string prop ->
  condition:google_apigee_environment_iam_member__condition list ->
  string ->
  t
