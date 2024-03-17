(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_geo_match_set__geo_match_constraint
type aws_wafregional_geo_match_set

val aws_wafregional_geo_match_set :
  ?id:string ->
  name:string ->
  geo_match_constraint:
    aws_wafregional_geo_match_set__geo_match_constraint list ->
  string ->
  unit
