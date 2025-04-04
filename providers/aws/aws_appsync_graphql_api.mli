(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_authentication_provider__lambda_authorizer_config

val additional_authentication_provider__lambda_authorizer_config :
  ?authorizer_result_ttl_in_seconds:float prop ->
  ?identity_validation_expression:string prop ->
  authorizer_uri:string prop ->
  unit ->
  additional_authentication_provider__lambda_authorizer_config

type additional_authentication_provider__openid_connect_config

val additional_authentication_provider__openid_connect_config :
  ?auth_ttl:float prop ->
  ?client_id:string prop ->
  ?iat_ttl:float prop ->
  issuer:string prop ->
  unit ->
  additional_authentication_provider__openid_connect_config

type additional_authentication_provider__user_pool_config

val additional_authentication_provider__user_pool_config :
  ?app_id_client_regex:string prop ->
  ?aws_region:string prop ->
  user_pool_id:string prop ->
  unit ->
  additional_authentication_provider__user_pool_config

type additional_authentication_provider

val additional_authentication_provider :
  ?lambda_authorizer_config:
    additional_authentication_provider__lambda_authorizer_config list ->
  ?openid_connect_config:
    additional_authentication_provider__openid_connect_config list ->
  ?user_pool_config:
    additional_authentication_provider__user_pool_config list ->
  authentication_type:string prop ->
  unit ->
  additional_authentication_provider

type lambda_authorizer_config

val lambda_authorizer_config :
  ?authorizer_result_ttl_in_seconds:float prop ->
  ?identity_validation_expression:string prop ->
  authorizer_uri:string prop ->
  unit ->
  lambda_authorizer_config

type log_config

val log_config :
  ?exclude_verbose_content:bool prop ->
  cloudwatch_logs_role_arn:string prop ->
  field_log_level:string prop ->
  unit ->
  log_config

type openid_connect_config

val openid_connect_config :
  ?auth_ttl:float prop ->
  ?client_id:string prop ->
  ?iat_ttl:float prop ->
  issuer:string prop ->
  unit ->
  openid_connect_config

type user_pool_config

val user_pool_config :
  ?app_id_client_regex:string prop ->
  ?aws_region:string prop ->
  default_action:string prop ->
  user_pool_id:string prop ->
  unit ->
  user_pool_config

type aws_appsync_graphql_api

val aws_appsync_graphql_api :
  ?id:string prop ->
  ?introspection_config:string prop ->
  ?query_depth_limit:float prop ->
  ?resolver_count_limit:float prop ->
  ?schema:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?visibility:string prop ->
  ?xray_enabled:bool prop ->
  ?additional_authentication_provider:
    additional_authentication_provider list ->
  ?lambda_authorizer_config:lambda_authorizer_config list ->
  ?log_config:log_config list ->
  ?openid_connect_config:openid_connect_config list ->
  ?user_pool_config:user_pool_config list ->
  authentication_type:string prop ->
  name:string prop ->
  unit ->
  aws_appsync_graphql_api

val yojson_of_aws_appsync_graphql_api :
  aws_appsync_graphql_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authentication_type : string prop;
  id : string prop;
  introspection_config : string prop;
  name : string prop;
  query_depth_limit : float prop;
  resolver_count_limit : float prop;
  schema : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uris : string Tf_core.assoc prop;
  visibility : string prop;
  xray_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?introspection_config:string prop ->
  ?query_depth_limit:float prop ->
  ?resolver_count_limit:float prop ->
  ?schema:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?visibility:string prop ->
  ?xray_enabled:bool prop ->
  ?additional_authentication_provider:
    additional_authentication_provider list ->
  ?lambda_authorizer_config:lambda_authorizer_config list ->
  ?log_config:log_config list ->
  ?openid_connect_config:openid_connect_config list ->
  ?user_pool_config:user_pool_config list ->
  authentication_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?introspection_config:string prop ->
  ?query_depth_limit:float prop ->
  ?resolver_count_limit:float prop ->
  ?schema:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?visibility:string prop ->
  ?xray_enabled:bool prop ->
  ?additional_authentication_provider:
    additional_authentication_provider list ->
  ?lambda_authorizer_config:lambda_authorizer_config list ->
  ?log_config:log_config list ->
  ?openid_connect_config:openid_connect_config list ->
  ?user_pool_config:user_pool_config list ->
  authentication_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
