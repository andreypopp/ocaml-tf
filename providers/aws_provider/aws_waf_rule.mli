(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_rule__predicates
type aws_waf_rule

val aws_waf_rule :
  ?tags:(string * string) list ->
  metric_name:string ->
  name:string ->
  predicates:aws_waf_rule__predicates list ->
  string ->
  unit
