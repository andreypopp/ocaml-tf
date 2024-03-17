(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_regex_pattern_set__regular_expression
type aws_wafv2_regex_pattern_set

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  lock_token : string prop;
  name : string prop;
  scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_wafv2_regex_pattern_set :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  scope:string prop ->
  regular_expression:
    aws_wafv2_regex_pattern_set__regular_expression list ->
  string ->
  t
