(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_rule_group__activated_rule__action
type aws_wafregional_rule_group__activated_rule
type aws_wafregional_rule_group

type t = private {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_wafregional_rule_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:aws_wafregional_rule_group__activated_rule list ->
  string ->
  t
