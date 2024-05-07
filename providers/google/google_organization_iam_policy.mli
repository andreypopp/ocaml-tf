(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_organization_iam_policy

val google_organization_iam_policy :
  ?id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  unit ->
  google_organization_iam_policy

val yojson_of_google_organization_iam_policy :
  google_organization_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  org_id:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
