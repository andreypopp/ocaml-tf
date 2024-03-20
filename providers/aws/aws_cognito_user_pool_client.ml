(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type analytics_configuration = {
  application_arn : string prop option; [@option]
      (** application_arn *)
  application_id : string prop option; [@option]
      (** application_id *)
  external_id : string prop option; [@option]  (** external_id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  user_data_shared : bool prop option; [@option]
      (** user_data_shared *)
}
[@@deriving yojson_of]
(** analytics_configuration *)

type token_validity_units = {
  access_token : string prop option; [@option]  (** access_token *)
  id_token : string prop option; [@option]  (** id_token *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
}
[@@deriving yojson_of]
(** token_validity_units *)

type aws_cognito_user_pool_client = {
  access_token_validity : float prop option; [@option]
      (** access_token_validity *)
  allowed_oauth_flows : string prop list option; [@option]
      (** allowed_oauth_flows *)
  allowed_oauth_flows_user_pool_client : bool prop option; [@option]
      (** allowed_oauth_flows_user_pool_client *)
  allowed_oauth_scopes : string prop list option; [@option]
      (** allowed_oauth_scopes *)
  auth_session_validity : float prop option; [@option]
      (** auth_session_validity *)
  callback_urls : string prop list option; [@option]
      (** callback_urls *)
  default_redirect_uri : string prop option; [@option]
      (** default_redirect_uri *)
  enable_propagate_additional_user_context_data : bool prop option;
      [@option]
      (** enable_propagate_additional_user_context_data *)
  enable_token_revocation : bool prop option; [@option]
      (** enable_token_revocation *)
  explicit_auth_flows : string prop list option; [@option]
      (** explicit_auth_flows *)
  generate_secret : bool prop option; [@option]
      (** generate_secret *)
  id_token_validity : float prop option; [@option]
      (** id_token_validity *)
  logout_urls : string prop list option; [@option]
      (** logout_urls *)
  name : string prop;  (** name *)
  prevent_user_existence_errors : string prop option; [@option]
      (** prevent_user_existence_errors *)
  read_attributes : string prop list option; [@option]
      (** read_attributes *)
  refresh_token_validity : float prop option; [@option]
      (** refresh_token_validity *)
  supported_identity_providers : string prop list option; [@option]
      (** supported_identity_providers *)
  user_pool_id : string prop;  (** user_pool_id *)
  write_attributes : string prop list option; [@option]
      (** write_attributes *)
  analytics_configuration : analytics_configuration list;
  token_validity_units : token_validity_units list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_client *)

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
    ?supported_identity_providers ?write_attributes ~name
    ~user_pool_id ~analytics_configuration ~token_validity_units () :
    aws_cognito_user_pool_client =
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
    ?supported_identity_providers ?write_attributes ~name
    ~user_pool_id ~analytics_configuration ~token_validity_units __id
    =
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
           ?write_attributes ~name ~user_pool_id
           ~analytics_configuration ~token_validity_units ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token_validity ?allowed_oauth_flows
    ?allowed_oauth_flows_user_pool_client ?allowed_oauth_scopes
    ?auth_session_validity ?callback_urls ?default_redirect_uri
    ?enable_propagate_additional_user_context_data
    ?enable_token_revocation ?explicit_auth_flows ?generate_secret
    ?id_token_validity ?logout_urls ?prevent_user_existence_errors
    ?read_attributes ?refresh_token_validity
    ?supported_identity_providers ?write_attributes ~name
    ~user_pool_id ~analytics_configuration ~token_validity_units __id
    =
  let (r : _ Tf_core.resource) =
    make ?access_token_validity ?allowed_oauth_flows
      ?allowed_oauth_flows_user_pool_client ?allowed_oauth_scopes
      ?auth_session_validity ?callback_urls ?default_redirect_uri
      ?enable_propagate_additional_user_context_data
      ?enable_token_revocation ?explicit_auth_flows ?generate_secret
      ?id_token_validity ?logout_urls ?prevent_user_existence_errors
      ?read_attributes ?refresh_token_validity
      ?supported_identity_providers ?write_attributes ~name
      ~user_pool_id ~analytics_configuration ~token_validity_units
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
