(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type usage_metric__metric_dimensions = {
  class_ : string prop; [@key "class"]
  resource : string prop;
  service : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : usage_metric__metric_dimensions) -> ()

let yojson_of_usage_metric__metric_dimensions =
  (function
   | {
       class_ = v_class_;
       resource = v_resource;
       service = v_service;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_class_ in
         ("class", arg) :: bnds
       in
       `Assoc bnds
    : usage_metric__metric_dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_usage_metric__metric_dimensions

[@@@deriving.end]

type usage_metric = {
  metric_dimensions : usage_metric__metric_dimensions list;
  metric_name : string prop;
  metric_namespace : string prop;
  metric_statistic_recommendation : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : usage_metric) -> ()

let yojson_of_usage_metric =
  (function
   | {
       metric_dimensions = v_metric_dimensions;
       metric_name = v_metric_name;
       metric_namespace = v_metric_namespace;
       metric_statistic_recommendation =
         v_metric_statistic_recommendation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_metric_statistic_recommendation
         in
         ("metric_statistic_recommendation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_namespace
         in
         ("metric_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_usage_metric__metric_dimensions
             v_metric_dimensions
         in
         ("metric_dimensions", arg) :: bnds
       in
       `Assoc bnds
    : usage_metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_usage_metric

[@@@deriving.end]

type aws_servicequotas_service_quota = {
  id : string prop option; [@option]
  quota_code : string prop option; [@option]
  quota_name : string prop option; [@option]
  service_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicequotas_service_quota) -> ()

let yojson_of_aws_servicequotas_service_quota =
  (function
   | {
       id = v_id;
       quota_code = v_quota_code;
       quota_name = v_quota_name;
       service_code = v_service_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_code in
         ("service_code", arg) :: bnds
       in
       let bnds =
         match v_quota_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quota_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quota_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quota_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicequotas_service_quota ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicequotas_service_quota

[@@@deriving.end]

let aws_servicequotas_service_quota ?id ?quota_code ?quota_name
    ~service_code () : aws_servicequotas_service_quota =
  { id; quota_code; quota_name; service_code }

type t = {
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

let make ?id ?quota_code ?quota_name ~service_code __id =
  let __type = "aws_servicequotas_service_quota" in
  let __attrs =
    ({
       adjustable = Prop.computed __type __id "adjustable";
       arn = Prop.computed __type __id "arn";
       default_value = Prop.computed __type __id "default_value";
       global_quota = Prop.computed __type __id "global_quota";
       id = Prop.computed __type __id "id";
       quota_code = Prop.computed __type __id "quota_code";
       quota_name = Prop.computed __type __id "quota_name";
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
        (aws_servicequotas_service_quota ?id ?quota_code ?quota_name
           ~service_code ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?quota_code ?quota_name ~service_code
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?quota_code ?quota_name ~service_code __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
