(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_accessanalyzer_analyzer__configuration__unused_access
type aws_accessanalyzer_analyzer__configuration
type aws_accessanalyzer_analyzer

type t = private {
  analyzer_name : string prop;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_accessanalyzer_analyzer :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  analyzer_name:string prop ->
  configuration:aws_accessanalyzer_analyzer__configuration list ->
  string ->
  t
