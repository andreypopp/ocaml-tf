(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_rule_group__activated_rule__action
type aws_waf_rule_group__activated_rule
type aws_waf_rule_group

val aws_waf_rule_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:aws_waf_rule_group__activated_rule list ->
  string ->
  unit
