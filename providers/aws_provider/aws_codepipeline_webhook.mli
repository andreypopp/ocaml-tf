(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codepipeline_webhook__authentication_configuration
type aws_codepipeline_webhook__filter
type aws_codepipeline_webhook

val aws_codepipeline_webhook :
  ?tags:(string * string) list ->
  authentication:string ->
  name:string ->
  target_action:string ->
  target_pipeline:string ->
  authentication_configuration:
    aws_codepipeline_webhook__authentication_configuration list ->
  filter:aws_codepipeline_webhook__filter list ->
  string ->
  unit
