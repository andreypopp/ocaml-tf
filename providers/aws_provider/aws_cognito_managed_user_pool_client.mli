(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_managed_user_pool_client__analytics_configuration
type aws_cognito_managed_user_pool_client__token_validity_units
type aws_cognito_managed_user_pool_client

type t = private {
  access_token_validity : float prop;
  allowed_oauth_flows : string list prop;
  allowed_oauth_flows_user_pool_client : bool prop;
  allowed_oauth_scopes : string list prop;
  auth_session_validity : float prop;
  callback_urls : string list prop;
  client_secret : string prop;
  default_redirect_uri : string prop;
  enable_propagate_additional_user_context_data : bool prop;
  enable_token_revocation : bool prop;
  explicit_auth_flows : string list prop;
  id : string prop;
  id_token_validity : float prop;
  logout_urls : string list prop;
  name : string prop;
  name_pattern : string prop;
  name_prefix : string prop;
  prevent_user_existence_errors : string prop;
  read_attributes : string list prop;
  refresh_token_validity : float prop;
  supported_identity_providers : string list prop;
  user_pool_id : string prop;
  write_attributes : string list prop;
}

val aws_cognito_managed_user_pool_client :
  ?access_token_validity:float prop ->
  ?allowed_oauth_flows:string prop list ->
  ?allowed_oauth_flows_user_pool_client:bool prop ->
  ?allowed_oauth_scopes:string prop list ->
  ?auth_session_validity:float prop ->
  ?callback_urls:string prop list ->
  ?default_redirect_uri:string prop ->
  ?enable_propagate_additional_user_context_data:bool prop ->
  ?enable_token_revocation:bool prop ->
  ?explicit_auth_flows:string prop list ->
  ?id_token_validity:float prop ->
  ?logout_urls:string prop list ->
  ?name_pattern:string prop ->
  ?name_prefix:string prop ->
  ?prevent_user_existence_errors:string prop ->
  ?read_attributes:string prop list ->
  ?refresh_token_validity:float prop ->
  ?supported_identity_providers:string prop list ->
  ?write_attributes:string prop list ->
  user_pool_id:string prop ->
  analytics_configuration:
    aws_cognito_managed_user_pool_client__analytics_configuration
    list ->
  token_validity_units:
    aws_cognito_managed_user_pool_client__token_validity_units list ->
  string ->
  t
