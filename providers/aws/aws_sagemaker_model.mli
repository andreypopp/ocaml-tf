(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type container__image_config__repository_auth_config

val container__image_config__repository_auth_config :
  repository_credentials_provider_arn:string prop ->
  unit ->
  container__image_config__repository_auth_config

type container__image_config

val container__image_config :
  ?repository_auth_config:
    container__image_config__repository_auth_config list ->
  repository_access_mode:string prop ->
  unit ->
  container__image_config

type container__model_data_source__s3_data_source

val container__model_data_source__s3_data_source :
  compression_type:string prop ->
  s3_data_type:string prop ->
  s3_uri:string prop ->
  unit ->
  container__model_data_source__s3_data_source

type container__model_data_source

val container__model_data_source :
  s3_data_source:container__model_data_source__s3_data_source list ->
  unit ->
  container__model_data_source

type container

val container :
  ?container_hostname:string prop ->
  ?environment:(string * string prop) list ->
  ?image:string prop ->
  ?mode:string prop ->
  ?model_data_url:string prop ->
  ?model_package_name:string prop ->
  ?image_config:container__image_config list ->
  ?model_data_source:container__model_data_source list ->
  unit ->
  container

type inference_execution_config

val inference_execution_config :
  mode:string prop -> unit -> inference_execution_config

type primary_container__image_config__repository_auth_config

val primary_container__image_config__repository_auth_config :
  repository_credentials_provider_arn:string prop ->
  unit ->
  primary_container__image_config__repository_auth_config

type primary_container__image_config

val primary_container__image_config :
  ?repository_auth_config:
    primary_container__image_config__repository_auth_config list ->
  repository_access_mode:string prop ->
  unit ->
  primary_container__image_config

type primary_container__model_data_source__s3_data_source

val primary_container__model_data_source__s3_data_source :
  compression_type:string prop ->
  s3_data_type:string prop ->
  s3_uri:string prop ->
  unit ->
  primary_container__model_data_source__s3_data_source

type primary_container__model_data_source

val primary_container__model_data_source :
  s3_data_source:
    primary_container__model_data_source__s3_data_source list ->
  unit ->
  primary_container__model_data_source

type primary_container

val primary_container :
  ?container_hostname:string prop ->
  ?environment:(string * string prop) list ->
  ?image:string prop ->
  ?mode:string prop ->
  ?model_data_url:string prop ->
  ?model_package_name:string prop ->
  ?image_config:primary_container__image_config list ->
  ?model_data_source:primary_container__model_data_source list ->
  unit ->
  primary_container

type vpc_config

val vpc_config :
  security_group_ids:string prop list ->
  subnets:string prop list ->
  unit ->
  vpc_config

type aws_sagemaker_model

val aws_sagemaker_model :
  ?enable_network_isolation:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?container:container list ->
  ?inference_execution_config:inference_execution_config list ->
  ?primary_container:primary_container list ->
  ?vpc_config:vpc_config list ->
  execution_role_arn:string prop ->
  unit ->
  aws_sagemaker_model

val yojson_of_aws_sagemaker_model : aws_sagemaker_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  enable_network_isolation : bool prop;
  execution_role_arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_network_isolation:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?container:container list ->
  ?inference_execution_config:inference_execution_config list ->
  ?primary_container:primary_container list ->
  ?vpc_config:vpc_config list ->
  execution_role_arn:string prop ->
  string ->
  t

val make :
  ?enable_network_isolation:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?container:container list ->
  ?inference_execution_config:inference_execution_config list ->
  ?primary_container:primary_container list ->
  ?vpc_config:vpc_config list ->
  execution_role_arn:string prop ->
  string ->
  t Tf_core.resource
