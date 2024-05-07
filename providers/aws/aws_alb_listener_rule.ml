(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action__authenticate_cognito = {
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

let _ = fun (_ : action__authenticate_cognito) -> ()

let yojson_of_action__authenticate_cognito =
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
    : action__authenticate_cognito ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__authenticate_cognito

[@@@deriving.end]

type action__authenticate_oidc = {
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

let _ = fun (_ : action__authenticate_oidc) -> ()

let yojson_of_action__authenticate_oidc =
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
    : action__authenticate_oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__authenticate_oidc

[@@@deriving.end]

type action__fixed_response = {
  content_type : string prop;
  message_body : string prop option; [@option]
  status_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__fixed_response) -> ()

let yojson_of_action__fixed_response =
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
    : action__fixed_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__fixed_response

[@@@deriving.end]

type action__forward__stickiness = {
  duration : float prop;
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__forward__stickiness) -> ()

let yojson_of_action__forward__stickiness =
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
    : action__forward__stickiness ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__forward__stickiness

[@@@deriving.end]

type action__forward__target_group = {
  arn : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__forward__target_group) -> ()

let yojson_of_action__forward__target_group =
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
    : action__forward__target_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__forward__target_group

[@@@deriving.end]

type action__forward = {
  stickiness : action__forward__stickiness list;
  target_group : action__forward__target_group list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__forward) -> ()

let yojson_of_action__forward =
  (function
   | { stickiness = v_stickiness; target_group = v_target_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__forward__target_group
             v_target_group
         in
         ("target_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__forward__stickiness
             v_stickiness
         in
         ("stickiness", arg) :: bnds
       in
       `Assoc bnds
    : action__forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__forward

[@@@deriving.end]

type action__redirect = {
  host : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  protocol : string prop option; [@option]
  query : string prop option; [@option]
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__redirect) -> ()

let yojson_of_action__redirect =
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
    : action__redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__redirect

[@@@deriving.end]

type action = {
  order : float prop option; [@option]
  target_group_arn : string prop option; [@option]
  type_ : string prop; [@key "type"]
  authenticate_cognito : action__authenticate_cognito list;
  authenticate_oidc : action__authenticate_oidc list;
  fixed_response : action__fixed_response list;
  forward : action__forward list;
  redirect : action__redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
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
           yojson_of_list yojson_of_action__redirect v_redirect
         in
         ("redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__forward v_forward
         in
         ("forward", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__fixed_response
             v_fixed_response
         in
         ("fixed_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__authenticate_oidc
             v_authenticate_oidc
         in
         ("authenticate_oidc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__authenticate_cognito
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
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type condition__host_header = { values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__host_header) -> ()

let yojson_of_condition__host_header =
  (function
   | { values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       `Assoc bnds
    : condition__host_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__host_header

[@@@deriving.end]

type condition__http_header = {
  http_header_name : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__http_header) -> ()

let yojson_of_condition__http_header =
  (function
   | { http_header_name = v_http_header_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_header_name
         in
         ("http_header_name", arg) :: bnds
       in
       `Assoc bnds
    : condition__http_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__http_header

[@@@deriving.end]

type condition__http_request_method = { values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__http_request_method) -> ()

let yojson_of_condition__http_request_method =
  (function
   | { values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       `Assoc bnds
    : condition__http_request_method ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__http_request_method

[@@@deriving.end]

type condition__path_pattern = { values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__path_pattern) -> ()

let yojson_of_condition__path_pattern =
  (function
   | { values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       `Assoc bnds
    : condition__path_pattern -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__path_pattern

[@@@deriving.end]

type condition__query_string = {
  key : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__query_string) -> ()

let yojson_of_condition__query_string =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : condition__query_string -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__query_string

[@@@deriving.end]

type condition__source_ip = { values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__source_ip) -> ()

let yojson_of_condition__source_ip =
  (function
   | { values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       `Assoc bnds
    : condition__source_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__source_ip

[@@@deriving.end]

type condition = {
  host_header : condition__host_header list;
  http_header : condition__http_header list;
  http_request_method : condition__http_request_method list;
  path_pattern : condition__path_pattern list;
  query_string : condition__query_string list;
  source_ip : condition__source_ip list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       host_header = v_host_header;
       http_header = v_http_header;
       http_request_method = v_http_request_method;
       path_pattern = v_path_pattern;
       query_string = v_query_string;
       source_ip = v_source_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__source_ip v_source_ip
         in
         ("source_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__query_string
             v_query_string
         in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__path_pattern
             v_path_pattern
         in
         ("path_pattern", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__http_request_method
             v_http_request_method
         in
         ("http_request_method", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__http_header
             v_http_header
         in
         ("http_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__host_header
             v_host_header
         in
         ("host_header", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type aws_alb_listener_rule = {
  id : string prop option; [@option]
  listener_arn : string prop;
  priority : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  action : action list;
  condition : condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_alb_listener_rule) -> ()

let yojson_of_aws_alb_listener_rule =
  (function
   | {
       id = v_id;
       listener_arn = v_listener_arn;
       priority = v_priority;
       tags = v_tags;
       tags_all = v_tags_all;
       action = v_action;
       condition = v_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_listener_arn in
         ("listener_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_alb_listener_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_alb_listener_rule

[@@@deriving.end]

let action__authenticate_cognito ?authentication_request_extra_params
    ?on_unauthenticated_request ?scope ?session_cookie_name
    ?session_timeout ~user_pool_arn ~user_pool_client_id
    ~user_pool_domain () : action__authenticate_cognito =
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

let action__authenticate_oidc ?authentication_request_extra_params
    ?on_unauthenticated_request ?scope ?session_cookie_name
    ?session_timeout ~authorization_endpoint ~client_id
    ~client_secret ~issuer ~token_endpoint ~user_info_endpoint () :
    action__authenticate_oidc =
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

let action__fixed_response ?message_body ?status_code ~content_type
    () : action__fixed_response =
  { content_type; message_body; status_code }

let action__forward__stickiness ?enabled ~duration () :
    action__forward__stickiness =
  { duration; enabled }

let action__forward__target_group ?weight ~arn () :
    action__forward__target_group =
  { arn; weight }

let action__forward ?(stickiness = []) ~target_group () :
    action__forward =
  { stickiness; target_group }

let action__redirect ?host ?path ?port ?protocol ?query ~status_code
    () : action__redirect =
  { host; path; port; protocol; query; status_code }

let action ?order ?target_group_arn ?(authenticate_cognito = [])
    ?(authenticate_oidc = []) ?(fixed_response = []) ?(forward = [])
    ?(redirect = []) ~type_ () : action =
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

let condition__host_header ~values () : condition__host_header =
  { values }

let condition__http_header ~http_header_name ~values () :
    condition__http_header =
  { http_header_name; values }

let condition__http_request_method ~values () :
    condition__http_request_method =
  { values }

let condition__path_pattern ~values () : condition__path_pattern =
  { values }

let condition__query_string ?key ~value () : condition__query_string
    =
  { key; value }

let condition__source_ip ~values () : condition__source_ip =
  { values }

let condition ?(host_header = []) ?(http_header = [])
    ?(http_request_method = []) ?(path_pattern = [])
    ?(source_ip = []) ~query_string () : condition =
  {
    host_header;
    http_header;
    http_request_method;
    path_pattern;
    query_string;
    source_ip;
  }

let aws_alb_listener_rule ?id ?priority ?tags ?tags_all ~listener_arn
    ~action ~condition () : aws_alb_listener_rule =
  { id; listener_arn; priority; tags; tags_all; action; condition }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  listener_arn : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?priority ?tags ?tags_all ~listener_arn ~action
    ~condition __id =
  let __type = "aws_alb_listener_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       listener_arn = Prop.computed __type __id "listener_arn";
       priority = Prop.computed __type __id "priority";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_alb_listener_rule
        (aws_alb_listener_rule ?id ?priority ?tags ?tags_all
           ~listener_arn ~action ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?priority ?tags ?tags_all ~listener_arn
    ~action ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?priority ?tags ?tags_all ~listener_arn ~action
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
