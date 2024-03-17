(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_accessanalyzer_analyzer__configuration__unused_access
type aws_accessanalyzer_analyzer__configuration
type aws_accessanalyzer_analyzer

val aws_accessanalyzer_analyzer :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  analyzer_name:string ->
  configuration:aws_accessanalyzer_analyzer__configuration list ->
  string ->
  unit
