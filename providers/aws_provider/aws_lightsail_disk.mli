(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_disk

val aws_lightsail_disk :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  name:string prop ->
  size_in_gb:float prop ->
  string ->
  unit
