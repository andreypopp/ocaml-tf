(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_logging_log_view

val google_logging_log_view :
  ?description:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  unit ->
  google_logging_log_view

val yojson_of_google_logging_log_view :
  google_logging_log_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t
