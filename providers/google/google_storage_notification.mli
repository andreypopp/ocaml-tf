(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_notification

type t = private {
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

val google_storage_notification :
  ?custom_attributes:(string * string prop) list ->
  ?event_types:string prop list ->
  ?id:string prop ->
  ?object_name_prefix:string prop ->
  bucket:string prop ->
  payload_format:string prop ->
  topic:string prop ->
  string ->
  t
