(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_listener_rule__action__authenticate_cognito = {
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
(** aws_lb_listener_rule__action__authenticate_cognito *)

type aws_lb_listener_rule__action__authenticate_oidc = {
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
(** aws_lb_listener_rule__action__authenticate_oidc *)

type aws_lb_listener_rule__action__fixed_response = {
  content_type : string;  (** content_type *)
  message_body : string option; [@option]  (** message_body *)
  status_code : string option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__action__fixed_response *)

type aws_lb_listener_rule__action__forward__stickiness = {
  duration : float;  (** duration *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__action__forward__stickiness *)

type aws_lb_listener_rule__action__forward__target_group = {
  arn : string;  (** arn *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__action__forward__target_group *)

type aws_lb_listener_rule__action__forward = {
  stickiness :
    aws_lb_listener_rule__action__forward__stickiness list;
  target_group :
    aws_lb_listener_rule__action__forward__target_group list;
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__action__forward *)

type aws_lb_listener_rule__action__redirect = {
  host : string option; [@option]  (** host *)
  path : string option; [@option]  (** path *)
  port : string option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
  query : string option; [@option]  (** query *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__action__redirect *)

type aws_lb_listener_rule__action = {
  order : float option; [@option]  (** order *)
  target_group_arn : string option; [@option]
      (** target_group_arn *)
  type_ : string; [@key "type"]  (** type *)
  authenticate_cognito :
    aws_lb_listener_rule__action__authenticate_cognito list;
  authenticate_oidc :
    aws_lb_listener_rule__action__authenticate_oidc list;
  fixed_response : aws_lb_listener_rule__action__fixed_response list;
  forward : aws_lb_listener_rule__action__forward list;
  redirect : aws_lb_listener_rule__action__redirect list;
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__action *)

type aws_lb_listener_rule__condition__host_header = {
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition__host_header *)

type aws_lb_listener_rule__condition__http_header = {
  http_header_name : string;  (** http_header_name *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition__http_header *)

type aws_lb_listener_rule__condition__http_request_method = {
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition__http_request_method *)

type aws_lb_listener_rule__condition__path_pattern = {
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition__path_pattern *)

type aws_lb_listener_rule__condition__query_string = {
  key : string option; [@option]  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition__query_string *)

type aws_lb_listener_rule__condition__source_ip = {
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition__source_ip *)

type aws_lb_listener_rule__condition = {
  host_header : aws_lb_listener_rule__condition__host_header list;
  http_header : aws_lb_listener_rule__condition__http_header list;
  http_request_method :
    aws_lb_listener_rule__condition__http_request_method list;
  path_pattern : aws_lb_listener_rule__condition__path_pattern list;
  query_string : aws_lb_listener_rule__condition__query_string list;
  source_ip : aws_lb_listener_rule__condition__source_ip list;
}
[@@deriving yojson_of]
(** aws_lb_listener_rule__condition *)

type aws_lb_listener_rule = {
  id : string option; [@option]  (** id *)
  listener_arn : string;  (** listener_arn *)
  priority : float option; [@option]  (** priority *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  action : aws_lb_listener_rule__action list;
  condition : aws_lb_listener_rule__condition list;
}
[@@deriving yojson_of]
(** aws_lb_listener_rule *)

let aws_lb_listener_rule ?id ?priority ?tags ?tags_all ~listener_arn
    ~action ~condition __resource_id =
  let __resource_type = "aws_lb_listener_rule" in
  let __resource =
    { id; listener_arn; priority; tags; tags_all; action; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_listener_rule __resource);
  ()
