(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type additional_authentication_provider__lambda_authorizer_config = {
  authorizer_result_ttl_in_seconds : float prop option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_uri : string prop;  (** authorizer_uri *)
  identity_validation_expression : string prop option; [@option]
      (** identity_validation_expression *)
}
[@@deriving yojson_of]
(** additional_authentication_provider__lambda_authorizer_config *)

type additional_authentication_provider__openid_connect_config = {
  auth_ttl : float prop option; [@option]  (** auth_ttl *)
  client_id : string prop option; [@option]  (** client_id *)
  iat_ttl : float prop option; [@option]  (** iat_ttl *)
  issuer : string prop;  (** issuer *)
}
[@@deriving yojson_of]
(** additional_authentication_provider__openid_connect_config *)

type additional_authentication_provider__user_pool_config = {
  app_id_client_regex : string prop option; [@option]
      (** app_id_client_regex *)
  aws_region : string prop option; [@option]  (** aws_region *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** additional_authentication_provider__user_pool_config *)

type additional_authentication_provider = {
  authentication_type : string prop;  (** authentication_type *)
  lambda_authorizer_config :
    additional_authentication_provider__lambda_authorizer_config list;
  openid_connect_config :
    additional_authentication_provider__openid_connect_config list;
  user_pool_config :
    additional_authentication_provider__user_pool_config list;
}
[@@deriving yojson_of]
(** additional_authentication_provider *)

type lambda_authorizer_config = {
  authorizer_result_ttl_in_seconds : float prop option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_uri : string prop;  (** authorizer_uri *)
  identity_validation_expression : string prop option; [@option]
      (** identity_validation_expression *)
}
[@@deriving yojson_of]
(** lambda_authorizer_config *)

type log_config = {
  cloudwatch_logs_role_arn : string prop;
      (** cloudwatch_logs_role_arn *)
  exclude_verbose_content : bool prop option; [@option]
      (** exclude_verbose_content *)
  field_log_level : string prop;  (** field_log_level *)
}
[@@deriving yojson_of]
(** log_config *)

type openid_connect_config = {
  auth_ttl : float prop option; [@option]  (** auth_ttl *)
  client_id : string prop option; [@option]  (** client_id *)
  iat_ttl : float prop option; [@option]  (** iat_ttl *)
  issuer : string prop;  (** issuer *)
}
[@@deriving yojson_of]
(** openid_connect_config *)

type user_pool_config = {
  app_id_client_regex : string prop option; [@option]
      (** app_id_client_regex *)
  aws_region : string prop option; [@option]  (** aws_region *)
  default_action : string prop;  (** default_action *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** user_pool_config *)

type aws_appsync_graphql_api = {
  authentication_type : string prop;  (** authentication_type *)
  id : string prop option; [@option]  (** id *)
  introspection_config : string prop option; [@option]
      (** introspection_config *)
  name : string prop;  (** name *)
  query_depth_limit : float prop option; [@option]
      (** query_depth_limit *)
  resolver_count_limit : float prop option; [@option]
      (** resolver_count_limit *)
  schema : string prop option; [@option]  (** schema *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  visibility : string prop option; [@option]  (** visibility *)
  xray_enabled : bool prop option; [@option]  (** xray_enabled *)
  additional_authentication_provider :
    additional_authentication_provider list;
  lambda_authorizer_config : lambda_authorizer_config list;
  log_config : log_config list;
  openid_connect_config : openid_connect_config list;
  user_pool_config : user_pool_config list;
}
[@@deriving yojson_of]
(** aws_appsync_graphql_api *)

let additional_authentication_provider__lambda_authorizer_config
    ?authorizer_result_ttl_in_seconds ?identity_validation_expression
    ~authorizer_uri () :
    additional_authentication_provider__lambda_authorizer_config =
  {
    authorizer_result_ttl_in_seconds;
    authorizer_uri;
    identity_validation_expression;
  }

let additional_authentication_provider__openid_connect_config
    ?auth_ttl ?client_id ?iat_ttl ~issuer () :
    additional_authentication_provider__openid_connect_config =
  { auth_ttl; client_id; iat_ttl; issuer }

let additional_authentication_provider__user_pool_config
    ?app_id_client_regex ?aws_region ~user_pool_id () :
    additional_authentication_provider__user_pool_config =
  { app_id_client_regex; aws_region; user_pool_id }

let additional_authentication_provider ~authentication_type
    ~lambda_authorizer_config ~openid_connect_config
    ~user_pool_config () : additional_authentication_provider =
  {
    authentication_type;
    lambda_authorizer_config;
    openid_connect_config;
    user_pool_config;
  }

let lambda_authorizer_config ?authorizer_result_ttl_in_seconds
    ?identity_validation_expression ~authorizer_uri () :
    lambda_authorizer_config =
  {
    authorizer_result_ttl_in_seconds;
    authorizer_uri;
    identity_validation_expression;
  }

let log_config ?exclude_verbose_content ~cloudwatch_logs_role_arn
    ~field_log_level () : log_config =
  {
    cloudwatch_logs_role_arn;
    exclude_verbose_content;
    field_log_level;
  }

let openid_connect_config ?auth_ttl ?client_id ?iat_ttl ~issuer () :
    openid_connect_config =
  { auth_ttl; client_id; iat_ttl; issuer }

let user_pool_config ?app_id_client_regex ?aws_region ~default_action
    ~user_pool_id () : user_pool_config =
  { app_id_client_regex; aws_region; default_action; user_pool_id }

let aws_appsync_graphql_api ?id ?introspection_config
    ?query_depth_limit ?resolver_count_limit ?schema ?tags ?tags_all
    ?visibility ?xray_enabled ~authentication_type ~name
    ~additional_authentication_provider ~lambda_authorizer_config
    ~log_config ~openid_connect_config ~user_pool_config () :
    aws_appsync_graphql_api =
  {
    authentication_type;
    id;
    introspection_config;
    name;
    query_depth_limit;
    resolver_count_limit;
    schema;
    tags;
    tags_all;
    visibility;
    xray_enabled;
    additional_authentication_provider;
    lambda_authorizer_config;
    log_config;
    openid_connect_config;
    user_pool_config;
  }

type t = {
  arn : string prop;
  authentication_type : string prop;
  id : string prop;
  introspection_config : string prop;
  name : string prop;
  query_depth_limit : float prop;
  resolver_count_limit : float prop;
  schema : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uris : (string * string) list prop;
  visibility : string prop;
  xray_enabled : bool prop;
}

let register ?tf_module ?id ?introspection_config ?query_depth_limit
    ?resolver_count_limit ?schema ?tags ?tags_all ?visibility
    ?xray_enabled ~authentication_type ~name
    ~additional_authentication_provider ~lambda_authorizer_config
    ~log_config ~openid_connect_config ~user_pool_config
    __resource_id =
  let __resource_type = "aws_appsync_graphql_api" in
  let __resource =
    aws_appsync_graphql_api ?id ?introspection_config
      ?query_depth_limit ?resolver_count_limit ?schema ?tags
      ?tags_all ?visibility ?xray_enabled ~authentication_type ~name
      ~additional_authentication_provider ~lambda_authorizer_config
      ~log_config ~openid_connect_config ~user_pool_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_graphql_api __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       id = Prop.computed __resource_type __resource_id "id";
       introspection_config =
         Prop.computed __resource_type __resource_id
           "introspection_config";
       name = Prop.computed __resource_type __resource_id "name";
       query_depth_limit =
         Prop.computed __resource_type __resource_id
           "query_depth_limit";
       resolver_count_limit =
         Prop.computed __resource_type __resource_id
           "resolver_count_limit";
       schema = Prop.computed __resource_type __resource_id "schema";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uris = Prop.computed __resource_type __resource_id "uris";
       visibility =
         Prop.computed __resource_type __resource_id "visibility";
       xray_enabled =
         Prop.computed __resource_type __resource_id "xray_enabled";
     }
      : t)
  in
  __resource_attributes
