(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user

val aws_iam_user :
  ?force_destroy:bool ->
  ?id:string ->
  ?path:string ->
  ?permissions_boundary:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  string ->
  unit
