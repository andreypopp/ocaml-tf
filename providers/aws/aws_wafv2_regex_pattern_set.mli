

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type regular_expression

val regular_expression :
    regex_string:string prop ->
    unit ->
    regular_expression

type aws_wafv2_regex_pattern_set

val aws_wafv2_regex_pattern_set :
    ?description:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    name:string prop ->
    scope:string prop ->
    regular_expression:regular_expression list ->
    unit ->
    aws_wafv2_regex_pattern_set

val yojson_of_aws_wafv2_regex_pattern_set : aws_wafv2_regex_pattern_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  arn: string prop;
  description: string prop;
  id: string prop;
  lock_token: string prop;
  name: string prop;
  scope: string prop;
  tags: string Tf_core.assoc prop;
  tags_all: string Tf_core.assoc prop;
}

val register :
    ?tf_module:tf_module ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    name:string prop ->
    scope:string prop ->
    regular_expression:regular_expression list ->
    string ->
    t

val make :
    ?description:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    name:string prop ->
    scope:string prop ->
    regular_expression:regular_expression list ->
    string ->
    t Tf_core.resource

