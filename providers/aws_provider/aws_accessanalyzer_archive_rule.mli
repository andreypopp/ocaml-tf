(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_accessanalyzer_archive_rule__filter
type aws_accessanalyzer_archive_rule

val aws_accessanalyzer_archive_rule :
  ?id:string prop ->
  analyzer_name:string prop ->
  rule_name:string prop ->
  filter:aws_accessanalyzer_archive_rule__filter list ->
  string ->
  unit
