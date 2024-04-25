(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type execution_controls__ssm_controls

val execution_controls__ssm_controls :
  ?concurrent_execution_rate_percentage:float prop ->
  ?error_percentage:float prop ->
  unit ->
  execution_controls__ssm_controls

type execution_controls

val execution_controls :
  ?ssm_controls:execution_controls__ssm_controls list ->
  unit ->
  execution_controls

type parameter

val parameter :
  ?resource_value:string prop ->
  ?static_value:string prop ->
  ?static_values:string prop list ->
  name:string prop ->
  unit ->
  parameter

type aws_config_remediation_configuration

val aws_config_remediation_configuration :
  ?automatic:bool prop ->
  ?id:string prop ->
  ?maximum_automatic_attempts:float prop ->
  ?resource_type:string prop ->
  ?retry_attempt_seconds:float prop ->
  ?target_version:string prop ->
  ?execution_controls:execution_controls list ->
  ?parameter:parameter list ->
  config_rule_name:string prop ->
  target_id:string prop ->
  target_type:string prop ->
  unit ->
  aws_config_remediation_configuration

val yojson_of_aws_config_remediation_configuration :
  aws_config_remediation_configuration -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?automatic:bool prop ->
  ?id:string prop ->
  ?maximum_automatic_attempts:float prop ->
  ?resource_type:string prop ->
  ?retry_attempt_seconds:float prop ->
  ?target_version:string prop ->
  ?execution_controls:execution_controls list ->
  ?parameter:parameter list ->
  config_rule_name:string prop ->
  target_id:string prop ->
  target_type:string prop ->
  string ->
  t

val make :
  ?automatic:bool prop ->
  ?id:string prop ->
  ?maximum_automatic_attempts:float prop ->
  ?resource_type:string prop ->
  ?retry_attempt_seconds:float prop ->
  ?target_version:string prop ->
  ?execution_controls:execution_controls list ->
  ?parameter:parameter list ->
  config_rule_name:string prop ->
  target_id:string prop ->
  target_type:string prop ->
  string ->
  t Tf_core.resource
