(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_graphql_api__additional_authentication_provider__lambda_authorizer_config = {
  authorizer_result_ttl_in_seconds : float option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_uri : string;  (** authorizer_uri *)
  identity_validation_expression : string option; [@option]
      (** identity_validation_expression *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__additional_authentication_provider__lambda_authorizer_config *)

type aws_appsync_graphql_api__additional_authentication_provider__openid_connect_config = {
  auth_ttl : float option; [@option]  (** auth_ttl *)
  client_id : string option; [@option]  (** client_id *)
  iat_ttl : float option; [@option]  (** iat_ttl *)
  issuer : string;  (** issuer *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__additional_authentication_provider__openid_connect_config *)

type aws_appsync_graphql_api__additional_authentication_provider__user_pool_config = {
  app_id_client_regex : string option; [@option]
      (** app_id_client_regex *)
  aws_region : string option; [@option]  (** aws_region *)
  user_pool_id : string;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__additional_authentication_provider__user_pool_config *)

type aws_appsync_graphql_api__additional_authentication_provider = {
  authentication_type : string;  (** authentication_type *)
  lambda_authorizer_config :
    aws_appsync_graphql_api__additional_authentication_provider__lambda_authorizer_config
    list;
  openid_connect_config :
    aws_appsync_graphql_api__additional_authentication_provider__openid_connect_config
    list;
  user_pool_config :
    aws_appsync_graphql_api__additional_authentication_provider__user_pool_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__additional_authentication_provider *)

type aws_appsync_graphql_api__lambda_authorizer_config = {
  authorizer_result_ttl_in_seconds : float option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_uri : string;  (** authorizer_uri *)
  identity_validation_expression : string option; [@option]
      (** identity_validation_expression *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__lambda_authorizer_config *)

type aws_appsync_graphql_api__log_config = {
  cloudwatch_logs_role_arn : string;  (** cloudwatch_logs_role_arn *)
  exclude_verbose_content : bool option; [@option]
      (** exclude_verbose_content *)
  field_log_level : string;  (** field_log_level *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__log_config *)

type aws_appsync_graphql_api__openid_connect_config = {
  auth_ttl : float option; [@option]  (** auth_ttl *)
  client_id : string option; [@option]  (** client_id *)
  iat_ttl : float option; [@option]  (** iat_ttl *)
  issuer : string;  (** issuer *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__openid_connect_config *)

type aws_appsync_graphql_api__user_pool_config = {
  app_id_client_regex : string option; [@option]
      (** app_id_client_regex *)
  aws_region : string option; [@option]  (** aws_region *)
  default_action : string;  (** default_action *)
  user_pool_id : string;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api__user_pool_config *)

type aws_appsync_graphql_api = {
  authentication_type : string;  (** authentication_type *)
  introspection_config : string option; [@option]
      (** introspection_config *)
  name : string;  (** name *)
  query_depth_limit : float option; [@option]
      (** query_depth_limit *)
  resolver_count_limit : float option; [@option]
      (** resolver_count_limit *)
  schema : string option; [@option]  (** schema *)
  tags : (string * string) list option; [@option]  (** tags *)
  visibility : string option; [@option]  (** visibility *)
  xray_enabled : bool option; [@option]  (** xray_enabled *)
  additional_authentication_provider :
    aws_appsync_graphql_api__additional_authentication_provider list;
  lambda_authorizer_config :
    aws_appsync_graphql_api__lambda_authorizer_config list;
  log_config : aws_appsync_graphql_api__log_config list;
  openid_connect_config :
    aws_appsync_graphql_api__openid_connect_config list;
  user_pool_config : aws_appsync_graphql_api__user_pool_config list;
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api *)

let aws_appsync_graphql_api ?introspection_config ?query_depth_limit
    ?resolver_count_limit ?schema ?tags ?visibility ?xray_enabled
    ~authentication_type ~name ~additional_authentication_provider
    ~lambda_authorizer_config ~log_config ~openid_connect_config
    ~user_pool_config __resource_id =
  let __resource_type = "aws_appsync_graphql_api" in
  let __resource =
    {
      authentication_type;
      introspection_config;
      name;
      query_depth_limit;
      resolver_count_limit;
      schema;
      tags;
      visibility;
      xray_enabled;
      additional_authentication_provider;
      lambda_authorizer_config;
      log_config;
      openid_connect_config;
      user_pool_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_graphql_api __resource);
  ()
