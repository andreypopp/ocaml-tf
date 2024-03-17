(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_regex_match_set__regex_match_tuple__field_to_match

type aws_wafregional_regex_match_set__regex_match_tuple
type aws_wafregional_regex_match_set
type t = private { id : string prop; name : string prop }

val aws_wafregional_regex_match_set :
  ?id:string prop ->
  name:string prop ->
  regex_match_tuple:
    aws_wafregional_regex_match_set__regex_match_tuple list ->
  string ->
  t
