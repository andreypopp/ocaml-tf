(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_network_performance_metric_subscription

type t = private {
  destination : string prop;
  id : string prop;
  metric : string prop;
  period : string prop;
  source : string prop;
  statistic : string prop;
}

val aws_vpc_network_performance_metric_subscription :
  ?id:string prop ->
  ?metric:string prop ->
  ?statistic:string prop ->
  destination:string prop ->
  source:string prop ->
  string ->
  t
