(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_group_policy_attachment

type t = private {
  group : string prop;
  id : string prop;
  policy_arn : string prop;
}

val aws_iam_group_policy_attachment :
  ?id:string prop ->
  group:string prop ->
  policy_arn:string prop ->
  string ->
  t
