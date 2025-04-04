(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type analytics_configuration

val analytics_configuration :
  ?application_arn:string prop ->
  ?application_id:string prop ->
  ?external_id:string prop ->
  ?role_arn:string prop ->
  ?user_data_shared:bool prop ->
  unit ->
  analytics_configuration

type token_validity_units

val token_validity_units :
  ?access_token:string prop ->
  ?id_token:string prop ->
  ?refresh_token:string prop ->
  unit ->
  token_validity_units

type aws_cognito_user_pool_client

val aws_cognito_user_pool_client :
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
  ?generate_secret:bool prop ->
  ?id_token_validity:float prop ->
  ?logout_urls:string prop list ->
  ?prevent_user_existence_errors:string prop ->
  ?read_attributes:string prop list ->
  ?refresh_token_validity:float prop ->
  ?supported_identity_providers:string prop list ->
  ?write_attributes:string prop list ->
  ?analytics_configuration:analytics_configuration list ->
  ?token_validity_units:token_validity_units list ->
  name:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_pool_client

val yojson_of_aws_cognito_user_pool_client :
  aws_cognito_user_pool_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  generate_secret : bool prop;
  id : string prop;
  id_token_validity : float prop;
  logout_urls : string list prop;
  name : string prop;
  prevent_user_existence_errors : string prop;
  read_attributes : string list prop;
  refresh_token_validity : float prop;
  supported_identity_providers : string list prop;
  user_pool_id : string prop;
  write_attributes : string list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?generate_secret:bool prop ->
  ?id_token_validity:float prop ->
  ?logout_urls:string prop list ->
  ?prevent_user_existence_errors:string prop ->
  ?read_attributes:string prop list ->
  ?refresh_token_validity:float prop ->
  ?supported_identity_providers:string prop list ->
  ?write_attributes:string prop list ->
  ?analytics_configuration:analytics_configuration list ->
  ?token_validity_units:token_validity_units list ->
  name:string prop ->
  user_pool_id:string prop ->
  string ->
  t

val make :
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
  ?generate_secret:bool prop ->
  ?id_token_validity:float prop ->
  ?logout_urls:string prop list ->
  ?prevent_user_existence_errors:string prop ->
  ?read_attributes:string prop list ->
  ?refresh_token_validity:float prop ->
  ?supported_identity_providers:string prop list ->
  ?write_attributes:string prop list ->
  ?analytics_configuration:analytics_configuration list ->
  ?token_validity_units:token_validity_units list ->
  name:string prop ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
