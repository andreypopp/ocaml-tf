(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_accessanalyzer_archive_rule__filter
type aws_accessanalyzer_archive_rule

val aws_accessanalyzer_archive_rule :
  ?id:string ->
  analyzer_name:string ->
  rule_name:string ->
  filter:aws_accessanalyzer_archive_rule__filter list ->
  string ->
  unit
