(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__inherited_value

val rule__inherited_value :
  ?dimension_key:string prop ->
  ?dimension_name:string prop ->
  unit ->
  rule__inherited_value

type rule__rule__and__and__cost_category

val rule__rule__and__and__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__and__cost_category

type rule__rule__and__and__dimension

val rule__rule__and__and__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__and__dimension

type rule__rule__and__and__tags

val rule__rule__and__and__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__and__tags

type rule__rule__and__and

val rule__rule__and__and :
  ?cost_category:rule__rule__and__and__cost_category list ->
  ?dimension:rule__rule__and__and__dimension list ->
  ?tags:rule__rule__and__and__tags list ->
  unit ->
  rule__rule__and__and

type rule__rule__and__cost_category

val rule__rule__and__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__cost_category

type rule__rule__and__dimension

val rule__rule__and__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__dimension

type rule__rule__and__not__cost_category

val rule__rule__and__not__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__not__cost_category

type rule__rule__and__not__dimension

val rule__rule__and__not__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__not__dimension

type rule__rule__and__not__tags

val rule__rule__and__not__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__not__tags

type rule__rule__and__not

val rule__rule__and__not :
  ?cost_category:rule__rule__and__not__cost_category list ->
  ?dimension:rule__rule__and__not__dimension list ->
  ?tags:rule__rule__and__not__tags list ->
  unit ->
  rule__rule__and__not

type rule__rule__and__or__cost_category

val rule__rule__and__or__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__or__cost_category

type rule__rule__and__or__dimension

val rule__rule__and__or__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__or__dimension

type rule__rule__and__or__tags

val rule__rule__and__or__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__or__tags

type rule__rule__and__or

val rule__rule__and__or :
  ?cost_category:rule__rule__and__or__cost_category list ->
  ?dimension:rule__rule__and__or__dimension list ->
  ?tags:rule__rule__and__or__tags list ->
  unit ->
  rule__rule__and__or

type rule__rule__and__tags

val rule__rule__and__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__and__tags

type rule__rule__and

val rule__rule__and :
  ?cost_category:rule__rule__and__cost_category list ->
  ?dimension:rule__rule__and__dimension list ->
  ?not:rule__rule__and__not list ->
  ?tags:rule__rule__and__tags list ->
  and_:rule__rule__and__and list ->
  or_:rule__rule__and__or list ->
  unit ->
  rule__rule__and

type rule__rule__cost_category

val rule__rule__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__cost_category

type rule__rule__dimension

val rule__rule__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__dimension

type rule__rule__not__and__cost_category

val rule__rule__not__and__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__and__cost_category

type rule__rule__not__and__dimension

val rule__rule__not__and__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__and__dimension

type rule__rule__not__and__tags

val rule__rule__not__and__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__and__tags

type rule__rule__not__and

val rule__rule__not__and :
  ?cost_category:rule__rule__not__and__cost_category list ->
  ?dimension:rule__rule__not__and__dimension list ->
  ?tags:rule__rule__not__and__tags list ->
  unit ->
  rule__rule__not__and

type rule__rule__not__cost_category

val rule__rule__not__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__cost_category

type rule__rule__not__dimension

val rule__rule__not__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__dimension

type rule__rule__not__not__cost_category

val rule__rule__not__not__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__not__cost_category

type rule__rule__not__not__dimension

val rule__rule__not__not__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__not__dimension

type rule__rule__not__not__tags

val rule__rule__not__not__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__not__tags

type rule__rule__not__not

val rule__rule__not__not :
  ?cost_category:rule__rule__not__not__cost_category list ->
  ?dimension:rule__rule__not__not__dimension list ->
  ?tags:rule__rule__not__not__tags list ->
  unit ->
  rule__rule__not__not

type rule__rule__not__or__cost_category

val rule__rule__not__or__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__or__cost_category

type rule__rule__not__or__dimension

val rule__rule__not__or__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__or__dimension

type rule__rule__not__or__tags

val rule__rule__not__or__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__or__tags

type rule__rule__not__or

val rule__rule__not__or :
  ?cost_category:rule__rule__not__or__cost_category list ->
  ?dimension:rule__rule__not__or__dimension list ->
  ?tags:rule__rule__not__or__tags list ->
  unit ->
  rule__rule__not__or

type rule__rule__not__tags

val rule__rule__not__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__not__tags

type rule__rule__not

val rule__rule__not :
  ?cost_category:rule__rule__not__cost_category list ->
  ?dimension:rule__rule__not__dimension list ->
  ?not:rule__rule__not__not list ->
  ?tags:rule__rule__not__tags list ->
  and_:rule__rule__not__and list ->
  or_:rule__rule__not__or list ->
  unit ->
  rule__rule__not

type rule__rule__or__and__cost_category

val rule__rule__or__and__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__and__cost_category

type rule__rule__or__and__dimension

val rule__rule__or__and__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__and__dimension

type rule__rule__or__and__tags

val rule__rule__or__and__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__and__tags

type rule__rule__or__and

val rule__rule__or__and :
  ?cost_category:rule__rule__or__and__cost_category list ->
  ?dimension:rule__rule__or__and__dimension list ->
  ?tags:rule__rule__or__and__tags list ->
  unit ->
  rule__rule__or__and

type rule__rule__or__cost_category

val rule__rule__or__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__cost_category

type rule__rule__or__dimension

val rule__rule__or__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__dimension

type rule__rule__or__not__cost_category

val rule__rule__or__not__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__not__cost_category

type rule__rule__or__not__dimension

val rule__rule__or__not__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__not__dimension

type rule__rule__or__not__tags

val rule__rule__or__not__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__not__tags

type rule__rule__or__not

val rule__rule__or__not :
  ?cost_category:rule__rule__or__not__cost_category list ->
  ?dimension:rule__rule__or__not__dimension list ->
  ?tags:rule__rule__or__not__tags list ->
  unit ->
  rule__rule__or__not

type rule__rule__or__or__cost_category

val rule__rule__or__or__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__or__cost_category

type rule__rule__or__or__dimension

val rule__rule__or__or__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__or__dimension

type rule__rule__or__or__tags

val rule__rule__or__or__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__or__tags

type rule__rule__or__or

val rule__rule__or__or :
  ?cost_category:rule__rule__or__or__cost_category list ->
  ?dimension:rule__rule__or__or__dimension list ->
  ?tags:rule__rule__or__or__tags list ->
  unit ->
  rule__rule__or__or

type rule__rule__or__tags

val rule__rule__or__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__or__tags

type rule__rule__or

val rule__rule__or :
  ?cost_category:rule__rule__or__cost_category list ->
  ?dimension:rule__rule__or__dimension list ->
  ?not:rule__rule__or__not list ->
  ?tags:rule__rule__or__tags list ->
  and_:rule__rule__or__and list ->
  or_:rule__rule__or__or list ->
  unit ->
  rule__rule__or

type rule__rule__tags

val rule__rule__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  rule__rule__tags

type rule__rule

val rule__rule :
  ?cost_category:rule__rule__cost_category list ->
  ?dimension:rule__rule__dimension list ->
  ?not:rule__rule__not list ->
  ?tags:rule__rule__tags list ->
  and_:rule__rule__and list ->
  or_:rule__rule__or list ->
  unit ->
  rule__rule

type rule

val rule :
  ?type_:string prop ->
  ?value:string prop ->
  ?inherited_value:rule__inherited_value list ->
  ?rule:rule__rule list ->
  unit ->
  rule

type split_charge_rule__parameter

val split_charge_rule__parameter :
  ?type_:string prop ->
  ?values:string prop list ->
  unit ->
  split_charge_rule__parameter

type split_charge_rule

val split_charge_rule :
  method_:string prop ->
  source:string prop ->
  targets:string prop list ->
  parameter:split_charge_rule__parameter list ->
  unit ->
  split_charge_rule

type aws_ce_cost_category

val aws_ce_cost_category :
  ?default_value:string prop ->
  ?effective_start:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  rule_version:string prop ->
  rule:rule list ->
  split_charge_rule:split_charge_rule list ->
  unit ->
  aws_ce_cost_category

val yojson_of_aws_ce_cost_category : aws_ce_cost_category -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_value : string prop;
  effective_end : string prop;
  effective_start : string prop;
  id : string prop;
  name : string prop;
  rule_version : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_value:string prop ->
  ?effective_start:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  rule_version:string prop ->
  rule:rule list ->
  split_charge_rule:split_charge_rule list ->
  string ->
  t

val make :
  ?default_value:string prop ->
  ?effective_start:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  rule_version:string prop ->
  rule:rule list ->
  split_charge_rule:split_charge_rule list ->
  string ->
  t Tf_core.resource
