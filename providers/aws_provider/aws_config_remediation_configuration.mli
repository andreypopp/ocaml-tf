(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_remediation_configuration__execution_controls__ssm_controls

type aws_config_remediation_configuration__execution_controls
type aws_config_remediation_configuration__parameter
type aws_config_remediation_configuration

val aws_config_remediation_configuration :
  ?automatic:bool ->
  ?maximum_automatic_attempts:float ->
  ?resource_type:string ->
  ?retry_attempt_seconds:float ->
  ?target_version:string ->
  config_rule_name:string ->
  target_id:string ->
  target_type:string ->
  execution_controls:
    aws_config_remediation_configuration__execution_controls list ->
  parameter:aws_config_remediation_configuration__parameter list ->
  string ->
  unit
