(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_log_view__timeouts
type google_logging_log_view

val google_logging_log_view :
  ?description:string ->
  ?filter:string ->
  ?id:string ->
  ?location:string ->
  ?parent:string ->
  ?timeouts:google_logging_log_view__timeouts ->
  bucket:string ->
  name:string ->
  string ->
  unit
