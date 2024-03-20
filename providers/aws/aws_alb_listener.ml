(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_action__authenticate_cognito = {
  authentication_request_extra_params :
    (string * string prop) list option;
      [@option]
      (** authentication_request_extra_params *)
  on_unauthenticated_request : string prop option; [@option]
      (** on_unauthenticated_request *)
  scope : string prop option; [@option]  (** scope *)
  session_cookie_name : string prop option; [@option]
      (** session_cookie_name *)
  session_timeout : float prop option; [@option]
      (** session_timeout *)
  user_pool_arn : string prop;  (** user_pool_arn *)
  user_pool_client_id : string prop;  (** user_pool_client_id *)
  user_pool_domain : string prop;  (** user_pool_domain *)
}
[@@deriving yojson_of]
(** default_action__authenticate_cognito *)

type default_action__authenticate_oidc = {
  authentication_request_extra_params :
    (string * string prop) list option;
      [@option]
      (** authentication_request_extra_params *)
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  issuer : string prop;  (** issuer *)
  on_unauthenticated_request : string prop option; [@option]
      (** on_unauthenticated_request *)
  scope : string prop option; [@option]  (** scope *)
  session_cookie_name : string prop option; [@option]
      (** session_cookie_name *)
  session_timeout : float prop option; [@option]
      (** session_timeout *)
  token_endpoint : string prop;  (** token_endpoint *)
  user_info_endpoint : string prop;  (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** default_action__authenticate_oidc *)

type default_action__fixed_response = {
  content_type : string prop;  (** content_type *)
  message_body : string prop option; [@option]  (** message_body *)
  status_code : string prop option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** default_action__fixed_response *)

type default_action__forward__stickiness = {
  duration : float prop;  (** duration *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** default_action__forward__stickiness *)

type default_action__forward__target_group = {
  arn : string prop;  (** arn *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** default_action__forward__target_group *)

type default_action__forward = {
  stickiness : default_action__forward__stickiness list;
  target_group : default_action__forward__target_group list;
}
[@@deriving yojson_of]
(** default_action__forward *)

type default_action__redirect = {
  host : string prop option; [@option]  (** host *)
  path : string prop option; [@option]  (** path *)
  port : string prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  query : string prop option; [@option]  (** query *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** default_action__redirect *)

type default_action = {
  order : float prop option; [@option]  (** order *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
  type_ : string prop; [@key "type"]  (** type *)
  authenticate_cognito : default_action__authenticate_cognito list;
  authenticate_oidc : default_action__authenticate_oidc list;
  fixed_response : default_action__fixed_response list;
  forward : default_action__forward list;
  redirect : default_action__redirect list;
}
[@@deriving yojson_of]
(** default_action *)

type mutual_authentication = {
  ignore_client_certificate_expiry : bool prop option; [@option]
      (** ignore_client_certificate_expiry *)
  mode : string prop;  (** mode *)
  trust_store_arn : string prop option; [@option]
      (** trust_store_arn *)
}
[@@deriving yojson_of]
(** mutual_authentication *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_alb_listener = {
  alpn_policy : string prop option; [@option]  (** alpn_policy *)
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  id : string prop option; [@option]  (** id *)
  load_balancer_arn : string prop;  (** load_balancer_arn *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  ssl_policy : string prop option; [@option]  (** ssl_policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  default_action : default_action list;
  mutual_authentication : mutual_authentication list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_alb_listener *)

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

let default_action__forward ~stickiness ~target_group () :
    default_action__forward =
  { stickiness; target_group }

let default_action__redirect ?host ?path ?port ?protocol ?query
    ~status_code () : default_action__redirect =
  { host; path; port; protocol; query; status_code }

let default_action ?order ?target_group_arn ~type_
    ~authenticate_cognito ~authenticate_oidc ~fixed_response ~forward
    ~redirect () : default_action =
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
    ?protocol ?ssl_policy ?tags ?tags_all ?timeouts
    ~load_balancer_arn ~default_action ~mutual_authentication () :
    aws_alb_listener =
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
    ?ssl_policy ?tags ?tags_all ?timeouts ~load_balancer_arn
    ~default_action ~mutual_authentication __id =
  let __type = "aws_alb_listener" in
  let __attrs =
    ({
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
           ?protocol ?ssl_policy ?tags ?tags_all ?timeouts
           ~load_balancer_arn ~default_action ~mutual_authentication
           ());
    attrs = __attrs;
  }

let register ?tf_module ?alpn_policy ?certificate_arn ?id ?port
    ?protocol ?ssl_policy ?tags ?tags_all ?timeouts
    ~load_balancer_arn ~default_action ~mutual_authentication __id =
  let (r : _ Tf_core.resource) =
    make ?alpn_policy ?certificate_arn ?id ?port ?protocol
      ?ssl_policy ?tags ?tags_all ?timeouts ~load_balancer_arn
      ~default_action ~mutual_authentication __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
