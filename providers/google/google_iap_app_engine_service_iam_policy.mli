(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_iap_app_engine_service_iam_policy

val google_iap_app_engine_service_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  policy_data:string prop ->
  service:string prop ->
  unit ->
  google_iap_app_engine_service_iam_policy

val yojson_of_google_iap_app_engine_service_iam_policy :
  google_iap_app_engine_service_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  policy_data:string prop ->
  service:string prop ->
  string ->
  t
