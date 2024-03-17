(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lb_listener__default_action__authenticate_cognito = {
  authentication_request_extra_params :
    (string * string) list option;
      [@option]
      (** authentication_request_extra_params *)
  on_unauthenticated_request : string option; [@option]
      (** on_unauthenticated_request *)
  scope : string option; [@option]  (** scope *)
  session_cookie_name : string option; [@option]
      (** session_cookie_name *)
  session_timeout : float option; [@option]  (** session_timeout *)
  user_pool_arn : string;  (** user_pool_arn *)
  user_pool_client_id : string;  (** user_pool_client_id *)
  user_pool_domain : string;  (** user_pool_domain *)
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__authenticate_cognito *)

type aws_lb_listener__default_action__authenticate_oidc = {
  authentication_request_extra_params :
    (string * string) list option;
      [@option]
      (** authentication_request_extra_params *)
  authorization_endpoint : string;  (** authorization_endpoint *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  issuer : string;  (** issuer *)
  on_unauthenticated_request : string option; [@option]
      (** on_unauthenticated_request *)
  scope : string option; [@option]  (** scope *)
  session_cookie_name : string option; [@option]
      (** session_cookie_name *)
  session_timeout : float option; [@option]  (** session_timeout *)
  token_endpoint : string;  (** token_endpoint *)
  user_info_endpoint : string;  (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__authenticate_oidc *)

type aws_lb_listener__default_action__fixed_response = {
  content_type : string;  (** content_type *)
  message_body : string option; [@option]  (** message_body *)
  status_code : string option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__fixed_response *)

type aws_lb_listener__default_action__forward__stickiness = {
  duration : float;  (** duration *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__forward__stickiness *)

type aws_lb_listener__default_action__forward__target_group = {
  arn : string;  (** arn *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__forward__target_group *)

type aws_lb_listener__default_action__forward = {
  stickiness :
    aws_lb_listener__default_action__forward__stickiness list;
  target_group :
    aws_lb_listener__default_action__forward__target_group list;
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__forward *)

type aws_lb_listener__default_action__redirect = {
  host : string option; [@option]  (** host *)
  path : string option; [@option]  (** path *)
  port : string option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
  query : string option; [@option]  (** query *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action__redirect *)

type aws_lb_listener__default_action = {
  order : float option; [@option]  (** order *)
  target_group_arn : string option; [@option]
      (** target_group_arn *)
  type_ : string; [@key "type"]  (** type *)
  authenticate_cognito :
    aws_lb_listener__default_action__authenticate_cognito list;
  authenticate_oidc :
    aws_lb_listener__default_action__authenticate_oidc list;
  fixed_response :
    aws_lb_listener__default_action__fixed_response list;
  forward : aws_lb_listener__default_action__forward list;
  redirect : aws_lb_listener__default_action__redirect list;
}
[@@deriving yojson_of]
(** aws_lb_listener__default_action *)

type aws_lb_listener__mutual_authentication = {
  ignore_client_certificate_expiry : bool option; [@option]
      (** ignore_client_certificate_expiry *)
  mode : string;  (** mode *)
  trust_store_arn : string option; [@option]  (** trust_store_arn *)
}
[@@deriving yojson_of]
(** aws_lb_listener__mutual_authentication *)

type aws_lb_listener__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lb_listener__timeouts *)

type aws_lb_listener = {
  alpn_policy : string option; [@option]  (** alpn_policy *)
  certificate_arn : string option; [@option]  (** certificate_arn *)
  load_balancer_arn : string;  (** load_balancer_arn *)
  port : float option; [@option]  (** port *)
  tags : (string * string) list option; [@option]  (** tags *)
  default_action : aws_lb_listener__default_action list;
  mutual_authentication :
    aws_lb_listener__mutual_authentication list;
  timeouts : aws_lb_listener__timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_listener *)

let aws_lb_listener ?alpn_policy ?certificate_arn ?port ?tags
    ?timeouts ~load_balancer_arn ~default_action
    ~mutual_authentication __resource_id =
  let __resource_type = "aws_lb_listener" in
  let __resource =
    {
      alpn_policy;
      certificate_arn;
      load_balancer_arn;
      port;
      tags;
      default_action;
      mutual_authentication;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_listener __resource);
  ()
