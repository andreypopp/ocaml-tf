(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type event_bus

val event_bus : event_bus_arn:string prop -> unit -> event_bus

type replication_config

val replication_config :
  ?state:string prop -> unit -> replication_config

type routing_config__failover_config__primary

val routing_config__failover_config__primary :
  ?health_check:string prop ->
  unit ->
  routing_config__failover_config__primary

type routing_config__failover_config__secondary

val routing_config__failover_config__secondary :
  ?route:string prop ->
  unit ->
  routing_config__failover_config__secondary

type routing_config__failover_config

val routing_config__failover_config :
  primary:routing_config__failover_config__primary list ->
  secondary:routing_config__failover_config__secondary list ->
  unit ->
  routing_config__failover_config

type routing_config

val routing_config :
  failover_config:routing_config__failover_config list ->
  unit ->
  routing_config

type aws_cloudwatch_event_endpoint

val aws_cloudwatch_event_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  name:string prop ->
  event_bus:event_bus list ->
  replication_config:replication_config list ->
  routing_config:routing_config list ->
  unit ->
  aws_cloudwatch_event_endpoint

val yojson_of_aws_cloudwatch_event_endpoint :
  aws_cloudwatch_event_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  name:string prop ->
  event_bus:event_bus list ->
  replication_config:replication_config list ->
  routing_config:routing_config list ->
  string ->
  t
