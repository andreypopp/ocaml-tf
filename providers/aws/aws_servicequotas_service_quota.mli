(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicequotas_service_quota__usage_metric__metric_dimensions = {
  class_ : string prop; [@key "class"]  (** class *)
  resource : string prop;  (** resource *)
  service : string prop;  (** service *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_servicequotas_service_quota__usage_metric = {
  metric_dimensions :
    aws_servicequotas_service_quota__usage_metric__metric_dimensions
    list;
      (** metric_dimensions *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  metric_statistic_recommendation : string prop;
      (** metric_statistic_recommendation *)
}

type aws_servicequotas_service_quota

type t = private {
  adjustable : bool prop;
  arn : string prop;
  default_value : float prop;
  id : string prop;
  quota_code : string prop;
  quota_name : string prop;
  request_id : string prop;
  request_status : string prop;
  service_code : string prop;
  service_name : string prop;
  usage_metric :
    aws_servicequotas_service_quota__usage_metric list prop;
  value : float prop;
}

val aws_servicequotas_service_quota :
  ?id:string prop ->
  quota_code:string prop ->
  service_code:string prop ->
  value:float prop ->
  string ->
  t
