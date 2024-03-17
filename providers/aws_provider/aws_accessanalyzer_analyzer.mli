(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_accessanalyzer_analyzer__configuration__unused_access
type aws_accessanalyzer_analyzer__configuration
type aws_accessanalyzer_analyzer

val aws_accessanalyzer_analyzer :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  analyzer_name:string prop ->
  configuration:aws_accessanalyzer_analyzer__configuration list ->
  string ->
  unit
