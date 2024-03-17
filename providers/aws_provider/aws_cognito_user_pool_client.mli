(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user_pool_client__analytics_configuration
type aws_cognito_user_pool_client__token_validity_units
type aws_cognito_user_pool_client

val aws_cognito_user_pool_client :
  ?access_token_validity:float ->
  ?allowed_oauth_flows:string list ->
  ?allowed_oauth_flows_user_pool_client:bool ->
  ?allowed_oauth_scopes:string list ->
  ?auth_session_validity:float ->
  ?callback_urls:string list ->
  ?default_redirect_uri:string ->
  ?enable_propagate_additional_user_context_data:bool ->
  ?enable_token_revocation:bool ->
  ?explicit_auth_flows:string list ->
  ?generate_secret:bool ->
  ?id_token_validity:float ->
  ?logout_urls:string list ->
  ?prevent_user_existence_errors:string ->
  ?read_attributes:string list ->
  ?refresh_token_validity:float ->
  ?supported_identity_providers:string list ->
  ?write_attributes:string list ->
  name:string ->
  user_pool_id:string ->
  analytics_configuration:
    aws_cognito_user_pool_client__analytics_configuration list ->
  token_validity_units:
    aws_cognito_user_pool_client__token_validity_units list ->
  string ->
  unit
