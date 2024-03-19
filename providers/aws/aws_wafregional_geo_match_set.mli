(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type geo_match_constraint

val geo_match_constraint :
  type_:string prop ->
  value:string prop ->
  unit ->
  geo_match_constraint

type aws_wafregional_geo_match_set

val aws_wafregional_geo_match_set :
  ?id:string prop ->
  name:string prop ->
  geo_match_constraint:geo_match_constraint list ->
  unit ->
  aws_wafregional_geo_match_set

val yojson_of_aws_wafregional_geo_match_set :
  aws_wafregional_geo_match_set -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  geo_match_constraint:geo_match_constraint list ->
  string ->
  t
