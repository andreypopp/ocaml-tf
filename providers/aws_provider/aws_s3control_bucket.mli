(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_bucket

val aws_s3control_bucket :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bucket:string prop ->
  outpost_id:string prop ->
  string ->
  unit
