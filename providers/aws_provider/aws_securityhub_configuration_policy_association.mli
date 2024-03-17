(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_configuration_policy_association__timeouts
type aws_securityhub_configuration_policy_association

val aws_securityhub_configuration_policy_association :
  ?timeouts:
    aws_securityhub_configuration_policy_association__timeouts ->
  policy_id:string ->
  target_id:string ->
  string ->
  unit
