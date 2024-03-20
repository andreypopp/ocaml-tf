(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~quota_code ~service_code ~value __id =
  let __type = "aws_servicequotas_service_quota" in
  let __attrs =
    ({
       adjustable = Prop.computed __type __id "adjustable";
       arn = Prop.computed __type __id "arn";
       default_value = Prop.computed __type __id "default_value";
       id = Prop.computed __type __id "id";
       quota_code = Prop.computed __type __id "quota_code";
       quota_name = Prop.computed __type __id "quota_name";
       request_id = Prop.computed __type __id "request_id";
       request_status = Prop.computed __type __id "request_status";
       service_code = Prop.computed __type __id "service_code";
       service_name = Prop.computed __type __id "service_name";
       usage_metric = Prop.computed __type __id "usage_metric";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_service_quota
        (aws_servicequotas_service_quota ?id ~quota_code
           ~service_code ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~quota_code ~service_code ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ~quota_code ~service_code ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
