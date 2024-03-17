(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_policy_attachment

val aws_iam_policy_attachment :
  ?groups:string list ->
  ?roles:string list ->
  ?users:string list ->
  name:string ->
  policy_arn:string ->
  string ->
  unit
