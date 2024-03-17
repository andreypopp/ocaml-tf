(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_account_assignment__timeouts
type aws_ssoadmin_account_assignment

val aws_ssoadmin_account_assignment :
  ?target_type:string ->
  ?timeouts:aws_ssoadmin_account_assignment__timeouts ->
  instance_arn:string ->
  permission_set_arn:string ->
  principal_id:string ->
  principal_type:string ->
  target_id:string ->
  string ->
  unit
