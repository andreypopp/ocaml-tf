(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_customer_managed_policy_attachment__customer_managed_policy_reference

type aws_ssoadmin_customer_managed_policy_attachment__timeouts
type aws_ssoadmin_customer_managed_policy_attachment

val aws_ssoadmin_customer_managed_policy_attachment :
  ?timeouts:aws_ssoadmin_customer_managed_policy_attachment__timeouts ->
  instance_arn:string ->
  permission_set_arn:string ->
  customer_managed_policy_reference:
    aws_ssoadmin_customer_managed_policy_attachment__customer_managed_policy_reference
    list ->
  string ->
  unit
