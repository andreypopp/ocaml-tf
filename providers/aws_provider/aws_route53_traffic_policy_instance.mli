(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_traffic_policy_instance

val aws_route53_traffic_policy_instance :
  ?id:string prop ->
  hosted_zone_id:string prop ->
  name:string prop ->
  traffic_policy_id:string prop ->
  traffic_policy_version:float prop ->
  ttl:float prop ->
  string ->
  unit
