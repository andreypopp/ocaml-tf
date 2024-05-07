(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_iap_app_engine_service_iam_member

val google_iap_app_engine_service_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  app_id:string prop ->
  member:string prop ->
  role:string prop ->
  service:string prop ->
  unit ->
  google_iap_app_engine_service_iam_member

val yojson_of_google_iap_app_engine_service_iam_member :
  google_iap_app_engine_service_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  app_id:string prop ->
  member:string prop ->
  role:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  app_id:string prop ->
  member:string prop ->
  role:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
