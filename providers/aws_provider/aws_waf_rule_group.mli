(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_rule_group__activated_rule__action
type aws_waf_rule_group__activated_rule
type aws_waf_rule_group

val aws_waf_rule_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  metric_name:string ->
  name:string ->
  activated_rule:aws_waf_rule_group__activated_rule list ->
  string ->
  unit
