(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user_group_membership

type t = private {
  groups : string list prop;
  id : string prop;
  user : string prop;
}

val aws_iam_user_group_membership :
  ?id:string prop ->
  groups:string prop list ->
  user:string prop ->
  string ->
  t
