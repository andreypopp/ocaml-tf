(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codedeploy_deployment_config__minimum_healthy_hosts

type aws_codedeploy_deployment_config__traffic_routing_config__time_based_canary

type aws_codedeploy_deployment_config__traffic_routing_config__time_based_linear

type aws_codedeploy_deployment_config__traffic_routing_config
type aws_codedeploy_deployment_config

val aws_codedeploy_deployment_config :
  ?compute_platform:string ->
  deployment_config_name:string ->
  minimum_healthy_hosts:
    aws_codedeploy_deployment_config__minimum_healthy_hosts list ->
  traffic_routing_config:
    aws_codedeploy_deployment_config__traffic_routing_config list ->
  string ->
  unit
