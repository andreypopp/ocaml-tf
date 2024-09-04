(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_authentication_provider__lambda_authorizer_config = {
  authorizer_result_ttl_in_seconds : float prop option; [@option]
  authorizer_uri : string prop;
  identity_validation_expression : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       additional_authentication_provider__lambda_authorizer_config) ->
  ()

let yojson_of_additional_authentication_provider__lambda_authorizer_config
    =
  (function
   | {
       authorizer_result_ttl_in_seconds =
         v_authorizer_result_ttl_in_seconds;
       authorizer_uri = v_authorizer_uri;
       identity_validation_expression =
         v_identity_validation_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_validation_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_validation_expression", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorizer_uri
         in
         ("authorizer_uri", arg) :: bnds
       in
       let bnds =
         match v_authorizer_result_ttl_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "authorizer_result_ttl_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : additional_authentication_provider__lambda_authorizer_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_additional_authentication_provider__lambda_authorizer_config

[@@@deriving.end]

type additional_authentication_provider__openid_connect_config = {
  auth_ttl : float prop option; [@option]
  client_id : string prop option; [@option]
  iat_ttl : float prop option; [@option]
  issuer : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : additional_authentication_provider__openid_connect_config) ->
  ()

let yojson_of_additional_authentication_provider__openid_connect_config
    =
  (function
   | {
       auth_ttl = v_auth_ttl;
       client_id = v_client_id;
       iat_ttl = v_iat_ttl;
       issuer = v_issuer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         match v_iat_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iat_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "auth_ttl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : additional_authentication_provider__openid_connect_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_additional_authentication_provider__openid_connect_config

[@@@deriving.end]

type additional_authentication_provider__user_pool_config = {
  app_id_client_regex : string prop option; [@option]
  aws_region : string prop option; [@option]
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : additional_authentication_provider__user_pool_config) -> ()

let yojson_of_additional_authentication_provider__user_pool_config =
  (function
   | {
       app_id_client_regex = v_app_id_client_regex;
       aws_region = v_aws_region;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         match v_aws_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_id_client_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_id_client_regex", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : additional_authentication_provider__user_pool_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_additional_authentication_provider__user_pool_config

[@@@deriving.end]

type additional_authentication_provider = {
  authentication_type : string prop;
  lambda_authorizer_config :
    additional_authentication_provider__lambda_authorizer_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  openid_connect_config :
    additional_authentication_provider__openid_connect_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_pool_config :
    additional_authentication_provider__user_pool_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_authentication_provider) -> ()

let yojson_of_additional_authentication_provider =
  (function
   | {
       authentication_type = v_authentication_type;
       lambda_authorizer_config = v_lambda_authorizer_config;
       openid_connect_config = v_openid_connect_config;
       user_pool_config = v_user_pool_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_pool_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_additional_authentication_provider__user_pool_config)
               v_user_pool_config
           in
           let bnd = "user_pool_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_openid_connect_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_additional_authentication_provider__openid_connect_config)
               v_openid_connect_config
           in
           let bnd = "openid_connect_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_authorizer_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_additional_authentication_provider__lambda_authorizer_config)
               v_lambda_authorizer_config
           in
           let bnd = "lambda_authorizer_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : additional_authentication_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_authentication_provider

[@@@deriving.end]

type lambda_authorizer_config = {
  authorizer_result_ttl_in_seconds : float prop option; [@option]
  authorizer_uri : string prop;
  identity_validation_expression : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_authorizer_config) -> ()

let yojson_of_lambda_authorizer_config =
  (function
   | {
       authorizer_result_ttl_in_seconds =
         v_authorizer_result_ttl_in_seconds;
       authorizer_uri = v_authorizer_uri;
       identity_validation_expression =
         v_identity_validation_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_identity_validation_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_validation_expression", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorizer_uri
         in
         ("authorizer_uri", arg) :: bnds
       in
       let bnds =
         match v_authorizer_result_ttl_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "authorizer_result_ttl_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lambda_authorizer_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_authorizer_config

[@@@deriving.end]

type log_config = {
  cloudwatch_logs_role_arn : string prop;
  exclude_verbose_content : bool prop option; [@option]
  field_log_level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | {
       cloudwatch_logs_role_arn = v_cloudwatch_logs_role_arn;
       exclude_verbose_content = v_exclude_verbose_content;
       field_log_level = v_field_log_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_field_log_level
         in
         ("field_log_level", arg) :: bnds
       in
       let bnds =
         match v_exclude_verbose_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_verbose_content", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloudwatch_logs_role_arn
         in
         ("cloudwatch_logs_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type openid_connect_config = {
  auth_ttl : float prop option; [@option]
  client_id : string prop option; [@option]
  iat_ttl : float prop option; [@option]
  issuer : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : openid_connect_config) -> ()

let yojson_of_openid_connect_config =
  (function
   | {
       auth_ttl = v_auth_ttl;
       client_id = v_client_id;
       iat_ttl = v_iat_ttl;
       issuer = v_issuer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         match v_iat_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iat_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "auth_ttl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : openid_connect_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_openid_connect_config

[@@@deriving.end]

type user_pool_config = {
  app_id_client_regex : string prop option; [@option]
  aws_region : string prop option; [@option]
  default_action : string prop;
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_pool_config) -> ()

let yojson_of_user_pool_config =
  (function
   | {
       app_id_client_regex = v_app_id_client_regex;
       aws_region = v_aws_region;
       default_action = v_default_action;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       let bnds =
         match v_aws_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_id_client_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_id_client_regex", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user_pool_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_pool_config

[@@@deriving.end]

type aws_appsync_graphql_api = {
  authentication_type : string prop;
  id : string prop option; [@option]
  introspection_config : string prop option; [@option]
  name : string prop;
  query_depth_limit : float prop option; [@option]
  resolver_count_limit : float prop option; [@option]
  schema : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  visibility : string prop option; [@option]
  xray_enabled : bool prop option; [@option]
  additional_authentication_provider :
    additional_authentication_provider list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda_authorizer_config : lambda_authorizer_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_config : log_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  openid_connect_config : openid_connect_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_pool_config : user_pool_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appsync_graphql_api) -> ()

let yojson_of_aws_appsync_graphql_api =
  (function
   | {
       authentication_type = v_authentication_type;
       id = v_id;
       introspection_config = v_introspection_config;
       name = v_name;
       query_depth_limit = v_query_depth_limit;
       resolver_count_limit = v_resolver_count_limit;
       schema = v_schema;
       tags = v_tags;
       tags_all = v_tags_all;
       visibility = v_visibility;
       xray_enabled = v_xray_enabled;
       additional_authentication_provider =
         v_additional_authentication_provider;
       lambda_authorizer_config = v_lambda_authorizer_config;
       log_config = v_log_config;
       openid_connect_config = v_openid_connect_config;
       user_pool_config = v_user_pool_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_pool_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_user_pool_config)
               v_user_pool_config
           in
           let bnd = "user_pool_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_openid_connect_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_openid_connect_config)
               v_openid_connect_config
           in
           let bnd = "openid_connect_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_config) v_log_config
           in
           let bnd = "log_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_authorizer_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lambda_authorizer_config)
               v_lambda_authorizer_config
           in
           let bnd = "lambda_authorizer_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_authentication_provider then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_additional_authentication_provider)
               v_additional_authentication_provider
           in
           let bnd = "additional_authentication_provider", arg in
           bnd :: bnds
       in
       let bnds =
         match v_xray_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "xray_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolver_count_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "resolver_count_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_depth_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_depth_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_introspection_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "introspection_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_appsync_graphql_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appsync_graphql_api

[@@@deriving.end]

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

let additional_authentication_provider
    ?(lambda_authorizer_config = []) ?(openid_connect_config = [])
    ?(user_pool_config = []) ~authentication_type () :
    additional_authentication_provider =
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
    ?visibility ?xray_enabled
    ?(additional_authentication_provider = [])
    ?(lambda_authorizer_config = []) ?(log_config = [])
    ?(openid_connect_config = []) ?(user_pool_config = [])
    ~authentication_type ~name () : aws_appsync_graphql_api =
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

let make ?id ?introspection_config ?query_depth_limit
    ?resolver_count_limit ?schema ?tags ?tags_all ?visibility
    ?xray_enabled ?(additional_authentication_provider = [])
    ?(lambda_authorizer_config = []) ?(log_config = [])
    ?(openid_connect_config = []) ?(user_pool_config = [])
    ~authentication_type ~name __id =
  let __type = "aws_appsync_graphql_api" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       id = Prop.computed __type __id "id";
       introspection_config =
         Prop.computed __type __id "introspection_config";
       name = Prop.computed __type __id "name";
       query_depth_limit =
         Prop.computed __type __id "query_depth_limit";
       resolver_count_limit =
         Prop.computed __type __id "resolver_count_limit";
       schema = Prop.computed __type __id "schema";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uris = Prop.computed __type __id "uris";
       visibility = Prop.computed __type __id "visibility";
       xray_enabled = Prop.computed __type __id "xray_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_graphql_api
        (aws_appsync_graphql_api ?id ?introspection_config
           ?query_depth_limit ?resolver_count_limit ?schema ?tags
           ?tags_all ?visibility ?xray_enabled
           ~additional_authentication_provider
           ~lambda_authorizer_config ~log_config
           ~openid_connect_config ~user_pool_config
           ~authentication_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?introspection_config ?query_depth_limit
    ?resolver_count_limit ?schema ?tags ?tags_all ?visibility
    ?xray_enabled ?(additional_authentication_provider = [])
    ?(lambda_authorizer_config = []) ?(log_config = [])
    ?(openid_connect_config = []) ?(user_pool_config = [])
    ~authentication_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?introspection_config ?query_depth_limit
      ?resolver_count_limit ?schema ?tags ?tags_all ?visibility
      ?xray_enabled ~additional_authentication_provider
      ~lambda_authorizer_config ~log_config ~openid_connect_config
      ~user_pool_config ~authentication_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
