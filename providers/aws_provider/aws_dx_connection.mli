(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_connection

val aws_dx_connection :
  ?request_macsec:bool ->
  ?skip_destroy:bool ->
  ?tags:(string * string) list ->
  bandwidth:string ->
  location:string ->
  name:string ->
  string ->
  unit
