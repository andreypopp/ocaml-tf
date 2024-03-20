(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_health_check = {
  child_health_threshold : float prop option; [@option]
  child_healthchecks : string prop list option; [@option]
  cloudwatch_alarm_name : string prop option; [@option]
  cloudwatch_alarm_region : string prop option; [@option]
  disabled : bool prop option; [@option]
  enable_sni : bool prop option; [@option]
  failure_threshold : float prop option; [@option]
  fqdn : string prop option; [@option]
  id : string prop option; [@option]
  insufficient_data_health_status : string prop option; [@option]
  invert_healthcheck : bool prop option; [@option]
  ip_address : string prop option; [@option]
  measure_latency : bool prop option; [@option]
  port : float prop option; [@option]
  reference_name : string prop option; [@option]
  regions : string prop list option; [@option]
  request_interval : float prop option; [@option]
  resource_path : string prop option; [@option]
  routing_control_arn : string prop option; [@option]
  search_string : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_health_check) -> ()

let yojson_of_aws_route53_health_check =
  (function
   | {
       child_health_threshold = v_child_health_threshold;
       child_healthchecks = v_child_healthchecks;
       cloudwatch_alarm_name = v_cloudwatch_alarm_name;
       cloudwatch_alarm_region = v_cloudwatch_alarm_region;
       disabled = v_disabled;
       enable_sni = v_enable_sni;
       failure_threshold = v_failure_threshold;
       fqdn = v_fqdn;
       id = v_id;
       insufficient_data_health_status =
         v_insufficient_data_health_status;
       invert_healthcheck = v_invert_healthcheck;
       ip_address = v_ip_address;
       measure_latency = v_measure_latency;
       port = v_port;
       reference_name = v_reference_name;
       regions = v_regions;
       request_interval = v_request_interval;
       resource_path = v_resource_path;
       routing_control_arn = v_routing_control_arn;
       search_string = v_search_string;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_search_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "search_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_routing_control_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_control_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "request_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reference_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_measure_latency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "measure_latency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_healthcheck with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_healthcheck", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insufficient_data_health_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "insufficient_data_health_status", arg in
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
       let bnds =
         match v_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fqdn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_sni with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_sni", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_alarm_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_alarm_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_alarm_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_alarm_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_child_healthchecks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "child_healthchecks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_child_health_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "child_health_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_health_check

[@@@deriving.end]

let aws_route53_health_check ?child_health_threshold
    ?child_healthchecks ?cloudwatch_alarm_name
    ?cloudwatch_alarm_region ?disabled ?enable_sni ?failure_threshold
    ?fqdn ?id ?insufficient_data_health_status ?invert_healthcheck
    ?ip_address ?measure_latency ?port ?reference_name ?regions
    ?request_interval ?resource_path ?routing_control_arn
    ?search_string ?tags ?tags_all ~type_ () :
    aws_route53_health_check =
  {
    child_health_threshold;
    child_healthchecks;
    cloudwatch_alarm_name;
    cloudwatch_alarm_region;
    disabled;
    enable_sni;
    failure_threshold;
    fqdn;
    id;
    insufficient_data_health_status;
    invert_healthcheck;
    ip_address;
    measure_latency;
    port;
    reference_name;
    regions;
    request_interval;
    resource_path;
    routing_control_arn;
    search_string;
    tags;
    tags_all;
    type_;
  }

type t = {
  arn : string prop;
  child_health_threshold : float prop;
  child_healthchecks : string list prop;
  cloudwatch_alarm_name : string prop;
  cloudwatch_alarm_region : string prop;
  disabled : bool prop;
  enable_sni : bool prop;
  failure_threshold : float prop;
  fqdn : string prop;
  id : string prop;
  insufficient_data_health_status : string prop;
  invert_healthcheck : bool prop;
  ip_address : string prop;
  measure_latency : bool prop;
  port : float prop;
  reference_name : string prop;
  regions : string list prop;
  request_interval : float prop;
  resource_path : string prop;
  routing_control_arn : string prop;
  search_string : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?child_health_threshold ?child_healthchecks
    ?cloudwatch_alarm_name ?cloudwatch_alarm_region ?disabled
    ?enable_sni ?failure_threshold ?fqdn ?id
    ?insufficient_data_health_status ?invert_healthcheck ?ip_address
    ?measure_latency ?port ?reference_name ?regions ?request_interval
    ?resource_path ?routing_control_arn ?search_string ?tags
    ?tags_all ~type_ __id =
  let __type = "aws_route53_health_check" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       child_health_threshold =
         Prop.computed __type __id "child_health_threshold";
       child_healthchecks =
         Prop.computed __type __id "child_healthchecks";
       cloudwatch_alarm_name =
         Prop.computed __type __id "cloudwatch_alarm_name";
       cloudwatch_alarm_region =
         Prop.computed __type __id "cloudwatch_alarm_region";
       disabled = Prop.computed __type __id "disabled";
       enable_sni = Prop.computed __type __id "enable_sni";
       failure_threshold =
         Prop.computed __type __id "failure_threshold";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       insufficient_data_health_status =
         Prop.computed __type __id "insufficient_data_health_status";
       invert_healthcheck =
         Prop.computed __type __id "invert_healthcheck";
       ip_address = Prop.computed __type __id "ip_address";
       measure_latency = Prop.computed __type __id "measure_latency";
       port = Prop.computed __type __id "port";
       reference_name = Prop.computed __type __id "reference_name";
       regions = Prop.computed __type __id "regions";
       request_interval =
         Prop.computed __type __id "request_interval";
       resource_path = Prop.computed __type __id "resource_path";
       routing_control_arn =
         Prop.computed __type __id "routing_control_arn";
       search_string = Prop.computed __type __id "search_string";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_health_check
        (aws_route53_health_check ?child_health_threshold
           ?child_healthchecks ?cloudwatch_alarm_name
           ?cloudwatch_alarm_region ?disabled ?enable_sni
           ?failure_threshold ?fqdn ?id
           ?insufficient_data_health_status ?invert_healthcheck
           ?ip_address ?measure_latency ?port ?reference_name
           ?regions ?request_interval ?resource_path
           ?routing_control_arn ?search_string ?tags ?tags_all ~type_
           ());
    attrs = __attrs;
  }

let register ?tf_module ?child_health_threshold ?child_healthchecks
    ?cloudwatch_alarm_name ?cloudwatch_alarm_region ?disabled
    ?enable_sni ?failure_threshold ?fqdn ?id
    ?insufficient_data_health_status ?invert_healthcheck ?ip_address
    ?measure_latency ?port ?reference_name ?regions ?request_interval
    ?resource_path ?routing_control_arn ?search_string ?tags
    ?tags_all ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?child_health_threshold ?child_healthchecks
      ?cloudwatch_alarm_name ?cloudwatch_alarm_region ?disabled
      ?enable_sni ?failure_threshold ?fqdn ?id
      ?insufficient_data_health_status ?invert_healthcheck
      ?ip_address ?measure_latency ?port ?reference_name ?regions
      ?request_interval ?resource_path ?routing_control_arn
      ?search_string ?tags ?tags_all ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
