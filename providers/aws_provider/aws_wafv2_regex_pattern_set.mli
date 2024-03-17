(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_regex_pattern_set__regular_expression

type aws_wafv2_regex_pattern_set

val aws_wafv2_regex_pattern_set :
    ?description:string ->
    ?tags:(string * string) list ->
    name:string ->
    scope:string ->
    regular_expression:aws_wafv2_regex_pattern_set__regular_expression list ->
    string ->
    unit

