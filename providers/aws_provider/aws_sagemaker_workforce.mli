(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_workforce__cognito_config
type aws_sagemaker_workforce__oidc_config
type aws_sagemaker_workforce__source_ip_config
type aws_sagemaker_workforce__workforce_vpc_config
type aws_sagemaker_workforce

type t = private {
  arn : string prop;
  id : string prop;
  subdomain : string prop;
  workforce_name : string prop;
}

val aws_sagemaker_workforce :
  ?id:string prop ->
  workforce_name:string prop ->
  cognito_config:aws_sagemaker_workforce__cognito_config list ->
  oidc_config:aws_sagemaker_workforce__oidc_config list ->
  source_ip_config:aws_sagemaker_workforce__source_ip_config list ->
  workforce_vpc_config:
    aws_sagemaker_workforce__workforce_vpc_config list ->
  string ->
  t
