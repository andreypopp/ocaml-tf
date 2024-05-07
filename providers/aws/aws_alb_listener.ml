(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_action__authenticate_cognito = {
  authentication_request_extra_params :
    (string * string prop) list option;
      [@option]
  on_unauthenticated_request : string prop option; [@option]
  scope : string prop option; [@option]
  session_cookie_name : string prop option; [@option]
  session_timeout : float prop option; [@option]
  user_pool_arn : string prop;
  user_pool_client_id : string prop;
  user_pool_domain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__authenticate_cognito) -> ()

let yojson_of_default_action__authenticate_cognito =
  (function
   | {
       authentication_request_extra_params =
         v_authentication_request_extra_params;
       on_unauthenticated_request = v_on_unauthenticated_request;
       scope = v_scope;
       session_cookie_name = v_session_cookie_name;
       session_timeout = v_session_timeout;
       user_pool_arn = v_user_pool_arn;
       user_pool_client_id = v_user_pool_client_id;
       user_pool_domain = v_user_pool_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_pool_domain
         in
         ("user_pool_domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_pool_client_id
         in
         ("user_pool_client_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_arn in
         ("user_pool_arn", arg) :: bnds
       in
       let bnds =
         match v_session_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_cookie_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_cookie_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_unauthenticated_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_unauthenticated_request", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_request_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "authentication_request_extra_params", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_action__authenticate_cognito ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__authenticate_cognito

[@@@deriving.end]

type default_action__authenticate_oidc = {
  authentication_request_extra_params :
    (string * string prop) list option;
      [@option]
  authorization_endpoint : string prop;
  client_id : string prop;
  client_secret : string prop;
  issuer : string prop;
  on_unauthenticated_request : string prop option; [@option]
  scope : string prop option; [@option]
  session_cookie_name : string prop option; [@option]
  session_timeout : float prop option; [@option]
  token_endpoint : string prop;
  user_info_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__authenticate_oidc) -> ()

let yojson_of_default_action__authenticate_oidc =
  (function
   | {
       authentication_request_extra_params =
         v_authentication_request_extra_params;
       authorization_endpoint = v_authorization_endpoint;
       client_id = v_client_id;
       client_secret = v_client_secret;
       issuer = v_issuer;
       on_unauthenticated_request = v_on_unauthenticated_request;
       scope = v_scope;
       session_cookie_name = v_session_cookie_name;
       session_timeout = v_session_timeout;
       token_endpoint = v_token_endpoint;
       user_info_endpoint = v_user_info_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_info_endpoint
         in
         ("user_info_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_token_endpoint
         in
         ("token_endpoint", arg) :: bnds
       in
       let bnds =
         match v_session_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_cookie_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_cookie_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_unauthenticated_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_unauthenticated_request", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorization_endpoint
         in
         ("authorization_endpoint", arg) :: bnds
       in
       let bnds =
         match v_authentication_request_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "authentication_request_extra_params", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_action__authenticate_oidc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__authenticate_oidc

[@@@deriving.end]

type default_action__fixed_response = {
  content_type : string prop;
  message_body : string prop option; [@option]
  status_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__fixed_response) -> ()

let yojson_of_default_action__fixed_response =
  (function
   | {
       content_type = v_content_type;
       message_body = v_message_body;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_body", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : default_action__fixed_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__fixed_response

[@@@deriving.end]

type default_action__forward__stickiness = {
  duration : float prop;
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__forward__stickiness) -> ()

let yojson_of_default_action__forward__stickiness =
  (function
   | { duration = v_duration; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : default_action__forward__stickiness ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward__stickiness

[@@@deriving.end]

type default_action__forward__target_group = {
  arn : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__forward__target_group) -> ()

let yojson_of_default_action__forward__target_group =
  (function
   | { arn = v_arn; weight = v_weight } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : default_action__forward__target_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward__target_group

[@@@deriving.end]

type default_action__forward = {
  stickiness : default_action__forward__stickiness list;
  target_group : default_action__forward__target_group list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__forward) -> ()

let yojson_of_default_action__forward =
  (function
   | { stickiness = v_stickiness; target_group = v_target_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_action__forward__target_group
             v_target_group
         in
         ("target_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_action__forward__stickiness
             v_stickiness
         in
         ("stickiness", arg) :: bnds
       in
       `Assoc bnds
    : default_action__forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward

[@@@deriving.end]

type default_action__redirect = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  protocol : string prop option; [@option]
  query : string prop option; [@option]
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__redirect) -> ()

let yojson_of_default_action__redirect =
  (function
   | {
       host = v_host;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       query = v_query;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         match v_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_action__redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__redirect

[@@@deriving.end]

type default_action = {
  order : float prop option; [@option]
  target_group_arn : string prop option; [@option]
  type_ : string prop; [@key "type"]
  authenticate_cognito : default_action__authenticate_cognito list;
  authenticate_oidc : default_action__authenticate_oidc list;
  fixed_response : default_action__fixed_response list;
  forward : default_action__forward list;
  redirect : default_action__redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action) -> ()

let yojson_of_default_action =
  (function
   | {
       order = v_order;
       target_group_arn = v_target_group_arn;
       type_ = v_type_;
       authenticate_cognito = v_authenticate_cognito;
       authenticate_oidc = v_authenticate_oidc;
       fixed_response = v_fixed_response;
       forward = v_forward;
       redirect = v_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action__redirect
             v_redirect
         in
         ("redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action__forward v_forward
         in
         ("forward", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action__fixed_response
             v_fixed_response
         in
         ("fixed_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action__authenticate_oidc
             v_authenticate_oidc
         in
         ("authenticate_oidc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_action__authenticate_cognito
             v_authenticate_cognito
         in
         ("authenticate_cognito", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_target_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action

[@@@deriving.end]

type mutual_authentication = {
  ignore_client_certificate_expiry : bool prop option; [@option]
  mode : string prop;
  trust_store_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mutual_authentication) -> ()

let yojson_of_mutual_authentication =
  (function
   | {
       ignore_client_certificate_expiry =
         v_ignore_client_certificate_expiry;
       mode = v_mode;
       trust_store_arn = v_trust_store_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_trust_store_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trust_store_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_ignore_client_certificate_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_client_certificate_expiry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mutual_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mutual_authentication

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_alb_listener = {
  alpn_policy : string prop option; [@option]
  certificate_arn : string prop option; [@option]
  id : string prop option; [@option]
  load_balancer_arn : string prop;
  port : float prop option; [@option]
  protocol : string prop option; [@option]
  ssl_policy : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  default_action : default_action list;
  mutual_authentication : mutual_authentication list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_alb_listener) -> ()

let yojson_of_aws_alb_listener =
  (function
   | {
       alpn_policy = v_alpn_policy;
       certificate_arn = v_certificate_arn;
       id = v_id;
       load_balancer_arn = v_load_balancer_arn;
       port = v_port;
       protocol = v_protocol;
       ssl_policy = v_ssl_policy;
       tags = v_tags;
       tags_all = v_tags_all;
       default_action = v_default_action;
       mutual_authentication = v_mutual_authentication;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_mutual_authentication
             v_mutual_authentication
         in
         ("mutual_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action v_default_action
         in
         ("default_action", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_arn
         in
         ("load_balancer_arn", arg) :: bnds
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
         match v_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alpn_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alpn_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_alb_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_alb_listener

[@@@deriving.end]

let default_action__authenticate_cognito
    ?authentication_request_extra_params ?on_unauthenticated_request
    ?scope ?session_cookie_name ?session_timeout ~user_pool_arn
    ~user_pool_client_id ~user_pool_domain () :
    default_action__authenticate_cognito =
  {
    authentication_request_extra_params;
    on_unauthenticated_request;
    scope;
    session_cookie_name;
    session_timeout;
    user_pool_arn;
    user_pool_client_id;
    user_pool_domain;
  }

let default_action__authenticate_oidc
    ?authentication_request_extra_params ?on_unauthenticated_request
    ?scope ?session_cookie_name ?session_timeout
    ~authorization_endpoint ~client_id ~client_secret ~issuer
    ~token_endpoint ~user_info_endpoint () :
    default_action__authenticate_oidc =
  {
    authentication_request_extra_params;
    authorization_endpoint;
    client_id;
    client_secret;
    issuer;
    on_unauthenticated_request;
    scope;
    session_cookie_name;
    session_timeout;
    token_endpoint;
    user_info_endpoint;
  }

let default_action__fixed_response ?message_body ?status_code
    ~content_type () : default_action__fixed_response =
  { content_type; message_body; status_code }

let default_action__forward__stickiness ?enabled ~duration () :
    default_action__forward__stickiness =
  { duration; enabled }

let default_action__forward__target_group ?weight ~arn () :
    default_action__forward__target_group =
  { arn; weight }

let default_action__forward ?(stickiness = []) ~target_group () :
    default_action__forward =
  { stickiness; target_group }

let default_action__redirect ?host ?path ?port ?protocol ?query
    ~status_code () : default_action__redirect =
  { host; path; port; protocol; query; status_code }

let default_action ?order ?target_group_arn
    ?(authenticate_cognito = []) ?(authenticate_oidc = [])
    ?(fixed_response = []) ?(forward = []) ?(redirect = []) ~type_ ()
    : default_action =
  {
    order;
    target_group_arn;
    type_;
    authenticate_cognito;
    authenticate_oidc;
    fixed_response;
    forward;
    redirect;
  }

let mutual_authentication ?ignore_client_certificate_expiry
    ?trust_store_arn ~mode () : mutual_authentication =
  { ignore_client_certificate_expiry; mode; trust_store_arn }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_alb_listener ?alpn_policy ?certificate_arn ?id ?port
    ?protocol ?ssl_policy ?tags ?tags_all
    ?(mutual_authentication = []) ?timeouts ~load_balancer_arn
    ~default_action () : aws_alb_listener =
  {
    alpn_policy;
    certificate_arn;
    id;
    load_balancer_arn;
    port;
    protocol;
    ssl_policy;
    tags;
    tags_all;
    default_action;
    mutual_authentication;
    timeouts;
  }

type t = {
  tf_name : string;
  alpn_policy : string prop;
  arn : string prop;
  certificate_arn : string prop;
  id : string prop;
  load_balancer_arn : string prop;
  port : float prop;
  protocol : string prop;
  ssl_policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?alpn_policy ?certificate_arn ?id ?port ?protocol
    ?ssl_policy ?tags ?tags_all ?(mutual_authentication = [])
    ?timeouts ~load_balancer_arn ~default_action __id =
  let __type = "aws_alb_listener" in
  let __attrs =
    ({
       tf_name = __id;
       alpn_policy = Prop.computed __type __id "alpn_policy";
       arn = Prop.computed __type __id "arn";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       id = Prop.computed __type __id "id";
       load_balancer_arn =
         Prop.computed __type __id "load_balancer_arn";
       port = Prop.computed __type __id "port";
       protocol = Prop.computed __type __id "protocol";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_alb_listener
        (aws_alb_listener ?alpn_policy ?certificate_arn ?id ?port
           ?protocol ?ssl_policy ?tags ?tags_all
           ~mutual_authentication ?timeouts ~load_balancer_arn
           ~default_action ());
    attrs = __attrs;
  }

let register ?tf_module ?alpn_policy ?certificate_arn ?id ?port
    ?protocol ?ssl_policy ?tags ?tags_all
    ?(mutual_authentication = []) ?timeouts ~load_balancer_arn
    ~default_action __id =
  let (r : _ Tf_core.resource) =
    make ?alpn_policy ?certificate_arn ?id ?port ?protocol
      ?ssl_policy ?tags ?tags_all ~mutual_authentication ?timeouts
      ~load_balancer_arn ~default_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
