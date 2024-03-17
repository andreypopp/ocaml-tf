(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_bucket

val aws_lightsail_bucket :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bundle_id:string prop ->
  name:string prop ->
  string ->
  unit
