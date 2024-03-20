(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sql_injection_match_tuple__field_to_match

val sql_injection_match_tuple__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  sql_injection_match_tuple__field_to_match

type sql_injection_match_tuple

val sql_injection_match_tuple :
  text_transformation:string prop ->
  field_to_match:sql_injection_match_tuple__field_to_match list ->
  unit ->
  sql_injection_match_tuple

type aws_wafregional_sql_injection_match_set

val aws_wafregional_sql_injection_match_set :
  ?id:string prop ->
  name:string prop ->
  sql_injection_match_tuple:sql_injection_match_tuple list ->
  unit ->
  aws_wafregional_sql_injection_match_set

val yojson_of_aws_wafregional_sql_injection_match_set :
  aws_wafregional_sql_injection_match_set -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  sql_injection_match_tuple:sql_injection_match_tuple list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  sql_injection_match_tuple:sql_injection_match_tuple list ->
  string ->
  t Tf_core.resource
