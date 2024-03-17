(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_xss_match_set__xss_match_tuples__field_to_match
type aws_waf_xss_match_set__xss_match_tuples
type aws_waf_xss_match_set

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val aws_waf_xss_match_set :
  ?id:string prop ->
  name:string prop ->
  xss_match_tuples:aws_waf_xss_match_set__xss_match_tuples list ->
  string ->
  t
