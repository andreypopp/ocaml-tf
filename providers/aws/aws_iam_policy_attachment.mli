(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_policy_attachment

type t = private {
  groups : string list prop;
  id : string prop;
  name : string prop;
  policy_arn : string prop;
  roles : string list prop;
  users : string list prop;
}

val aws_iam_policy_attachment :
  ?groups:string prop list ->
  ?id:string prop ->
  ?roles:string prop list ->
  ?users:string prop list ->
  name:string prop ->
  policy_arn:string prop ->
  string ->
  t
