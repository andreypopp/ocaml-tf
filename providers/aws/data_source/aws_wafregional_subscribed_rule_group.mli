(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafregional_subscribed_rule_group

val aws_wafregional_subscribed_rule_group :
  ?id:string prop ->
  ?metric_name:string prop ->
  ?name:string prop ->
  unit ->
  aws_wafregional_subscribed_rule_group

val yojson_of_aws_wafregional_subscribed_rule_group :
  aws_wafregional_subscribed_rule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  metric_name : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metric_name:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metric_name:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
