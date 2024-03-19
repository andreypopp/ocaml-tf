(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type usage_metric__metric_dimensions = {
  class_ : string prop; [@key "class"]  (** class *)
  resource : string prop;  (** resource *)
  service : string prop;  (** service *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type usage_metric = {
  metric_dimensions : usage_metric__metric_dimensions list;
      (** metric_dimensions *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  metric_statistic_recommendation : string prop;
      (** metric_statistic_recommendation *)
}
[@@deriving yojson_of]

type aws_servicequotas_service_quota = {
  id : string prop option; [@option]  (** id *)
  quota_code : string prop;  (** quota_code *)
  service_code : string prop;  (** service_code *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_servicequotas_service_quota *)

let aws_servicequotas_service_quota ?id ~quota_code ~service_code
    ~value () : aws_servicequotas_service_quota =
  { id; quota_code; service_code; value }

type t = {
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
  usage_metric : usage_metric list prop;
  value : float prop;
}

let register ?tf_module ?id ~quota_code ~service_code ~value
    __resource_id =
  let __resource_type = "aws_servicequotas_service_quota" in
  let __resource =
    aws_servicequotas_service_quota ?id ~quota_code ~service_code
      ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicequotas_service_quota __resource);
  let __resource_attributes =
    ({
       adjustable =
         Prop.computed __resource_type __resource_id "adjustable";
       arn = Prop.computed __resource_type __resource_id "arn";
       default_value =
         Prop.computed __resource_type __resource_id "default_value";
       id = Prop.computed __resource_type __resource_id "id";
       quota_code =
         Prop.computed __resource_type __resource_id "quota_code";
       quota_name =
         Prop.computed __resource_type __resource_id "quota_name";
       request_id =
         Prop.computed __resource_type __resource_id "request_id";
       request_status =
         Prop.computed __resource_type __resource_id "request_status";
       service_code =
         Prop.computed __resource_type __resource_id "service_code";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       usage_metric =
         Prop.computed __resource_type __resource_id "usage_metric";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
