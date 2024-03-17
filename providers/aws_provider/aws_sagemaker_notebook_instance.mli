(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_notebook_instance__instance_metadata_service_configuration

type aws_sagemaker_notebook_instance

val aws_sagemaker_notebook_instance :
  ?accelerator_types:string prop list ->
  ?additional_code_repositories:string prop list ->
  ?default_code_repository:string prop ->
  ?direct_internet_access:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?lifecycle_config_name:string prop ->
  ?platform_identifier:string prop ->
  ?root_access:string prop ->
  ?security_groups:string prop list ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_size:float prop ->
  instance_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  instance_metadata_service_configuration:
    aws_sagemaker_notebook_instance__instance_metadata_service_configuration
    list ->
  string ->
  unit
