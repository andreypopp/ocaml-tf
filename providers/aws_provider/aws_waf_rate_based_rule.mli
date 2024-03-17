(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_rate_based_rule__predicates
type aws_waf_rate_based_rule

type t = private {
  arn : string prop;
  id : string prop;
  metric_name : string prop;
  name : string prop;
  rate_key : string prop;
  rate_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_waf_rate_based_rule :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  metric_name:string prop ->
  name:string prop ->
  rate_key:string prop ->
  rate_limit:float prop ->
  predicates:aws_waf_rate_based_rule__predicates list ->
  string ->
  t
