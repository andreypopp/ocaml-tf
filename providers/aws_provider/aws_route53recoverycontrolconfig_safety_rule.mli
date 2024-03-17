(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53recoverycontrolconfig_safety_rule__rule_config
type aws_route53recoverycontrolconfig_safety_rule

type t = private {
  arn : string prop;
  asserted_controls : string list prop;
  control_panel_arn : string prop;
  gating_controls : string list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  target_controls : string list prop;
  wait_period_ms : float prop;
}

val aws_route53recoverycontrolconfig_safety_rule :
  ?asserted_controls:string prop list ->
  ?gating_controls:string prop list ->
  ?id:string prop ->
  ?target_controls:string prop list ->
  control_panel_arn:string prop ->
  name:string prop ->
  wait_period_ms:float prop ->
  rule_config:
    aws_route53recoverycontrolconfig_safety_rule__rule_config list ->
  string ->
  t
