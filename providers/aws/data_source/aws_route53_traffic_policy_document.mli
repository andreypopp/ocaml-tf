(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint

val endpoint :
  ?region:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  id:string prop ->
  unit ->
  endpoint

type rule__geo_proximity_location

val rule__geo_proximity_location :
  ?bias:string prop ->
  ?endpoint_reference:string prop ->
  ?evaluate_target_health:bool prop ->
  ?health_check:string prop ->
  ?latitude:string prop ->
  ?longitude:string prop ->
  ?region:string prop ->
  ?rule_reference:string prop ->
  unit ->
  rule__geo_proximity_location

type rule__items

val rule__items :
  ?endpoint_reference:string prop ->
  ?health_check:string prop ->
  unit ->
  rule__items

type rule__location

val rule__location :
  ?continent:string prop ->
  ?country:string prop ->
  ?endpoint_reference:string prop ->
  ?evaluate_target_health:bool prop ->
  ?health_check:string prop ->
  ?is_default:bool prop ->
  ?rule_reference:string prop ->
  ?subdivision:string prop ->
  unit ->
  rule__location

type rule__primary

val rule__primary :
  ?endpoint_reference:string prop ->
  ?evaluate_target_health:bool prop ->
  ?health_check:string prop ->
  ?rule_reference:string prop ->
  unit ->
  rule__primary

type rule__region

val rule__region :
  ?endpoint_reference:string prop ->
  ?evaluate_target_health:bool prop ->
  ?health_check:string prop ->
  ?region:string prop ->
  ?rule_reference:string prop ->
  unit ->
  rule__region

type rule__secondary

val rule__secondary :
  ?endpoint_reference:string prop ->
  ?evaluate_target_health:bool prop ->
  ?health_check:string prop ->
  ?rule_reference:string prop ->
  unit ->
  rule__secondary

type rule

val rule :
  ?type_:string prop ->
  ?primary:rule__primary list ->
  ?secondary:rule__secondary list ->
  id:string prop ->
  geo_proximity_location:rule__geo_proximity_location list ->
  items:rule__items list ->
  location:rule__location list ->
  region:rule__region list ->
  unit ->
  rule

type aws_route53_traffic_policy_document

val aws_route53_traffic_policy_document :
  ?id:string prop ->
  ?record_type:string prop ->
  ?start_endpoint:string prop ->
  ?start_rule:string prop ->
  ?version:string prop ->
  endpoint:endpoint list ->
  rule:rule list ->
  unit ->
  aws_route53_traffic_policy_document

val yojson_of_aws_route53_traffic_policy_document :
  aws_route53_traffic_policy_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  json : string prop;
  record_type : string prop;
  start_endpoint : string prop;
  start_rule : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?record_type:string prop ->
  ?start_endpoint:string prop ->
  ?start_rule:string prop ->
  ?version:string prop ->
  endpoint:endpoint list ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?record_type:string prop ->
  ?start_endpoint:string prop ->
  ?start_rule:string prop ->
  ?version:string prop ->
  endpoint:endpoint list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
