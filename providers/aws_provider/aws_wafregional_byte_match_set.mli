(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_byte_match_set__byte_match_tuples__field_to_match
type aws_wafregional_byte_match_set__byte_match_tuples
type aws_wafregional_byte_match_set
type t = private { id : string prop; name : string prop }

val aws_wafregional_byte_match_set :
  ?id:string prop ->
  name:string prop ->
  byte_match_tuples:
    aws_wafregional_byte_match_set__byte_match_tuples list ->
  string ->
  t
