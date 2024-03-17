(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_graphql_api__additional_authentication_provider__lambda_authorizer_config

type aws_appsync_graphql_api__additional_authentication_provider__openid_connect_config

type aws_appsync_graphql_api__additional_authentication_provider__user_pool_config

type aws_appsync_graphql_api__additional_authentication_provider
type aws_appsync_graphql_api__lambda_authorizer_config
type aws_appsync_graphql_api__log_config
type aws_appsync_graphql_api__openid_connect_config
type aws_appsync_graphql_api__user_pool_config
type aws_appsync_graphql_api

val aws_appsync_graphql_api :
  ?id:string ->
  ?introspection_config:string ->
  ?query_depth_limit:float ->
  ?resolver_count_limit:float ->
  ?schema:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?visibility:string ->
  ?xray_enabled:bool ->
  authentication_type:string ->
  name:string ->
  additional_authentication_provider:
    aws_appsync_graphql_api__additional_authentication_provider list ->
  lambda_authorizer_config:
    aws_appsync_graphql_api__lambda_authorizer_config list ->
  log_config:aws_appsync_graphql_api__log_config list ->
  openid_connect_config:
    aws_appsync_graphql_api__openid_connect_config list ->
  user_pool_config:aws_appsync_graphql_api__user_pool_config list ->
  string ->
  unit
