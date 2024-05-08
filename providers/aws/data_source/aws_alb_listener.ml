(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type default_action__redirect = {
  host : string prop;
  path : string prop;
  port : string prop;
  protocol : string prop;
  query : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : default_action__redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__redirect

[@@@deriving.end]

type default_action__forward__target_group = {
  arn : string prop;
  weight : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
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

type default_action__forward__stickiness = {
  duration : float prop;
  enabled : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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

type default_action__forward = {
  stickiness : default_action__forward__stickiness list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_group : default_action__forward__target_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_target_group then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_action__forward__target_group)
               v_target_group
           in
           let bnd = "target_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stickiness then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_action__forward__stickiness)
               v_stickiness
           in
           let bnd = "stickiness", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_action__forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward

[@@@deriving.end]

type default_action__fixed_response = {
  content_type : string prop;
  message_body : string prop;
  status_code : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message_body in
         ("message_body", arg) :: bnds
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

type default_action__authenticate_oidc = {
  authentication_request_extra_params : (string * string prop) list;
  authorization_endpoint : string prop;
  client_id : string prop;
  client_secret : string prop;
  issuer : string prop;
  on_unauthenticated_request : string prop;
  scope : string prop;
  session_cookie_name : string prop;
  session_timeout : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_session_timeout
         in
         ("session_timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_cookie_name
         in
         ("session_cookie_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_on_unauthenticated_request
         in
         ("on_unauthenticated_request", arg) :: bnds
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_authentication_request_extra_params
         in
         ("authentication_request_extra_params", arg) :: bnds
       in
       `Assoc bnds
    : default_action__authenticate_oidc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__authenticate_oidc

[@@@deriving.end]

type default_action__authenticate_cognito = {
  authentication_request_extra_params : (string * string prop) list;
  on_unauthenticated_request : string prop;
  scope : string prop;
  session_cookie_name : string prop;
  session_timeout : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_session_timeout
         in
         ("session_timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_cookie_name
         in
         ("session_cookie_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_on_unauthenticated_request
         in
         ("on_unauthenticated_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_authentication_request_extra_params
         in
         ("authentication_request_extra_params", arg) :: bnds
       in
       `Assoc bnds
    : default_action__authenticate_cognito ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__authenticate_cognito

[@@@deriving.end]

type default_action = {
  authenticate_cognito : default_action__authenticate_cognito list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  authenticate_oidc : default_action__authenticate_oidc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fixed_response : default_action__fixed_response list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  forward : default_action__forward list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  order : float prop;
  redirect : default_action__redirect list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_group_arn : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action) -> ()

let yojson_of_default_action =
  (function
   | {
       authenticate_cognito = v_authenticate_cognito;
       authenticate_oidc = v_authenticate_oidc;
       fixed_response = v_fixed_response;
       forward = v_forward;
       order = v_order;
       redirect = v_redirect;
       target_group_arn = v_target_group_arn;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_group_arn
         in
         ("target_group_arn", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_redirect then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_action__redirect)
               v_redirect
           in
           let bnd = "redirect", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forward then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_action__forward)
               v_forward
           in
           let bnd = "forward", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fixed_response then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_action__fixed_response)
               v_fixed_response
           in
           let bnd = "fixed_response", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authenticate_oidc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_action__authenticate_oidc)
               v_authenticate_oidc
           in
           let bnd = "authenticate_oidc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authenticate_cognito then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_action__authenticate_cognito)
               v_authenticate_cognito
           in
           let bnd = "authenticate_cognito", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action

[@@@deriving.end]

type mutual_authentication = {
  ignore_client_certificate_expiry : bool prop;
  mode : string prop;
  trust_store_arn : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_trust_store_arn
         in
         ("trust_store_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_ignore_client_certificate_expiry
         in
         ("ignore_client_certificate_expiry", arg) :: bnds
       in
       `Assoc bnds
    : mutual_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mutual_authentication

[@@@deriving.end]

type aws_alb_listener = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  load_balancer_arn : string prop option; [@option]
  port : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_alb_listener) -> ()

let yojson_of_aws_alb_listener =
  (function
   | {
       arn = v_arn;
       id = v_id;
       load_balancer_arn = v_load_balancer_arn;
       port = v_port;
       tags = v_tags;
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_arn", arg in
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_alb_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_alb_listener

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_alb_listener ?arn ?id ?load_balancer_arn ?port ?tags
    ?timeouts () : aws_alb_listener =
  { arn; id; load_balancer_arn; port; tags; timeouts }

type t = {
  tf_name : string;
  alpn_policy : string prop;
  arn : string prop;
  certificate_arn : string prop;
  default_action : default_action list prop;
  id : string prop;
  load_balancer_arn : string prop;
  mutual_authentication : mutual_authentication list prop;
  port : float prop;
  protocol : string prop;
  ssl_policy : string prop;
  tags : (string * string) list prop;
}

let make ?arn ?id ?load_balancer_arn ?port ?tags ?timeouts __id =
  let __type = "aws_alb_listener" in
  let __attrs =
    ({
       tf_name = __id;
       alpn_policy = Prop.computed __type __id "alpn_policy";
       arn = Prop.computed __type __id "arn";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       load_balancer_arn =
         Prop.computed __type __id "load_balancer_arn";
       mutual_authentication =
         Prop.computed __type __id "mutual_authentication";
       port = Prop.computed __type __id "port";
       protocol = Prop.computed __type __id "protocol";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_alb_listener
        (aws_alb_listener ?arn ?id ?load_balancer_arn ?port ?tags
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?load_balancer_arn ?port ?tags
    ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?load_balancer_arn ?port ?tags ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
