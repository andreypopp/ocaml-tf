(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type byte_match_tuples__field_to_match

val byte_match_tuples__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  byte_match_tuples__field_to_match

type byte_match_tuples

val byte_match_tuples :
  ?target_string:string prop ->
  positional_constraint:string prop ->
  text_transformation:string prop ->
  field_to_match:byte_match_tuples__field_to_match list ->
  unit ->
  byte_match_tuples

type aws_wafregional_byte_match_set

val aws_wafregional_byte_match_set :
  ?id:string prop ->
  name:string prop ->
  byte_match_tuples:byte_match_tuples list ->
  unit ->
  aws_wafregional_byte_match_set

val yojson_of_aws_wafregional_byte_match_set :
  aws_wafregional_byte_match_set -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  byte_match_tuples:byte_match_tuples list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  byte_match_tuples:byte_match_tuples list ->
  string ->
  t Tf_core.resource
