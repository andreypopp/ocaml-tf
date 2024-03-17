(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_config_rule__evaluation_mode
type aws_config_config_rule__scope
type aws_config_config_rule__source__custom_policy_details
type aws_config_config_rule__source__source_detail
type aws_config_config_rule__source
type aws_config_config_rule

val aws_config_config_rule :
  ?description:string ->
  ?input_parameters:string ->
  ?maximum_execution_frequency:string ->
  ?tags:(string * string) list ->
  name:string ->
  evaluation_mode:aws_config_config_rule__evaluation_mode list ->
  scope:aws_config_config_rule__scope list ->
  source:aws_config_config_rule__source list ->
  string ->
  unit
