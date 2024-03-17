(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ce_cost_category__rule__inherited_value
type aws_ce_cost_category__rule__rule__and__cost_category
type aws_ce_cost_category__rule__rule__and__dimension
type aws_ce_cost_category__rule__rule__and__tags
type aws_ce_cost_category__rule__rule__and
type aws_ce_cost_category__rule__rule__cost_category
type aws_ce_cost_category__rule__rule__dimension
type aws_ce_cost_category__rule__rule__not__cost_category
type aws_ce_cost_category__rule__rule__not__dimension
type aws_ce_cost_category__rule__rule__not__tags
type aws_ce_cost_category__rule__rule__not
type aws_ce_cost_category__rule__rule__or__cost_category
type aws_ce_cost_category__rule__rule__or__dimension
type aws_ce_cost_category__rule__rule__or__tags
type aws_ce_cost_category__rule__rule__or
type aws_ce_cost_category__rule__rule__tags
type aws_ce_cost_category__rule__rule
type aws_ce_cost_category__rule
type aws_ce_cost_category__split_charge_rule__parameter
type aws_ce_cost_category__split_charge_rule
type aws_ce_cost_category

type t = private {
  arn : string prop;
  default_value : string prop;
  effective_end : string prop;
  effective_start : string prop;
  id : string prop;
  name : string prop;
  rule_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ce_cost_category :
  ?default_value:string prop ->
  ?effective_start:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  rule_version:string prop ->
  rule:aws_ce_cost_category__rule list ->
  split_charge_rule:aws_ce_cost_category__split_charge_rule list ->
  string ->
  t
