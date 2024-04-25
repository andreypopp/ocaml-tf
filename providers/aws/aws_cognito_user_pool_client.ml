(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type analytics_configuration = {
  application_arn : string prop option; [@option]
  application_id : string prop option; [@option]
  external_id : string prop option; [@option]
  role_arn : string prop option; [@option]
  user_data_shared : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : analytics_configuration) -> ()

let yojson_of_analytics_configuration =
  (function
   | {
       application_arn = v_application_arn;
       application_id = v_application_id;
       external_id = v_external_id;
       role_arn = v_role_arn;
       user_data_shared = v_user_data_shared;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_data_shared with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_data_shared", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : analytics_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_analytics_configuration

[@@@deriving.end]

type token_validity_units = {
  access_token : string prop option; [@option]
  id_token : string prop option; [@option]
  refresh_token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : token_validity_units) -> ()

let yojson_of_token_validity_units =
  (function
   | {
       access_token = v_access_token;
       id_token = v_id_token;
       refresh_token = v_refresh_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_refresh_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : token_validity_units -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_token_validity_units

[@@@deriving.end]

type aws_cognito_user_pool_client = {
  access_token_validity : float prop option; [@option]
  allowed_oauth_flows : string prop list option; [@option]
  allowed_oauth_flows_user_pool_client : bool prop option; [@option]
  allowed_oauth_scopes : string prop list option; [@option]
  auth_session_validity : float prop option; [@option]
  callback_urls : string prop list option; [@option]
  default_redirect_uri : string prop option; [@option]
  enable_propagate_additional_user_context_data : bool prop option;
      [@option]
  enable_token_revocation : bool prop option; [@option]
  explicit_auth_flows : string prop list option; [@option]
  generate_secret : bool prop option; [@option]
  id_token_validity : float prop option; [@option]
  logout_urls : string prop list option; [@option]
  name : string prop;
  prevent_user_existence_errors : string prop option; [@option]
  read_attributes : string prop list option; [@option]
  refresh_token_validity : float prop option; [@option]
  supported_identity_providers : string prop list option; [@option]
  user_pool_id : string prop;
  write_attributes : string prop list option; [@option]
  analytics_configuration : analytics_configuration list;
  token_validity_units : token_validity_units list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool_client) -> ()

let yojson_of_aws_cognito_user_pool_client =
  (function
   | {
       access_token_validity = v_access_token_validity;
       allowed_oauth_flows = v_allowed_oauth_flows;
       allowed_oauth_flows_user_pool_client =
         v_allowed_oauth_flows_user_pool_client;
       allowed_oauth_scopes = v_allowed_oauth_scopes;
       auth_session_validity = v_auth_session_validity;
       callback_urls = v_callback_urls;
       default_redirect_uri = v_default_redirect_uri;
       enable_propagate_additional_user_context_data =
         v_enable_propagate_additional_user_context_data;
       enable_token_revocation = v_enable_token_revocation;
       explicit_auth_flows = v_explicit_auth_flows;
       generate_secret = v_generate_secret;
       id_token_validity = v_id_token_validity;
       logout_urls = v_logout_urls;
       name = v_name;
       prevent_user_existence_errors =
         v_prevent_user_existence_errors;
       read_attributes = v_read_attributes;
       refresh_token_validity = v_refresh_token_validity;
       supported_identity_providers = v_supported_identity_providers;
       user_pool_id = v_user_pool_id;
       write_attributes = v_write_attributes;
       analytics_configuration = v_analytics_configuration;
       token_validity_units = v_token_validity_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_token_validity_units
             v_token_validity_units
         in
         ("token_validity_units", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_analytics_configuration
             v_analytics_configuration
         in
         ("analytics_configuration", arg) :: bnds
       in
       let bnds =
         match v_write_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "write_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         match v_supported_identity_providers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_identity_providers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_refresh_token_validity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "refresh_token_validity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "read_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prevent_user_existence_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prevent_user_existence_errors", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_logout_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "logout_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id_token_validity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id_token_validity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generate_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "generate_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_explicit_auth_flows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "explicit_auth_flows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_token_revocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_token_revocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_propagate_additional_user_context_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_propagate_additional_user_context_data", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_default_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_callback_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "callback_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_session_validity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "auth_session_validity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_oauth_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_oauth_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_oauth_flows_user_pool_client with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allowed_oauth_flows_user_pool_client", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_oauth_flows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_oauth_flows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token_validity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "access_token_validity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_pool_client ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool_client

[@@@deriving.end]

let analytics_configuration ?application_arn ?application_id
    ?external_id ?role_arn ?user_data_shared () :
    analytics_configuration =
  {
    application_arn;
    application_id;
    external_id;
    role_arn;
    user_data_shared;
  }

let token_validity_units ?access_token ?id_token ?refresh_token () :
    token_validity_units =
  { access_token; id_token; refresh_token }

let aws_cognito_user_pool_client ?access_token_validity
    ?allowed_oauth_flows ?allowed_oauth_flows_user_pool_client
    ?allowed_oauth_scopes ?auth_session_validity ?callback_urls
    ?default_redirect_uri
    ?enable_propagate_additional_user_context_data
    ?enable_token_revocation ?explicit_auth_flows ?generate_secret
    ?id_token_validity ?logout_urls ?prevent_user_existence_errors
    ?read_attributes ?refresh_token_validity
    ?supported_identity_providers ?write_attributes
    ?(analytics_configuration = []) ?(token_validity_units = [])
    ~name ~user_pool_id () : aws_cognito_user_pool_client =
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
    generate_secret;
    id_token_validity;
    logout_urls;
    name;
    prevent_user_existence_errors;
    read_attributes;
    refresh_token_validity;
    supported_identity_providers;
    user_pool_id;
    write_attributes;
    analytics_configuration;
    token_validity_units;
  }

type t = {
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

let make ?access_token_validity ?allowed_oauth_flows
    ?allowed_oauth_flows_user_pool_client ?allowed_oauth_scopes
    ?auth_session_validity ?callback_urls ?default_redirect_uri
    ?enable_propagate_additional_user_context_data
    ?enable_token_revocation ?explicit_auth_flows ?generate_secret
    ?id_token_validity ?logout_urls ?prevent_user_existence_errors
    ?read_attributes ?refresh_token_validity
    ?supported_identity_providers ?write_attributes
    ?(analytics_configuration = []) ?(token_validity_units = [])
    ~name ~user_pool_id __id =
  let __type = "aws_cognito_user_pool_client" in
  let __attrs =
    ({
       access_token_validity =
         Prop.computed __type __id "access_token_validity";
       allowed_oauth_flows =
         Prop.computed __type __id "allowed_oauth_flows";
       allowed_oauth_flows_user_pool_client =
         Prop.computed __type __id
           "allowed_oauth_flows_user_pool_client";
       allowed_oauth_scopes =
         Prop.computed __type __id "allowed_oauth_scopes";
       auth_session_validity =
         Prop.computed __type __id "auth_session_validity";
       callback_urls = Prop.computed __type __id "callback_urls";
       client_secret = Prop.computed __type __id "client_secret";
       default_redirect_uri =
         Prop.computed __type __id "default_redirect_uri";
       enable_propagate_additional_user_context_data =
         Prop.computed __type __id
           "enable_propagate_additional_user_context_data";
       enable_token_revocation =
         Prop.computed __type __id "enable_token_revocation";
       explicit_auth_flows =
         Prop.computed __type __id "explicit_auth_flows";
       generate_secret = Prop.computed __type __id "generate_secret";
       id = Prop.computed __type __id "id";
       id_token_validity =
         Prop.computed __type __id "id_token_validity";
       logout_urls = Prop.computed __type __id "logout_urls";
       name = Prop.computed __type __id "name";
       prevent_user_existence_errors =
         Prop.computed __type __id "prevent_user_existence_errors";
       read_attributes = Prop.computed __type __id "read_attributes";
       refresh_token_validity =
         Prop.computed __type __id "refresh_token_validity";
       supported_identity_providers =
         Prop.computed __type __id "supported_identity_providers";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       write_attributes =
         Prop.computed __type __id "write_attributes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool_client
        (aws_cognito_user_pool_client ?access_token_validity
           ?allowed_oauth_flows ?allowed_oauth_flows_user_pool_client
           ?allowed_oauth_scopes ?auth_session_validity
           ?callback_urls ?default_redirect_uri
           ?enable_propagate_additional_user_context_data
           ?enable_token_revocation ?explicit_auth_flows
           ?generate_secret ?id_token_validity ?logout_urls
           ?prevent_user_existence_errors ?read_attributes
           ?refresh_token_validity ?supported_identity_providers
           ?write_attributes ~analytics_configuration
           ~token_validity_units ~name ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token_validity ?allowed_oauth_flows
    ?allowed_oauth_flows_user_pool_client ?allowed_oauth_scopes
    ?auth_session_validity ?callback_urls ?default_redirect_uri
    ?enable_propagate_additional_user_context_data
    ?enable_token_revocation ?explicit_auth_flows ?generate_secret
    ?id_token_validity ?logout_urls ?prevent_user_existence_errors
    ?read_attributes ?refresh_token_validity
    ?supported_identity_providers ?write_attributes
    ?(analytics_configuration = []) ?(token_validity_units = [])
    ~name ~user_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?access_token_validity ?allowed_oauth_flows
      ?allowed_oauth_flows_user_pool_client ?allowed_oauth_scopes
      ?auth_session_validity ?callback_urls ?default_redirect_uri
      ?enable_propagate_additional_user_context_data
      ?enable_token_revocation ?explicit_auth_flows ?generate_secret
      ?id_token_validity ?logout_urls ?prevent_user_existence_errors
      ?read_attributes ?refresh_token_validity
      ?supported_identity_providers ?write_attributes
      ~analytics_configuration ~token_validity_units ~name
      ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
