(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb_target_group__health_check
type aws_alb_target_group__stickiness
type aws_alb_target_group__target_failover
type aws_alb_target_group__target_health_state
type aws_alb_target_group

type t = private {
  arn : string prop;
  arn_suffix : string prop;
  connection_termination : bool prop;
  deregistration_delay : string prop;
  id : string prop;
  ip_address_type : string prop;
  lambda_multi_value_headers_enabled : bool prop;
  load_balancer_arns : string list prop;
  load_balancing_algorithm_type : string prop;
  load_balancing_anomaly_mitigation : string prop;
  load_balancing_cross_zone_enabled : string prop;
  name : string prop;
  name_prefix : string prop;
  port : float prop;
  preserve_client_ip : string prop;
  protocol : string prop;
  protocol_version : string prop;
  proxy_protocol_v2 : bool prop;
  slow_start : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_type : string prop;
  vpc_id : string prop;
}

val aws_alb_target_group :
  ?connection_termination:bool prop ->
  ?deregistration_delay:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?lambda_multi_value_headers_enabled:bool prop ->
  ?load_balancing_algorithm_type:string prop ->
  ?load_balancing_anomaly_mitigation:string prop ->
  ?load_balancing_cross_zone_enabled:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?port:float prop ->
  ?preserve_client_ip:string prop ->
  ?protocol:string prop ->
  ?protocol_version:string prop ->
  ?proxy_protocol_v2:bool prop ->
  ?slow_start:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_type:string prop ->
  ?vpc_id:string prop ->
  health_check:aws_alb_target_group__health_check list ->
  stickiness:aws_alb_target_group__stickiness list ->
  target_failover:aws_alb_target_group__target_failover list ->
  target_health_state:aws_alb_target_group__target_health_state list ->
  string ->
  t
