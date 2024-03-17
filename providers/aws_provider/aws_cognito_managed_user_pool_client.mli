(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_managed_user_pool_client__analytics_configuration
type aws_cognito_managed_user_pool_client__token_validity_units
type aws_cognito_managed_user_pool_client

val aws_cognito_managed_user_pool_client :
  ?name_pattern:string ->
  ?name_prefix:string ->
  user_pool_id:string ->
  analytics_configuration:
    aws_cognito_managed_user_pool_client__analytics_configuration
    list ->
  token_validity_units:
    aws_cognito_managed_user_pool_client__token_validity_units list ->
  string ->
  unit
