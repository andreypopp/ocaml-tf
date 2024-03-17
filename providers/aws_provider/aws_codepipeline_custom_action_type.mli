(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codepipeline_custom_action_type__configuration_property
type aws_codepipeline_custom_action_type__input_artifact_details
type aws_codepipeline_custom_action_type__output_artifact_details
type aws_codepipeline_custom_action_type__settings
type aws_codepipeline_custom_action_type

val aws_codepipeline_custom_action_type :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  category:string ->
  provider_name:string ->
  version:string ->
  configuration_property:
    aws_codepipeline_custom_action_type__configuration_property list ->
  input_artifact_details:
    aws_codepipeline_custom_action_type__input_artifact_details list ->
  output_artifact_details:
    aws_codepipeline_custom_action_type__output_artifact_details list ->
  settings:aws_codepipeline_custom_action_type__settings list ->
  string ->
  unit
