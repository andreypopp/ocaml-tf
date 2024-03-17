(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_rule__predicate
type aws_wafregional_rule

val aws_wafregional_rule :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  metric_name:string ->
  name:string ->
  predicate:aws_wafregional_rule__predicate list ->
  string ->
  unit
