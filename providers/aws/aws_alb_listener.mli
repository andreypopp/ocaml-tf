(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_action__authenticate_cognito

val default_action__authenticate_cognito :
  ?authentication_request_extra_params:(string * string prop) list ->
  ?on_unauthenticated_request:string prop ->
  ?scope:string prop ->
  ?session_cookie_name:string prop ->
  ?session_timeout:float prop ->
  user_pool_arn:string prop ->
  user_pool_client_id:string prop ->
  user_pool_domain:string prop ->
  unit ->
  default_action__authenticate_cognito

type default_action__authenticate_oidc

val default_action__authenticate_oidc :
  ?authentication_request_extra_params:(string * string prop) list ->
  ?on_unauthenticated_request:string prop ->
  ?scope:string prop ->
  ?session_cookie_name:string prop ->
  ?session_timeout:float prop ->
  authorization_endpoint:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  issuer:string prop ->
  token_endpoint:string prop ->
  user_info_endpoint:string prop ->
  unit ->
  default_action__authenticate_oidc

type default_action__fixed_response

val default_action__fixed_response :
  ?message_body:string prop ->
  ?status_code:string prop ->
  content_type:string prop ->
  unit ->
  default_action__fixed_response

type default_action__forward__stickiness

val default_action__forward__stickiness :
  ?enabled:bool prop ->
  duration:float prop ->
  unit ->
  default_action__forward__stickiness

type default_action__forward__target_group

val default_action__forward__target_group :
  ?weight:float prop ->
  arn:string prop ->
  unit ->
  default_action__forward__target_group

type default_action__forward

val default_action__forward :
  ?stickiness:default_action__forward__stickiness list ->
  target_group:default_action__forward__target_group list ->
  unit ->
  default_action__forward

type default_action__redirect

val default_action__redirect :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?protocol:string prop ->
  ?query:string prop ->
  status_code:string prop ->
  unit ->
  default_action__redirect

type default_action

val default_action :
  ?order:float prop ->
  ?target_group_arn:string prop ->
  ?authenticate_cognito:default_action__authenticate_cognito list ->
  ?authenticate_oidc:default_action__authenticate_oidc list ->
  ?fixed_response:default_action__fixed_response list ->
  ?forward:default_action__forward list ->
  ?redirect:default_action__redirect list ->
  type_:string prop ->
  unit ->
  default_action

type mutual_authentication

val mutual_authentication :
  ?ignore_client_certificate_expiry:bool prop ->
  ?trust_store_arn:string prop ->
  mode:string prop ->
  unit ->
  mutual_authentication

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_alb_listener

val aws_alb_listener :
  ?alpn_policy:string prop ->
  ?certificate_arn:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  ?ssl_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?mutual_authentication:mutual_authentication list ->
  ?timeouts:timeouts ->
  load_balancer_arn:string prop ->
  default_action:default_action list ->
  unit ->
  aws_alb_listener

val yojson_of_aws_alb_listener : aws_alb_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?alpn_policy:string prop ->
  ?certificate_arn:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  ?ssl_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?mutual_authentication:mutual_authentication list ->
  ?timeouts:timeouts ->
  load_balancer_arn:string prop ->
  default_action:default_action list ->
  string ->
  t

val make :
  ?alpn_policy:string prop ->
  ?certificate_arn:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  ?ssl_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?mutual_authentication:mutual_authentication list ->
  ?timeouts:timeouts ->
  load_balancer_arn:string prop ->
  default_action:default_action list ->
  string ->
  t Tf_core.resource
