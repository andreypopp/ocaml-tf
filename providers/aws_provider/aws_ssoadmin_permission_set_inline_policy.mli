(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_permission_set_inline_policy__timeouts
type aws_ssoadmin_permission_set_inline_policy

val aws_ssoadmin_permission_set_inline_policy :
  ?id:string prop ->
  ?timeouts:aws_ssoadmin_permission_set_inline_policy__timeouts ->
  inline_policy:string prop ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  string ->
  unit
