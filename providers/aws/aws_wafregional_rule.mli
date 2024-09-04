(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type predicate

val predicate :
  data_id:string prop ->
  negated:bool prop ->
  type_:string prop ->
  unit ->
  predicate

type aws_wafregional_rule

val aws_wafregional_rule :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  predicate:predicate list ->
  unit ->
  aws_wafregional_rule

val yojson_of_aws_wafregional_rule : aws_wafregional_rule -> json

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
  predicate:predicate list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  predicate:predicate list ->
  string ->
  t Tf_core.resource
