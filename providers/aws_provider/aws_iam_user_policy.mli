(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user_policy

type t = private {
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  user : string prop;
}

val aws_iam_user_policy :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  policy:string prop ->
  user:string prop ->
  string ->
  t
