(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type regex_match_tuple__field_to_match

val regex_match_tuple__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  regex_match_tuple__field_to_match

type regex_match_tuple

val regex_match_tuple :
  regex_pattern_set_id:string prop ->
  text_transformation:string prop ->
  field_to_match:regex_match_tuple__field_to_match list ->
  unit ->
  regex_match_tuple

type aws_wafregional_regex_match_set

val aws_wafregional_regex_match_set :
  ?id:string prop ->
  name:string prop ->
  regex_match_tuple:regex_match_tuple list ->
  unit ->
  aws_wafregional_regex_match_set

val yojson_of_aws_wafregional_regex_match_set :
  aws_wafregional_regex_match_set -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  regex_match_tuple:regex_match_tuple list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  regex_match_tuple:regex_match_tuple list ->
  string ->
  t Tf_core.resource
