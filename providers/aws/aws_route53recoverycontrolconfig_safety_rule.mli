(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule_config

val rule_config :
  inverted:bool prop ->
  threshold:float prop ->
  type_:string prop ->
  unit ->
  rule_config

type aws_route53recoverycontrolconfig_safety_rule

val aws_route53recoverycontrolconfig_safety_rule :
  ?asserted_controls:string prop list ->
  ?gating_controls:string prop list ->
  ?id:string prop ->
  ?target_controls:string prop list ->
  control_panel_arn:string prop ->
  name:string prop ->
  wait_period_ms:float prop ->
  rule_config:rule_config list ->
  unit ->
  aws_route53recoverycontrolconfig_safety_rule

val yojson_of_aws_route53recoverycontrolconfig_safety_rule :
  aws_route53recoverycontrolconfig_safety_rule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?asserted_controls:string prop list ->
  ?gating_controls:string prop list ->
  ?id:string prop ->
  ?target_controls:string prop list ->
  control_panel_arn:string prop ->
  name:string prop ->
  wait_period_ms:float prop ->
  rule_config:rule_config list ->
  string ->
  t

val make :
  ?asserted_controls:string prop list ->
  ?gating_controls:string prop list ->
  ?id:string prop ->
  ?target_controls:string prop list ->
  control_panel_arn:string prop ->
  name:string prop ->
  wait_period_ms:float prop ->
  rule_config:rule_config list ->
  string ->
  t Tf_core.resource
