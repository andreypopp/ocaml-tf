(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_group_membership

type t = private {
  group : string prop;
  id : string prop;
  name : string prop;
  users : string list prop;
}

val aws_iam_group_membership :
  ?id:string prop ->
  group:string prop ->
  name:string prop ->
  users:string prop list ->
  string ->
  t
