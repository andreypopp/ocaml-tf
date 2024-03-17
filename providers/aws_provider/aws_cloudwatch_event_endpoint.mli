(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_endpoint__event_bus
type aws_cloudwatch_event_endpoint__replication_config

type aws_cloudwatch_event_endpoint__routing_config__failover_config__primary

type aws_cloudwatch_event_endpoint__routing_config__failover_config__secondary

type aws_cloudwatch_event_endpoint__routing_config__failover_config
type aws_cloudwatch_event_endpoint__routing_config
type aws_cloudwatch_event_endpoint

val aws_cloudwatch_event_endpoint :
  ?description:string ->
  ?role_arn:string ->
  name:string ->
  event_bus:aws_cloudwatch_event_endpoint__event_bus list ->
  replication_config:
    aws_cloudwatch_event_endpoint__replication_config list ->
  routing_config:aws_cloudwatch_event_endpoint__routing_config list ->
  string ->
  unit
