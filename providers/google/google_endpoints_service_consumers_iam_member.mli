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

type google_endpoints_service_consumers_iam_member

val google_endpoints_service_consumers_iam_member :
  ?id:string prop ->
  consumer_project:string prop ->
  member:string prop ->
  role:string prop ->
  service_name:string prop ->
  condition:condition list ->
  unit ->
  google_endpoints_service_consumers_iam_member

val yojson_of_google_endpoints_service_consumers_iam_member :
  google_endpoints_service_consumers_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  consumer_project:string prop ->
  member:string prop ->
  role:string prop ->
  service_name:string prop ->
  condition:condition list ->
  string ->
  t
