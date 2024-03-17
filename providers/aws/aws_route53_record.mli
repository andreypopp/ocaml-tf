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

type t = private {
  allow_overwrite : bool prop;
  fqdn : string prop;
  health_check_id : string prop;
  id : string prop;
  multivalue_answer_routing_policy : bool prop;
  name : string prop;
  records : string list prop;
  set_identifier : string prop;
  ttl : float prop;
  type_ : string prop;
  zone_id : string prop;
}

val aws_route53_record :
  ?allow_overwrite:bool prop ->
  ?health_check_id:string prop ->
  ?id:string prop ->
  ?multivalue_answer_routing_policy:bool prop ->
  ?records:string prop list ->
  ?set_identifier:string prop ->
  ?ttl:float prop ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
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
  t
