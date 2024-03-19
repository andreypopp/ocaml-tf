(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type alias

val alias :
  evaluate_target_health:bool prop ->
  name:string prop ->
  zone_id:string prop ->
  unit ->
  alias

type cidr_routing_policy

val cidr_routing_policy :
  collection_id:string prop ->
  location_name:string prop ->
  unit ->
  cidr_routing_policy

type failover_routing_policy

val failover_routing_policy :
  type_:string prop -> unit -> failover_routing_policy

type geolocation_routing_policy

val geolocation_routing_policy :
  ?continent:string prop ->
  ?country:string prop ->
  ?subdivision:string prop ->
  unit ->
  geolocation_routing_policy

type geoproximity_routing_policy__coordinates

val geoproximity_routing_policy__coordinates :
  latitude:string prop ->
  longitude:string prop ->
  unit ->
  geoproximity_routing_policy__coordinates

type geoproximity_routing_policy

val geoproximity_routing_policy :
  ?aws_region:string prop ->
  ?bias:float prop ->
  ?local_zone_group:string prop ->
  coordinates:geoproximity_routing_policy__coordinates list ->
  unit ->
  geoproximity_routing_policy

type latency_routing_policy

val latency_routing_policy :
  region:string prop -> unit -> latency_routing_policy

type weighted_routing_policy

val weighted_routing_policy :
  weight:float prop -> unit -> weighted_routing_policy

type aws_route53_record

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
  alias:alias list ->
  cidr_routing_policy:cidr_routing_policy list ->
  failover_routing_policy:failover_routing_policy list ->
  geolocation_routing_policy:geolocation_routing_policy list ->
  geoproximity_routing_policy:geoproximity_routing_policy list ->
  latency_routing_policy:latency_routing_policy list ->
  weighted_routing_policy:weighted_routing_policy list ->
  unit ->
  aws_route53_record

val yojson_of_aws_route53_record : aws_route53_record -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  alias:alias list ->
  cidr_routing_policy:cidr_routing_policy list ->
  failover_routing_policy:failover_routing_policy list ->
  geolocation_routing_policy:geolocation_routing_policy list ->
  geoproximity_routing_policy:geoproximity_routing_policy list ->
  latency_routing_policy:latency_routing_policy list ->
  weighted_routing_policy:weighted_routing_policy list ->
  string ->
  t
