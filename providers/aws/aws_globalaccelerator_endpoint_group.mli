(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint_configuration

val endpoint_configuration :
  ?client_ip_preservation_enabled:bool prop ->
  ?endpoint_id:string prop ->
  ?weight:float prop ->
  unit ->
  endpoint_configuration

type port_override

val port_override :
  endpoint_port:float prop ->
  listener_port:float prop ->
  unit ->
  port_override

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_globalaccelerator_endpoint_group

val aws_globalaccelerator_endpoint_group :
  ?endpoint_group_region:string prop ->
  ?health_check_interval_seconds:float prop ->
  ?health_check_path:string prop ->
  ?health_check_port:float prop ->
  ?health_check_protocol:string prop ->
  ?id:string prop ->
  ?threshold_count:float prop ->
  ?traffic_dial_percentage:float prop ->
  ?timeouts:timeouts ->
  listener_arn:string prop ->
  endpoint_configuration:endpoint_configuration list ->
  port_override:port_override list ->
  unit ->
  aws_globalaccelerator_endpoint_group

val yojson_of_aws_globalaccelerator_endpoint_group :
  aws_globalaccelerator_endpoint_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  endpoint_group_region : string prop;
  health_check_interval_seconds : float prop;
  health_check_path : string prop;
  health_check_port : float prop;
  health_check_protocol : string prop;
  id : string prop;
  listener_arn : string prop;
  threshold_count : float prop;
  traffic_dial_percentage : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?endpoint_group_region:string prop ->
  ?health_check_interval_seconds:float prop ->
  ?health_check_path:string prop ->
  ?health_check_port:float prop ->
  ?health_check_protocol:string prop ->
  ?id:string prop ->
  ?threshold_count:float prop ->
  ?traffic_dial_percentage:float prop ->
  ?timeouts:timeouts ->
  listener_arn:string prop ->
  endpoint_configuration:endpoint_configuration list ->
  port_override:port_override list ->
  string ->
  t

val make :
  ?endpoint_group_region:string prop ->
  ?health_check_interval_seconds:float prop ->
  ?health_check_path:string prop ->
  ?health_check_port:float prop ->
  ?health_check_protocol:string prop ->
  ?id:string prop ->
  ?threshold_count:float prop ->
  ?traffic_dial_percentage:float prop ->
  ?timeouts:timeouts ->
  listener_arn:string prop ->
  endpoint_configuration:endpoint_configuration list ->
  port_override:port_override list ->
  string ->
  t Tf_core.resource
