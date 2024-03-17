(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_remediation_configuration__execution_controls__ssm_controls

type aws_config_remediation_configuration__execution_controls
type aws_config_remediation_configuration__parameter
type aws_config_remediation_configuration

type t = private {
  arn : string prop;
  automatic : bool prop;
  config_rule_name : string prop;
  id : string prop;
  maximum_automatic_attempts : float prop;
  resource_type : string prop;
  retry_attempt_seconds : float prop;
  target_id : string prop;
  target_type : string prop;
  target_version : string prop;
}

val aws_config_remediation_configuration :
  ?automatic:bool prop ->
  ?id:string prop ->
  ?maximum_automatic_attempts:float prop ->
  ?resource_type:string prop ->
  ?retry_attempt_seconds:float prop ->
  ?target_version:string prop ->
  config_rule_name:string prop ->
  target_id:string prop ->
  target_type:string prop ->
  execution_controls:
    aws_config_remediation_configuration__execution_controls list ->
  parameter:aws_config_remediation_configuration__parameter list ->
  string ->
  t
