(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type activated_rule__action

val activated_rule__action :
  type_:string prop -> unit -> activated_rule__action

type activated_rule

val activated_rule :
  ?type_:string prop ->
  priority:float prop ->
  rule_id:string prop ->
  action:activated_rule__action list ->
  unit ->
  activated_rule

type aws_waf_rule_group

val aws_waf_rule_group :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:activated_rule list ->
  unit ->
  aws_waf_rule_group

val yojson_of_aws_waf_rule_group : aws_waf_rule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:activated_rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:activated_rule list ->
  string ->
  t Tf_core.resource
