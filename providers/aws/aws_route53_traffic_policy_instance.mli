(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_route53_traffic_policy_instance

val aws_route53_traffic_policy_instance :
  ?id:string prop ->
  hosted_zone_id:string prop ->
  name:string prop ->
  traffic_policy_id:string prop ->
  traffic_policy_version:float prop ->
  ttl:float prop ->
  unit ->
  aws_route53_traffic_policy_instance

val yojson_of_aws_route53_traffic_policy_instance :
  aws_route53_traffic_policy_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hosted_zone_id : string prop;
  id : string prop;
  name : string prop;
  traffic_policy_id : string prop;
  traffic_policy_version : float prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  hosted_zone_id:string prop ->
  name:string prop ->
  traffic_policy_id:string prop ->
  traffic_policy_version:float prop ->
  ttl:float prop ->
  string ->
  t
