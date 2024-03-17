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
  ?id:string prop ->
  ?introspection_config:string prop ->
  ?query_depth_limit:float prop ->
  ?resolver_count_limit:float prop ->
  ?schema:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?visibility:string prop ->
  ?xray_enabled:bool prop ->
  authentication_type:string prop ->
  name:string prop ->
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
