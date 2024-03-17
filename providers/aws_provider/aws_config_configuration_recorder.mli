(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_configuration_recorder__recording_group__exclusion_by_resource_types

type aws_config_configuration_recorder__recording_group__recording_strategy

type aws_config_configuration_recorder__recording_group

type aws_config_configuration_recorder__recording_mode__recording_mode_override

type aws_config_configuration_recorder__recording_mode
type aws_config_configuration_recorder

val aws_config_configuration_recorder :
  ?id:string prop ->
  ?name:string prop ->
  role_arn:string prop ->
  recording_group:
    aws_config_configuration_recorder__recording_group list ->
  recording_mode:
    aws_config_configuration_recorder__recording_mode list ->
  string ->
  unit
