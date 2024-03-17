(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_organization_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

val google_organization_iam_policy :
  ?id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  string ->
  t
