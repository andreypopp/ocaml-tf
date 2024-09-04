(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type predicates

val predicates :
  data_id:string prop ->
  negated:bool prop ->
  type_:string prop ->
  unit ->
  predicates

type aws_waf_rule

val aws_waf_rule :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  predicates:predicates list ->
  unit ->
  aws_waf_rule

val yojson_of_aws_waf_rule : aws_waf_rule -> json

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
  predicates:predicates list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  metric_name:string prop ->
  name:string prop ->
  predicates:predicates list ->
  string ->
  t Tf_core.resource
