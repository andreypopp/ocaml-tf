(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_storage_notification

val google_storage_notification :
  ?custom_attributes:(string * string prop) list ->
  ?event_types:string prop list ->
  ?id:string prop ->
  ?object_name_prefix:string prop ->
  bucket:string prop ->
  payload_format:string prop ->
  topic:string prop ->
  unit ->
  google_storage_notification

val yojson_of_google_storage_notification :
  google_storage_notification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  custom_attributes : (string * string) list prop;
  event_types : string list prop;
  id : string prop;
  notification_id : string prop;
  object_name_prefix : string prop;
  payload_format : string prop;
  self_link : string prop;
  topic : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_attributes:(string * string prop) list ->
  ?event_types:string prop list ->
  ?id:string prop ->
  ?object_name_prefix:string prop ->
  bucket:string prop ->
  payload_format:string prop ->
  topic:string prop ->
  string ->
  t

val make :
  ?custom_attributes:(string * string prop) list ->
  ?event_types:string prop list ->
  ?id:string prop ->
  ?object_name_prefix:string prop ->
  bucket:string prop ->
  payload_format:string prop ->
  topic:string prop ->
  string ->
  t Tf_core.resource
