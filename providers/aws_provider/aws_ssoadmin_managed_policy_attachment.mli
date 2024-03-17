(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_managed_policy_attachment__timeouts
type aws_ssoadmin_managed_policy_attachment

val aws_ssoadmin_managed_policy_attachment :
  ?timeouts:aws_ssoadmin_managed_policy_attachment__timeouts ->
  instance_arn:string ->
  managed_policy_arn:string ->
  permission_set_arn:string ->
  string ->
  unit
