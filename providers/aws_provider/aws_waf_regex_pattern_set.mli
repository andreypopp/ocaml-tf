(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_regex_pattern_set

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  regex_pattern_strings : string list prop;
}

val aws_waf_regex_pattern_set :
  ?id:string prop ->
  ?regex_pattern_strings:string prop list ->
  name:string prop ->
  string ->
  t
