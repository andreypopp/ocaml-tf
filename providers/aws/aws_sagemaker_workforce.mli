(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cognito_config

val cognito_config :
  client_id:string prop ->
  user_pool:string prop ->
  unit ->
  cognito_config

type oidc_config

val oidc_config :
  authorization_endpoint:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  issuer:string prop ->
  jwks_uri:string prop ->
  logout_endpoint:string prop ->
  token_endpoint:string prop ->
  user_info_endpoint:string prop ->
  unit ->
  oidc_config

type source_ip_config

val source_ip_config :
  cidrs:string prop list -> unit -> source_ip_config

type workforce_vpc_config

val workforce_vpc_config :
  ?security_group_ids:string prop list ->
  ?subnets:string prop list ->
  ?vpc_id:string prop ->
  unit ->
  workforce_vpc_config

type aws_sagemaker_workforce

val aws_sagemaker_workforce :
  ?id:string prop ->
  ?cognito_config:cognito_config list ->
  ?oidc_config:oidc_config list ->
  ?source_ip_config:source_ip_config list ->
  ?workforce_vpc_config:workforce_vpc_config list ->
  workforce_name:string prop ->
  unit ->
  aws_sagemaker_workforce

val yojson_of_aws_sagemaker_workforce :
  aws_sagemaker_workforce -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  subdomain : string prop;
  workforce_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?cognito_config:cognito_config list ->
  ?oidc_config:oidc_config list ->
  ?source_ip_config:source_ip_config list ->
  ?workforce_vpc_config:workforce_vpc_config list ->
  workforce_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?cognito_config:cognito_config list ->
  ?oidc_config:oidc_config list ->
  ?source_ip_config:source_ip_config list ->
  ?workforce_vpc_config:workforce_vpc_config list ->
  workforce_name:string prop ->
  string ->
  t Tf_core.resource
