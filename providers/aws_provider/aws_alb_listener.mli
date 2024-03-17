(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb_listener__default_action__authenticate_cognito
type aws_alb_listener__default_action__authenticate_oidc
type aws_alb_listener__default_action__fixed_response
type aws_alb_listener__default_action__forward__stickiness
type aws_alb_listener__default_action__forward__target_group
type aws_alb_listener__default_action__forward
type aws_alb_listener__default_action__redirect
type aws_alb_listener__default_action
type aws_alb_listener__mutual_authentication
type aws_alb_listener__timeouts
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
  ?timeouts:aws_alb_listener__timeouts ->
  load_balancer_arn:string prop ->
  default_action:aws_alb_listener__default_action list ->
  mutual_authentication:aws_alb_listener__mutual_authentication list ->
  string ->
  unit
