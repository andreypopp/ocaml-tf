(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type usage_metric__metric_dimensions = {
  class_ : string prop; [@key "class"]  (** class *)
  resource : string prop;  (** resource *)
  service : string prop;  (** service *)
  type_ : string prop; [@key "type"]  (** type *)
}

type usage_metric = {
  metric_dimensions : usage_metric__metric_dimensions list;
      (** metric_dimensions *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  metric_statistic_recommendation : string prop;
      (** metric_statistic_recommendation *)
}

type aws_servicequotas_service_quota

val aws_servicequotas_service_quota :
  ?id:string prop ->
  ?quota_code:string prop ->
  ?quota_name:string prop ->
  service_code:string prop ->
  unit ->
  aws_servicequotas_service_quota

val yojson_of_aws_servicequotas_service_quota :
  aws_servicequotas_service_quota -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  adjustable : bool prop;
  arn : string prop;
  default_value : float prop;
  global_quota : bool prop;
  id : string prop;
  quota_code : string prop;
  quota_name : string prop;
  service_code : string prop;
  service_name : string prop;
  usage_metric : usage_metric list prop;
  value : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?quota_code:string prop ->
  ?quota_name:string prop ->
  service_code:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?quota_code:string prop ->
  ?quota_name:string prop ->
  service_code:string prop ->
  string ->
  t Tf_core.resource
