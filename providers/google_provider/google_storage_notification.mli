(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_notification

val google_storage_notification :
  ?custom_attributes:(string * string) list ->
  ?event_types:string list ->
  ?id:string ->
  ?object_name_prefix:string ->
  bucket:string ->
  payload_format:string ->
  topic:string ->
  string ->
  unit
