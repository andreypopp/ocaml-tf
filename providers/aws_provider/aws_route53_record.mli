(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_record__alias
type aws_route53_record__cidr_routing_policy
type aws_route53_record__failover_routing_policy
type aws_route53_record__geolocation_routing_policy
type aws_route53_record__geoproximity_routing_policy__coordinates
type aws_route53_record__geoproximity_routing_policy
type aws_route53_record__latency_routing_policy
type aws_route53_record__weighted_routing_policy
type aws_route53_record

val aws_route53_record :
  ?allow_overwrite:bool ->
  ?health_check_id:string ->
  ?id:string ->
  ?multivalue_answer_routing_policy:bool ->
  ?records:string list ->
  ?set_identifier:string ->
  ?ttl:float ->
  name:string ->
  type_:string ->
  zone_id:string ->
  alias:aws_route53_record__alias list ->
  cidr_routing_policy:aws_route53_record__cidr_routing_policy list ->
  failover_routing_policy:
    aws_route53_record__failover_routing_policy list ->
  geolocation_routing_policy:
    aws_route53_record__geolocation_routing_policy list ->
  geoproximity_routing_policy:
    aws_route53_record__geoproximity_routing_policy list ->
  latency_routing_policy:
    aws_route53_record__latency_routing_policy list ->
  weighted_routing_policy:
    aws_route53_record__weighted_routing_policy list ->
  string ->
  unit
