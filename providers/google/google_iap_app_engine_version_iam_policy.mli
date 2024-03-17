(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_app_engine_version_iam_policy

type t = private {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  service : string prop;
  version_id : string prop;
}

val google_iap_app_engine_version_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  policy_data:string prop ->
  service:string prop ->
  version_id:string prop ->
  string ->
  t
