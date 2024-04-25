(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_metadata_service_configuration

val instance_metadata_service_configuration :
  ?minimum_instance_metadata_service_version:string prop ->
  unit ->
  instance_metadata_service_configuration

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
  ?instance_metadata_service_configuration:
    instance_metadata_service_configuration list ->
  instance_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_sagemaker_notebook_instance

val yojson_of_aws_sagemaker_notebook_instance :
  aws_sagemaker_notebook_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accelerator_types : string list prop;
  additional_code_repositories : string list prop;
  arn : string prop;
  default_code_repository : string prop;
  direct_internet_access : string prop;
  id : string prop;
  instance_type : string prop;
  kms_key_id : string prop;
  lifecycle_config_name : string prop;
  name : string prop;
  network_interface_id : string prop;
  platform_identifier : string prop;
  role_arn : string prop;
  root_access : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  volume_size : float prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?instance_metadata_service_configuration:
    instance_metadata_service_configuration list ->
  instance_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
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
  ?instance_metadata_service_configuration:
    instance_metadata_service_configuration list ->
  instance_type:string prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
