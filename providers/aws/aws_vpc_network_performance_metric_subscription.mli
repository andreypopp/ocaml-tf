(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_network_performance_metric_subscription

val aws_vpc_network_performance_metric_subscription :
  ?id:string prop ->
  ?metric:string prop ->
  ?statistic:string prop ->
  destination:string prop ->
  source:string prop ->
  unit ->
  aws_vpc_network_performance_metric_subscription

val yojson_of_aws_vpc_network_performance_metric_subscription :
  aws_vpc_network_performance_metric_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  destination : string prop;
  id : string prop;
  metric : string prop;
  period : string prop;
  source : string prop;
  statistic : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metric:string prop ->
  ?statistic:string prop ->
  destination:string prop ->
  source:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metric:string prop ->
  ?statistic:string prop ->
  destination:string prop ->
  source:string prop ->
  string ->
  t Tf_core.resource
