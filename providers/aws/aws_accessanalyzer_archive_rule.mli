(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  ?contains:string prop list ->
  ?eq:string prop list ->
  ?exists:string prop ->
  ?neq:string prop list ->
  criteria:string prop ->
  unit ->
  filter

type aws_accessanalyzer_archive_rule

val aws_accessanalyzer_archive_rule :
  ?id:string prop ->
  analyzer_name:string prop ->
  rule_name:string prop ->
  filter:filter list ->
  unit ->
  aws_accessanalyzer_archive_rule

val yojson_of_aws_accessanalyzer_archive_rule :
  aws_accessanalyzer_archive_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  analyzer_name : string prop;
  id : string prop;
  rule_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  analyzer_name:string prop ->
  rule_name:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  analyzer_name:string prop ->
  rule_name:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
