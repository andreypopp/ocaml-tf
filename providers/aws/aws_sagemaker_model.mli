(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_model__container__image_config__repository_auth_config

type aws_sagemaker_model__container__image_config
type aws_sagemaker_model__container__model_data_source__s3_data_source
type aws_sagemaker_model__container__model_data_source
type aws_sagemaker_model__container
type aws_sagemaker_model__inference_execution_config

type aws_sagemaker_model__primary_container__image_config__repository_auth_config

type aws_sagemaker_model__primary_container__image_config

type aws_sagemaker_model__primary_container__model_data_source__s3_data_source

type aws_sagemaker_model__primary_container__model_data_source
type aws_sagemaker_model__primary_container
type aws_sagemaker_model__vpc_config
type aws_sagemaker_model

type t = private {
  arn : string prop;
  enable_network_isolation : bool prop;
  execution_role_arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sagemaker_model :
  ?enable_network_isolation:bool prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  execution_role_arn:string prop ->
  container:aws_sagemaker_model__container list ->
  inference_execution_config:
    aws_sagemaker_model__inference_execution_config list ->
  primary_container:aws_sagemaker_model__primary_container list ->
  vpc_config:aws_sagemaker_model__vpc_config list ->
  string ->
  t
