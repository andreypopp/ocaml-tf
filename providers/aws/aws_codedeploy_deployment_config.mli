(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type minimum_healthy_hosts

val minimum_healthy_hosts :
  ?type_:string prop ->
  ?value:float prop ->
  unit ->
  minimum_healthy_hosts

type traffic_routing_config__time_based_canary

val traffic_routing_config__time_based_canary :
  ?interval:float prop ->
  ?percentage:float prop ->
  unit ->
  traffic_routing_config__time_based_canary

type traffic_routing_config__time_based_linear

val traffic_routing_config__time_based_linear :
  ?interval:float prop ->
  ?percentage:float prop ->
  unit ->
  traffic_routing_config__time_based_linear

type traffic_routing_config

val traffic_routing_config :
  ?type_:string prop ->
  ?time_based_canary:traffic_routing_config__time_based_canary list ->
  ?time_based_linear:traffic_routing_config__time_based_linear list ->
  unit ->
  traffic_routing_config

type aws_codedeploy_deployment_config

val aws_codedeploy_deployment_config :
  ?compute_platform:string prop ->
  ?id:string prop ->
  ?minimum_healthy_hosts:minimum_healthy_hosts list ->
  ?traffic_routing_config:traffic_routing_config list ->
  deployment_config_name:string prop ->
  unit ->
  aws_codedeploy_deployment_config

val yojson_of_aws_codedeploy_deployment_config :
  aws_codedeploy_deployment_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  compute_platform : string prop;
  deployment_config_id : string prop;
  deployment_config_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compute_platform:string prop ->
  ?id:string prop ->
  ?minimum_healthy_hosts:minimum_healthy_hosts list ->
  ?traffic_routing_config:traffic_routing_config list ->
  deployment_config_name:string prop ->
  string ->
  t

val make :
  ?compute_platform:string prop ->
  ?id:string prop ->
  ?minimum_healthy_hosts:minimum_healthy_hosts list ->
  ?traffic_routing_config:traffic_routing_config list ->
  deployment_config_name:string prop ->
  string ->
  t Tf_core.resource
