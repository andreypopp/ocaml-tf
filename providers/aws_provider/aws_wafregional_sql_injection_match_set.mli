(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_sql_injection_match_set__sql_injection_match_tuple__field_to_match

type aws_wafregional_sql_injection_match_set__sql_injection_match_tuple

type aws_wafregional_sql_injection_match_set

val aws_wafregional_sql_injection_match_set :
  ?id:string ->
  name:string ->
  sql_injection_match_tuple:
    aws_wafregional_sql_injection_match_set__sql_injection_match_tuple
    list ->
  string ->
  unit
