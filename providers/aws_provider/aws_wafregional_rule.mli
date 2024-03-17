(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_rule__predicate
type aws_wafregional_rule

type t = private {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_wafregional_rule :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  predicate:aws_wafregional_rule__predicate list ->
  string ->
  t
