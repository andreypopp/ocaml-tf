(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_role_policy_attachment

type t = private {
  id : string prop;
  policy_arn : string prop;
  role : string prop;
}

val aws_iam_role_policy_attachment :
  ?id:string prop ->
  policy_arn:string prop ->
  role:string prop ->
  string ->
  t
