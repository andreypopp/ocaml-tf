(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type health_check = {
  enabled : bool prop;  (** enabled *)
  healthy_threshold : float prop;  (** healthy_threshold *)
  interval : float prop;  (** interval *)
  matcher : string prop;  (** matcher *)
  path : string prop;  (** path *)
  port : string prop;  (** port *)
  protocol : string prop;  (** protocol *)
  timeout : float prop;  (** timeout *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}

type stickiness = {
  cookie_duration : float prop;  (** cookie_duration *)
  cookie_name : string prop;  (** cookie_name *)
  enabled : bool prop;  (** enabled *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_alb_target_group

val aws_alb_target_group :
  ?arn:string prop ->
  ?id:string prop ->
  ?load_balancing_anomaly_mitigation:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  unit ->
  aws_alb_target_group

val yojson_of_aws_alb_target_group : aws_alb_target_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  arn_suffix : string prop;
  connection_termination : bool prop;
  deregistration_delay : string prop;
  health_check : health_check list prop;
  id : string prop;
  lambda_multi_value_headers_enabled : bool prop;
  load_balancer_arns : string list prop;
  load_balancing_algorithm_type : string prop;
  load_balancing_anomaly_mitigation : string prop;
  load_balancing_cross_zone_enabled : string prop;
  name : string prop;
  port : float prop;
  preserve_client_ip : string prop;
  protocol : string prop;
  protocol_version : string prop;
  proxy_protocol_v2 : bool prop;
  slow_start : float prop;
  stickiness : stickiness list prop;
  tags : (string * string) list prop;
  target_type : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?load_balancing_anomaly_mitigation:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?load_balancing_anomaly_mitigation:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
