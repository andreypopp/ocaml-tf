(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicequotas_service_quota__usage_metric__metric_dimensions = {
  class_ : string; [@key "class"]  (** class *)
  resource : string;  (** resource *)
  service : string;  (** service *)
  type_ : string; [@key "type"]  (** type *)
}

type aws_servicequotas_service_quota__usage_metric = {
  metric_dimensions :
    aws_servicequotas_service_quota__usage_metric__metric_dimensions
    list;
      (** metric_dimensions *)
  metric_name : string;  (** metric_name *)
  metric_namespace : string;  (** metric_namespace *)
  metric_statistic_recommendation : string;
      (** metric_statistic_recommendation *)
}

type aws_servicequotas_service_quota

val aws_servicequotas_service_quota :
  ?id:string ->
  quota_code:string ->
  service_code:string ->
  value:float ->
  string ->
  unit
