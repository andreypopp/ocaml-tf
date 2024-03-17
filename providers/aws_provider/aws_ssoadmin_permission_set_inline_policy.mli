(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_permission_set_inline_policy__timeouts
type aws_ssoadmin_permission_set_inline_policy

val aws_ssoadmin_permission_set_inline_policy :
  ?timeouts:aws_ssoadmin_permission_set_inline_policy__timeouts ->
  inline_policy:string ->
  instance_arn:string ->
  permission_set_arn:string ->
  string ->
  unit
