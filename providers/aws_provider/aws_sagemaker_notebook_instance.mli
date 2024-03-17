(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_notebook_instance__instance_metadata_service_configuration

type aws_sagemaker_notebook_instance

val aws_sagemaker_notebook_instance :
  ?accelerator_types:string list ->
  ?additional_code_repositories:string list ->
  ?default_code_repository:string ->
  ?direct_internet_access:string ->
  ?kms_key_id:string ->
  ?lifecycle_config_name:string ->
  ?root_access:string ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?volume_size:float ->
  instance_type:string ->
  name:string ->
  role_arn:string ->
  instance_metadata_service_configuration:
    aws_sagemaker_notebook_instance__instance_metadata_service_configuration
    list ->
  string ->
  unit
