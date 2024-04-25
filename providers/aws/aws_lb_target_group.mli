(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type health_check

val health_check :
  ?enabled:bool prop ->
  ?healthy_threshold:float prop ->
  ?interval:float prop ->
  ?matcher:string prop ->
  ?path:string prop ->
  ?port:string prop ->
  ?protocol:string prop ->
  ?timeout:float prop ->
  ?unhealthy_threshold:float prop ->
  unit ->
  health_check

type stickiness

val stickiness :
  ?cookie_duration:float prop ->
  ?cookie_name:string prop ->
  ?enabled:bool prop ->
  type_:string prop ->
  unit ->
  stickiness

type target_failover

val target_failover :
  on_deregistration:string prop ->
  on_unhealthy:string prop ->
  unit ->
  target_failover

type target_health_state

val target_health_state :
  enable_unhealthy_connection_termination:bool prop ->
  unit ->
  target_health_state

type aws_lb_target_group

val aws_lb_target_group :
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
  ?health_check:health_check list ->
  ?stickiness:stickiness list ->
  ?target_failover:target_failover list ->
  ?target_health_state:target_health_state list ->
  unit ->
  aws_lb_target_group

val yojson_of_aws_lb_target_group : aws_lb_target_group -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?health_check:health_check list ->
  ?stickiness:stickiness list ->
  ?target_failover:target_failover list ->
  ?target_health_state:target_health_state list ->
  string ->
  t

val make :
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
  ?health_check:health_check list ->
  ?stickiness:stickiness list ->
  ?target_failover:target_failover list ->
  ?target_health_state:target_health_state list ->
  string ->
  t Tf_core.resource
