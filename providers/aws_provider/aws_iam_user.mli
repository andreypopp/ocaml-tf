(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user

val aws_iam_user :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?permissions_boundary:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  unit
