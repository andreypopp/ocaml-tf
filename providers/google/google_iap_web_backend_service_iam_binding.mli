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

type google_iap_web_backend_service_iam_binding

val google_iap_web_backend_service_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  role:string prop ->
  web_backend_service:string prop ->
  unit ->
  google_iap_web_backend_service_iam_binding

val yojson_of_google_iap_web_backend_service_iam_binding :
  google_iap_web_backend_service_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  web_backend_service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  role:string prop ->
  web_backend_service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  role:string prop ->
  web_backend_service:string prop ->
  string ->
  t Tf_core.resource
