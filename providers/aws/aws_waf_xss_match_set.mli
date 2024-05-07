(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type xss_match_tuples__field_to_match

val xss_match_tuples__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  xss_match_tuples__field_to_match

type xss_match_tuples

val xss_match_tuples :
  text_transformation:string prop ->
  field_to_match:xss_match_tuples__field_to_match list ->
  unit ->
  xss_match_tuples

type aws_waf_xss_match_set

val aws_waf_xss_match_set :
  ?id:string prop ->
  name:string prop ->
  xss_match_tuples:xss_match_tuples list ->
  unit ->
  aws_waf_xss_match_set

val yojson_of_aws_waf_xss_match_set : aws_waf_xss_match_set -> json

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
  xss_match_tuples:xss_match_tuples list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  xss_match_tuples:xss_match_tuples list ->
  string ->
  t Tf_core.resource
