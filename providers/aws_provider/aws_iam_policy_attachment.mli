(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_policy_attachment

val aws_iam_policy_attachment :
  ?groups:string prop list ->
  ?id:string prop ->
  ?roles:string prop list ->
  ?users:string prop list ->
  name:string prop ->
  policy_arn:string prop ->
  string ->
  unit
