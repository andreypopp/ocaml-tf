(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafregional_regex_pattern_set

val aws_wafregional_regex_pattern_set :
  ?id:string prop ->
  ?regex_pattern_strings:string prop list ->
  name:string prop ->
  unit ->
  aws_wafregional_regex_pattern_set

val yojson_of_aws_wafregional_regex_pattern_set :
  aws_wafregional_regex_pattern_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  regex_pattern_strings : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?regex_pattern_strings:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?regex_pattern_strings:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
