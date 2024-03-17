(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_connection

val aws_dx_connection :
  ?encryption_mode:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?request_macsec:bool prop ->
  ?skip_destroy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
