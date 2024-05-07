(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type xss_match_tuple__field_to_match

val xss_match_tuple__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  xss_match_tuple__field_to_match

type xss_match_tuple

val xss_match_tuple :
  text_transformation:string prop ->
  field_to_match:xss_match_tuple__field_to_match list ->
  unit ->
  xss_match_tuple

type aws_wafregional_xss_match_set

val aws_wafregional_xss_match_set :
  ?id:string prop ->
  name:string prop ->
  xss_match_tuple:xss_match_tuple list ->
  unit ->
  aws_wafregional_xss_match_set

val yojson_of_aws_wafregional_xss_match_set :
  aws_wafregional_xss_match_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  xss_match_tuple:xss_match_tuple list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  xss_match_tuple:xss_match_tuple list ->
  string ->
  t Tf_core.resource
