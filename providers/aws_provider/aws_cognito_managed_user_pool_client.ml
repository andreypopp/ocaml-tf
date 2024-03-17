(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_managed_user_pool_client__analytics_configuration = {
  application_arn : string option; [@option]  (** application_arn *)
  application_id : string option; [@option]  (** application_id *)
  external_id : string option; [@option]  (** external_id *)
  role_arn : string option; [@option]  (** role_arn *)
  user_data_shared : bool option; [@option]  (** user_data_shared *)
}
[@@deriving yojson_of]
(** aws_cognito_managed_user_pool_client__analytics_configuration *)

type aws_cognito_managed_user_pool_client__token_validity_units = {
  access_token : string option; [@option]  (** access_token *)
  id_token : string option; [@option]  (** id_token *)
  refresh_token : string option; [@option]  (** refresh_token *)
}
[@@deriving yojson_of]
(** aws_cognito_managed_user_pool_client__token_validity_units *)

type aws_cognito_managed_user_pool_client = {
  access_token_validity : float option; [@option]
      (** access_token_validity *)
  allowed_oauth_flows : string list option; [@option]
      (** allowed_oauth_flows *)
  allowed_oauth_flows_user_pool_client : bool option; [@option]
      (** allowed_oauth_flows_user_pool_client *)
  allowed_oauth_scopes : string list option; [@option]
      (** allowed_oauth_scopes *)
  auth_session_validity : float option; [@option]
      (** auth_session_validity *)
  callback_urls : string list option; [@option]  (** callback_urls *)
  default_redirect_uri : string option; [@option]
      (** default_redirect_uri *)
  enable_propagate_additional_user_context_data : bool option;
      [@option]
      (** enable_propagate_additional_user_context_data *)
  enable_token_revocation : bool option; [@option]
      (** enable_token_revocation *)
  explicit_auth_flows : string list option; [@option]
      (** explicit_auth_flows *)
  id_token_validity : float option; [@option]
      (** id_token_validity *)
  logout_urls : string list option; [@option]  (** logout_urls *)
  name_pattern : string option; [@option]  (** name_pattern *)
  name_prefix : string option; [@option]  (** name_prefix *)
  prevent_user_existence_errors : string option; [@option]
      (** prevent_user_existence_errors *)
  read_attributes : string list option; [@option]
      (** read_attributes *)
  refresh_token_validity : float option; [@option]
      (** refresh_token_validity *)
  supported_identity_providers : string list option; [@option]
      (** supported_identity_providers *)
  user_pool_id : string;  (** user_pool_id *)
  write_attributes : string list option; [@option]
      (** write_attributes *)
  analytics_configuration :
    aws_cognito_managed_user_pool_client__analytics_configuration
    list;
  token_validity_units :
    aws_cognito_managed_user_pool_client__token_validity_units list;
}
[@@deriving yojson_of]
(** aws_cognito_managed_user_pool_client *)

let aws_cognito_managed_user_pool_client ?access_token_validity
    ?allowed_oauth_flows ?allowed_oauth_flows_user_pool_client
    ?allowed_oauth_scopes ?auth_session_validity ?callback_urls
    ?default_redirect_uri
    ?enable_propagate_additional_user_context_data
    ?enable_token_revocation ?explicit_auth_flows ?id_token_validity
    ?logout_urls ?name_pattern ?name_prefix
    ?prevent_user_existence_errors ?read_attributes
    ?refresh_token_validity ?supported_identity_providers
    ?write_attributes ~user_pool_id ~analytics_configuration
    ~token_validity_units __resource_id =
  let __resource_type = "aws_cognito_managed_user_pool_client" in
  let __resource =
    {
      access_token_validity;
      allowed_oauth_flows;
      allowed_oauth_flows_user_pool_client;
      allowed_oauth_scopes;
      auth_session_validity;
      callback_urls;
      default_redirect_uri;
      enable_propagate_additional_user_context_data;
      enable_token_revocation;
      explicit_auth_flows;
      id_token_validity;
      logout_urls;
      name_pattern;
      name_prefix;
      prevent_user_existence_errors;
      read_attributes;
      refresh_token_validity;
      supported_identity_providers;
      user_pool_id;
      write_attributes;
      analytics_configuration;
      token_validity_units;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_managed_user_pool_client __resource);
  ()
