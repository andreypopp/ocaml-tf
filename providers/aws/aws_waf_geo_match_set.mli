(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type geo_match_constraint

val geo_match_constraint :
  type_:string prop ->
  value:string prop ->
  unit ->
  geo_match_constraint

type aws_waf_geo_match_set

val aws_waf_geo_match_set :
  ?id:string prop ->
  name:string prop ->
  geo_match_constraint:geo_match_constraint list ->
  unit ->
  aws_waf_geo_match_set

val yojson_of_aws_waf_geo_match_set : aws_waf_geo_match_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  geo_match_constraint:geo_match_constraint list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  geo_match_constraint:geo_match_constraint list ->
  string ->
  t Tf_core.resource
