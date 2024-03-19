(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_iap_app_engine_version_iam_member

val google_iap_app_engine_version_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  member:string prop ->
  role:string prop ->
  service:string prop ->
  version_id:string prop ->
  condition:condition list ->
  unit ->
  google_iap_app_engine_version_iam_member

val yojson_of_google_iap_app_engine_version_iam_member :
  google_iap_app_engine_version_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  service : string prop;
  version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  app_id:string prop ->
  member:string prop ->
  role:string prop ->
  service:string prop ->
  version_id:string prop ->
  condition:condition list ->
  string ->
  t
