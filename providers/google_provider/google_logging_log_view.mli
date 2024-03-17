(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_log_view__timeouts
type google_logging_log_view

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

val google_logging_log_view :
  ?description:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?parent:string prop ->
  ?timeouts:google_logging_log_view__timeouts ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t
