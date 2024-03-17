(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_regex_pattern_set__regular_expression

type aws_wafv2_regex_pattern_set

val aws_wafv2_regex_pattern_set :
    ?description:string prop ->
    ?id:string prop ->
    ?tags:(string * string prop) list ->
    ?tags_all:(string * string prop) list ->
    name:string prop ->
    scope:string prop ->
    regular_expression:aws_wafv2_regex_pattern_set__regular_expression list ->
    string ->
    unit

