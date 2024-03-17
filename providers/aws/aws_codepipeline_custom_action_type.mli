(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codepipeline_custom_action_type__configuration_property
type aws_codepipeline_custom_action_type__input_artifact_details
type aws_codepipeline_custom_action_type__output_artifact_details
type aws_codepipeline_custom_action_type__settings
type aws_codepipeline_custom_action_type

type t = private {
  arn : string prop;
  category : string prop;
  id : string prop;
  owner : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val aws_codepipeline_custom_action_type :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  category:string prop ->
  provider_name:string prop ->
  version:string prop ->
  configuration_property:
    aws_codepipeline_custom_action_type__configuration_property list ->
  input_artifact_details:
    aws_codepipeline_custom_action_type__input_artifact_details list ->
  output_artifact_details:
    aws_codepipeline_custom_action_type__output_artifact_details list ->
  settings:aws_codepipeline_custom_action_type__settings list ->
  string ->
  t
