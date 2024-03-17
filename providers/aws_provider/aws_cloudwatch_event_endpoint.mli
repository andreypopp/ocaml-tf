(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_endpoint__event_bus
type aws_cloudwatch_event_endpoint__replication_config

type aws_cloudwatch_event_endpoint__routing_config__failover_config__primary

type aws_cloudwatch_event_endpoint__routing_config__failover_config__secondary

type aws_cloudwatch_event_endpoint__routing_config__failover_config
type aws_cloudwatch_event_endpoint__routing_config
type aws_cloudwatch_event_endpoint

type t = private {
  arn : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

val aws_cloudwatch_event_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  name:string prop ->
  event_bus:aws_cloudwatch_event_endpoint__event_bus list ->
  replication_config:
    aws_cloudwatch_event_endpoint__replication_config list ->
  routing_config:aws_cloudwatch_event_endpoint__routing_config list ->
  string ->
  t
