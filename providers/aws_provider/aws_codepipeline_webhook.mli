(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codepipeline_webhook__authentication_configuration
type aws_codepipeline_webhook__filter
type aws_codepipeline_webhook

val aws_codepipeline_webhook :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  authentication:string prop ->
  name:string prop ->
  target_action:string prop ->
  target_pipeline:string prop ->
  authentication_configuration:
    aws_codepipeline_webhook__authentication_configuration list ->
  filter:aws_codepipeline_webhook__filter list ->
  string ->
  unit
