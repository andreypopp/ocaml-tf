(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action__authenticate_cognito

val action__authenticate_cognito :
  ?authentication_request_extra_params:(string * string prop) list ->
  ?on_unauthenticated_request:string prop ->
  ?scope:string prop ->
  ?session_cookie_name:string prop ->
  ?session_timeout:float prop ->
  user_pool_arn:string prop ->
  user_pool_client_id:string prop ->
  user_pool_domain:string prop ->
  unit ->
  action__authenticate_cognito

type action__authenticate_oidc

val action__authenticate_oidc :
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
  action__authenticate_oidc

type action__fixed_response

val action__fixed_response :
  ?message_body:string prop ->
  ?status_code:string prop ->
  content_type:string prop ->
  unit ->
  action__fixed_response

type action__forward__stickiness

val action__forward__stickiness :
  ?enabled:bool prop ->
  duration:float prop ->
  unit ->
  action__forward__stickiness

type action__forward__target_group

val action__forward__target_group :
  ?weight:float prop ->
  arn:string prop ->
  unit ->
  action__forward__target_group

type action__forward

val action__forward :
  ?stickiness:action__forward__stickiness list ->
  target_group:action__forward__target_group list ->
  unit ->
  action__forward

type action__redirect

val action__redirect :
  ?host:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?protocol:string prop ->
  ?query:string prop ->
  status_code:string prop ->
  unit ->
  action__redirect

type action

val action :
  ?order:float prop ->
  ?target_group_arn:string prop ->
  ?authenticate_cognito:action__authenticate_cognito list ->
  ?authenticate_oidc:action__authenticate_oidc list ->
  ?fixed_response:action__fixed_response list ->
  ?forward:action__forward list ->
  ?redirect:action__redirect list ->
  type_:string prop ->
  unit ->
  action

type condition__host_header

val condition__host_header :
  values:string prop list -> unit -> condition__host_header

type condition__http_header

val condition__http_header :
  http_header_name:string prop ->
  values:string prop list ->
  unit ->
  condition__http_header

type condition__http_request_method

val condition__http_request_method :
  values:string prop list -> unit -> condition__http_request_method

type condition__path_pattern

val condition__path_pattern :
  values:string prop list -> unit -> condition__path_pattern

type condition__query_string

val condition__query_string :
  ?key:string prop ->
  value:string prop ->
  unit ->
  condition__query_string

type condition__source_ip

val condition__source_ip :
  values:string prop list -> unit -> condition__source_ip

type condition

val condition :
  ?host_header:condition__host_header list ->
  ?http_header:condition__http_header list ->
  ?http_request_method:condition__http_request_method list ->
  ?path_pattern:condition__path_pattern list ->
  ?source_ip:condition__source_ip list ->
  query_string:condition__query_string list ->
  unit ->
  condition

type aws_alb_listener_rule

val aws_alb_listener_rule :
  ?id:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  listener_arn:string prop ->
  action:action list ->
  condition:condition list ->
  unit ->
  aws_alb_listener_rule

val yojson_of_aws_alb_listener_rule : aws_alb_listener_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  listener_arn : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  listener_arn:string prop ->
  action:action list ->
  condition:condition list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  listener_arn:string prop ->
  action:action list ->
  condition:condition list ->
  string ->
  t Tf_core.resource
