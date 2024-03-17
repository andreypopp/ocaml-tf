(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_rate_based_rule__predicates
type aws_waf_rate_based_rule

val aws_waf_rate_based_rule :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  metric_name:string ->
  name:string ->
  rate_key:string ->
  rate_limit:float ->
  predicates:aws_waf_rate_based_rule__predicates list ->
  string ->
  unit
