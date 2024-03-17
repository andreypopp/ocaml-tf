(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb_listener_rule__action__authenticate_cognito
type aws_alb_listener_rule__action__authenticate_oidc
type aws_alb_listener_rule__action__fixed_response
type aws_alb_listener_rule__action__forward__stickiness
type aws_alb_listener_rule__action__forward__target_group
type aws_alb_listener_rule__action__forward
type aws_alb_listener_rule__action__redirect
type aws_alb_listener_rule__action
type aws_alb_listener_rule__condition__host_header
type aws_alb_listener_rule__condition__http_header
type aws_alb_listener_rule__condition__http_request_method
type aws_alb_listener_rule__condition__path_pattern
type aws_alb_listener_rule__condition__query_string
type aws_alb_listener_rule__condition__source_ip
type aws_alb_listener_rule__condition
type aws_alb_listener_rule

val aws_alb_listener_rule :
  ?id:string prop ->
  ?priority:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  listener_arn:string prop ->
  action:aws_alb_listener_rule__action list ->
  condition:aws_alb_listener_rule__condition list ->
  string ->
  unit
