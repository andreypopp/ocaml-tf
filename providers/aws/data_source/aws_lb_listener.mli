(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_action__redirect = {
  host : string prop;  (** host *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  protocol : string prop;  (** protocol *)
  query : string prop;  (** query *)
  status_code : string prop;  (** status_code *)
}

type default_action__forward__target_group = {
  arn : string prop;  (** arn *)
  weight : float prop;  (** weight *)
}

type default_action__forward__stickiness = {
  duration : float prop;  (** duration *)
  enabled : bool prop;  (** enabled *)
}

type default_action__forward = {
  stickiness : default_action__forward__stickiness list;
      (** stickiness *)
  target_group : default_action__forward__target_group list;
      (** target_group *)
}

type default_action__fixed_response = {
  content_type : string prop;  (** content_type *)
  message_body : string prop;  (** message_body *)
  status_code : string prop;  (** status_code *)
}

type default_action__authenticate_oidc = {
  authentication_request_extra_params : (string * string prop) list;
      (** authentication_request_extra_params *)
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  issuer : string prop;  (** issuer *)
  on_unauthenticated_request : string prop;
      (** on_unauthenticated_request *)
  scope : string prop;  (** scope *)
  session_cookie_name : string prop;  (** session_cookie_name *)
  session_timeout : float prop;  (** session_timeout *)
  token_endpoint : string prop;  (** token_endpoint *)
  user_info_endpoint : string prop;  (** user_info_endpoint *)
}

type default_action__authenticate_cognito = {
  authentication_request_extra_params : (string * string prop) list;
      (** authentication_request_extra_params *)
  on_unauthenticated_request : string prop;
      (** on_unauthenticated_request *)
  scope : string prop;  (** scope *)
  session_cookie_name : string prop;  (** session_cookie_name *)
  session_timeout : float prop;  (** session_timeout *)
  user_pool_arn : string prop;  (** user_pool_arn *)
  user_pool_client_id : string prop;  (** user_pool_client_id *)
  user_pool_domain : string prop;  (** user_pool_domain *)
}

type default_action = {
  authenticate_cognito : default_action__authenticate_cognito list;
      (** authenticate_cognito *)
  authenticate_oidc : default_action__authenticate_oidc list;
      (** authenticate_oidc *)
  fixed_response : default_action__fixed_response list;
      (** fixed_response *)
  forward : default_action__forward list;  (** forward *)
  order : float prop;  (** order *)
  redirect : default_action__redirect list;  (** redirect *)
  target_group_arn : string prop;  (** target_group_arn *)
  type_ : string prop; [@key "type"]  (** type *)
}

type mutual_authentication = {
  ignore_client_certificate_expiry : bool prop;
      (** ignore_client_certificate_expiry *)
  mode : string prop;  (** mode *)
  trust_store_arn : string prop;  (** trust_store_arn *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_lb_listener

val aws_lb_listener :
  ?arn:string prop ->
  ?id:string prop ->
  ?load_balancer_arn:string prop ->
  ?port:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  unit ->
  aws_lb_listener

val yojson_of_aws_lb_listener : aws_lb_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?load_balancer_arn:string prop ->
  ?port:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?load_balancer_arn:string prop ->
  ?port:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
