(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_log_view__timeouts
type google_logging_log_view

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
  unit
