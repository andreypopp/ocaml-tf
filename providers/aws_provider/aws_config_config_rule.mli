(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_config_rule__evaluation_mode
type aws_config_config_rule__scope
type aws_config_config_rule__source__custom_policy_details
type aws_config_config_rule__source__source_detail
type aws_config_config_rule__source
type aws_config_config_rule

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  rule_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_config_config_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?input_parameters:string prop ->
  ?maximum_execution_frequency:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  evaluation_mode:aws_config_config_rule__evaluation_mode list ->
  scope:aws_config_config_rule__scope list ->
  source:aws_config_config_rule__source list ->
  string ->
  t
