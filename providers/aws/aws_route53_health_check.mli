(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_health_check

val aws_route53_health_check :
  ?child_health_threshold:float prop ->
  ?child_healthchecks:string prop list ->
  ?cloudwatch_alarm_name:string prop ->
  ?cloudwatch_alarm_region:string prop ->
  ?disabled:bool prop ->
  ?enable_sni:bool prop ->
  ?failure_threshold:float prop ->
  ?fqdn:string prop ->
  ?id:string prop ->
  ?insufficient_data_health_status:string prop ->
  ?invert_healthcheck:bool prop ->
  ?ip_address:string prop ->
  ?measure_latency:bool prop ->
  ?port:float prop ->
  ?reference_name:string prop ->
  ?regions:string prop list ->
  ?request_interval:float prop ->
  ?resource_path:string prop ->
  ?routing_control_arn:string prop ->
  ?search_string:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  type_:string prop ->
  unit ->
  aws_route53_health_check

val yojson_of_aws_route53_health_check :
  aws_route53_health_check -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  child_health_threshold : float prop;
  child_healthchecks : string list prop;
  cloudwatch_alarm_name : string prop;
  cloudwatch_alarm_region : string prop;
  disabled : bool prop;
  enable_sni : bool prop;
  failure_threshold : float prop;
  fqdn : string prop;
  id : string prop;
  insufficient_data_health_status : string prop;
  invert_healthcheck : bool prop;
  ip_address : string prop;
  measure_latency : bool prop;
  port : float prop;
  reference_name : string prop;
  regions : string list prop;
  request_interval : float prop;
  resource_path : string prop;
  routing_control_arn : string prop;
  search_string : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?child_health_threshold:float prop ->
  ?child_healthchecks:string prop list ->
  ?cloudwatch_alarm_name:string prop ->
  ?cloudwatch_alarm_region:string prop ->
  ?disabled:bool prop ->
  ?enable_sni:bool prop ->
  ?failure_threshold:float prop ->
  ?fqdn:string prop ->
  ?id:string prop ->
  ?insufficient_data_health_status:string prop ->
  ?invert_healthcheck:bool prop ->
  ?ip_address:string prop ->
  ?measure_latency:bool prop ->
  ?port:float prop ->
  ?reference_name:string prop ->
  ?regions:string prop list ->
  ?request_interval:float prop ->
  ?resource_path:string prop ->
  ?routing_control_arn:string prop ->
  ?search_string:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t

val make :
  ?child_health_threshold:float prop ->
  ?child_healthchecks:string prop list ->
  ?cloudwatch_alarm_name:string prop ->
  ?cloudwatch_alarm_region:string prop ->
  ?disabled:bool prop ->
  ?enable_sni:bool prop ->
  ?failure_threshold:float prop ->
  ?fqdn:string prop ->
  ?id:string prop ->
  ?insufficient_data_health_status:string prop ->
  ?invert_healthcheck:bool prop ->
  ?ip_address:string prop ->
  ?measure_latency:bool prop ->
  ?port:float prop ->
  ?reference_name:string prop ->
  ?regions:string prop list ->
  ?request_interval:float prop ->
  ?resource_path:string prop ->
  ?routing_control_arn:string prop ->
  ?search_string:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t Tf_core.resource
