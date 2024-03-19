(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type aws_wafregional_rule_group

val aws_wafregional_rule_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:activated_rule list ->
  unit ->
  aws_wafregional_rule_group

val yojson_of_aws_wafregional_rule_group :
  aws_wafregional_rule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  activated_rule:activated_rule list ->
  string ->
  t
