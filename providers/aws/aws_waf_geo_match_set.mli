(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_geo_match_set__geo_match_constraint
type aws_waf_geo_match_set

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val aws_waf_geo_match_set :
  ?id:string prop ->
  name:string prop ->
  geo_match_constraint:
    aws_waf_geo_match_set__geo_match_constraint list ->
  string ->
  t
