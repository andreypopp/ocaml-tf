(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_safety_rule__rule_config
type aws_route53recoverycontrolconfig_safety_rule

val aws_route53recoverycontrolconfig_safety_rule :
  ?asserted_controls:string list ->
  ?gating_controls:string list ->
  ?target_controls:string list ->
  control_panel_arn:string ->
  name:string ->
  wait_period_ms:float ->
  rule_config:
    aws_route53recoverycontrolconfig_safety_rule__rule_config list ->
  string ->
  unit
