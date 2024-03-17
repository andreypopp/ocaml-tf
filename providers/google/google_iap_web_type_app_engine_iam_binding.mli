(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_web_type_app_engine_iam_binding__condition
type google_iap_web_type_app_engine_iam_binding

type t = private {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val google_iap_web_type_app_engine_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_iap_web_type_app_engine_iam_binding__condition list ->
  string ->
  t
