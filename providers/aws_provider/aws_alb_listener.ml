(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_alb_listener__default_action__authenticate_cognito = {
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
(** aws_alb_listener__default_action__authenticate_cognito *)

type aws_alb_listener__default_action__authenticate_oidc = {
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
(** aws_alb_listener__default_action__authenticate_oidc *)

type aws_alb_listener__default_action__fixed_response = {
  content_type : string prop;  (** content_type *)
  message_body : string prop option; [@option]  (** message_body *)
  status_code : string prop option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** aws_alb_listener__default_action__fixed_response *)

type aws_alb_listener__default_action__forward__stickiness = {
  duration : float prop;  (** duration *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_alb_listener__default_action__forward__stickiness *)

type aws_alb_listener__default_action__forward__target_group = {
  arn : string prop;  (** arn *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_alb_listener__default_action__forward__target_group *)

type aws_alb_listener__default_action__forward = {
  stickiness :
    aws_alb_listener__default_action__forward__stickiness list;
  target_group :
    aws_alb_listener__default_action__forward__target_group list;
}
[@@deriving yojson_of]
(** aws_alb_listener__default_action__forward *)

type aws_alb_listener__default_action__redirect = {
  host : string prop option; [@option]  (** host *)
  path : string prop option; [@option]  (** path *)
  port : string prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  query : string prop option; [@option]  (** query *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_alb_listener__default_action__redirect *)

type aws_alb_listener__default_action = {
  order : float prop option; [@option]  (** order *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
  type_ : string prop; [@key "type"]  (** type *)
  authenticate_cognito :
    aws_alb_listener__default_action__authenticate_cognito list;
  authenticate_oidc :
    aws_alb_listener__default_action__authenticate_oidc list;
  fixed_response :
    aws_alb_listener__default_action__fixed_response list;
  forward : aws_alb_listener__default_action__forward list;
  redirect : aws_alb_listener__default_action__redirect list;
}
[@@deriving yojson_of]
(** aws_alb_listener__default_action *)

type aws_alb_listener__mutual_authentication = {
  ignore_client_certificate_expiry : bool prop option; [@option]
      (** ignore_client_certificate_expiry *)
  mode : string prop;  (** mode *)
  trust_store_arn : string prop option; [@option]
      (** trust_store_arn *)
}
[@@deriving yojson_of]
(** aws_alb_listener__mutual_authentication *)

type aws_alb_listener__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_alb_listener__timeouts *)

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
  default_action : aws_alb_listener__default_action list;
  mutual_authentication :
    aws_alb_listener__mutual_authentication list;
  timeouts : aws_alb_listener__timeouts option;
}
[@@deriving yojson_of]
(** aws_alb_listener *)

let aws_alb_listener ?alpn_policy ?certificate_arn ?id ?port
    ?protocol ?ssl_policy ?tags ?tags_all ?timeouts
    ~load_balancer_arn ~default_action ~mutual_authentication
    __resource_id =
  let __resource_type = "aws_alb_listener" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_alb_listener __resource);
  ()
