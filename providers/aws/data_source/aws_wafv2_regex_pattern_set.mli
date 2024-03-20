(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type regular_expression = {
  regex_string : string prop;  (** regex_string *)
}

type aws_wafv2_regex_pattern_set

val aws_wafv2_regex_pattern_set :
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  unit ->
  aws_wafv2_regex_pattern_set

val yojson_of_aws_wafv2_regex_pattern_set :
  aws_wafv2_regex_pattern_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  regular_expression : regular_expression list prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
