(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_target_group__health_check
type aws_lb_target_group__stickiness
type aws_lb_target_group__target_failover
type aws_lb_target_group__target_health_state
type aws_lb_target_group

val aws_lb_target_group :
  ?connection_termination:bool ->
  ?deregistration_delay:string ->
  ?id:string ->
  ?ip_address_type:string ->
  ?lambda_multi_value_headers_enabled:bool ->
  ?load_balancing_algorithm_type:string ->
  ?load_balancing_anomaly_mitigation:string ->
  ?load_balancing_cross_zone_enabled:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?port:float ->
  ?preserve_client_ip:string ->
  ?protocol:string ->
  ?protocol_version:string ->
  ?proxy_protocol_v2:bool ->
  ?slow_start:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?target_type:string ->
  ?vpc_id:string ->
  health_check:aws_lb_target_group__health_check list ->
  stickiness:aws_lb_target_group__stickiness list ->
  target_failover:aws_lb_target_group__target_failover list ->
  target_health_state:aws_lb_target_group__target_health_state list ->
  string ->
  unit
