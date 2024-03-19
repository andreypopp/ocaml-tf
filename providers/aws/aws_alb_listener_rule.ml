(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type action__authenticate_cognito = {
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
(** action__authenticate_cognito *)

type action__authenticate_oidc = {
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
(** action__authenticate_oidc *)

type action__fixed_response = {
  content_type : string prop;  (** content_type *)
  message_body : string prop option; [@option]  (** message_body *)
  status_code : string prop option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** action__fixed_response *)

type action__forward__stickiness = {
  duration : float prop;  (** duration *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** action__forward__stickiness *)

type action__forward__target_group = {
  arn : string prop;  (** arn *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** action__forward__target_group *)

type action__forward = {
  stickiness : action__forward__stickiness list;
  target_group : action__forward__target_group list;
}
[@@deriving yojson_of]
(** action__forward *)

type action__redirect = {
  host : string prop option; [@option]  (** host *)
  path : string prop option; [@option]  (** path *)
  port : string prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  query : string prop option; [@option]  (** query *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** action__redirect *)

type action = {
  order : float prop option; [@option]  (** order *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
  type_ : string prop; [@key "type"]  (** type *)
  authenticate_cognito : action__authenticate_cognito list;
  authenticate_oidc : action__authenticate_oidc list;
  fixed_response : action__fixed_response list;
  forward : action__forward list;
  redirect : action__redirect list;
}
[@@deriving yojson_of]
(** action *)

type condition__host_header = {
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__host_header *)

type condition__http_header = {
  http_header_name : string prop;  (** http_header_name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__http_header *)

type condition__http_request_method = {
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__http_request_method *)

type condition__path_pattern = {
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__path_pattern *)

type condition__query_string = {
  key : string prop option; [@option]  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** condition__query_string *)

type condition__source_ip = {
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition__source_ip *)

type condition = {
  host_header : condition__host_header list;
  http_header : condition__http_header list;
  http_request_method : condition__http_request_method list;
  path_pattern : condition__path_pattern list;
  query_string : condition__query_string list;
  source_ip : condition__source_ip list;
}
[@@deriving yojson_of]
(** condition *)

type aws_alb_listener_rule = {
  id : string prop option; [@option]  (** id *)
  listener_arn : string prop;  (** listener_arn *)
  priority : float prop option; [@option]  (** priority *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action : action list;
  condition : condition list;
}
[@@deriving yojson_of]
(** aws_alb_listener_rule *)

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

let action__forward ~stickiness ~target_group () : action__forward =
  { stickiness; target_group }

let action__redirect ?host ?path ?port ?protocol ?query ~status_code
    () : action__redirect =
  { host; path; port; protocol; query; status_code }

let action ?order ?target_group_arn ~type_ ~authenticate_cognito
    ~authenticate_oidc ~fixed_response ~forward ~redirect () : action
    =
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

let condition ~host_header ~http_header ~http_request_method
    ~path_pattern ~query_string ~source_ip () : condition =
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
  arn : string prop;
  id : string prop;
  listener_arn : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?priority ?tags ?tags_all ~listener_arn
    ~action ~condition __resource_id =
  let __resource_type = "aws_alb_listener_rule" in
  let __resource =
    aws_alb_listener_rule ?id ?priority ?tags ?tags_all ~listener_arn
      ~action ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_alb_listener_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       listener_arn =
         Prop.computed __resource_type __resource_id "listener_arn";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
