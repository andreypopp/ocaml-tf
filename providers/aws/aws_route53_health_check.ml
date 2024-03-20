(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_health_check = {
  child_health_threshold : float prop option; [@option]
      (** child_health_threshold *)
  child_healthchecks : string prop list option; [@option]
      (** child_healthchecks *)
  cloudwatch_alarm_name : string prop option; [@option]
      (** cloudwatch_alarm_name *)
  cloudwatch_alarm_region : string prop option; [@option]
      (** cloudwatch_alarm_region *)
  disabled : bool prop option; [@option]  (** disabled *)
  enable_sni : bool prop option; [@option]  (** enable_sni *)
  failure_threshold : float prop option; [@option]
      (** failure_threshold *)
  fqdn : string prop option; [@option]  (** fqdn *)
  id : string prop option; [@option]  (** id *)
  insufficient_data_health_status : string prop option; [@option]
      (** insufficient_data_health_status *)
  invert_healthcheck : bool prop option; [@option]
      (** invert_healthcheck *)
  ip_address : string prop option; [@option]  (** ip_address *)
  measure_latency : bool prop option; [@option]
      (** measure_latency *)
  port : float prop option; [@option]  (** port *)
  reference_name : string prop option; [@option]
      (** reference_name *)
  regions : string prop list option; [@option]  (** regions *)
  request_interval : float prop option; [@option]
      (** request_interval *)
  resource_path : string prop option; [@option]  (** resource_path *)
  routing_control_arn : string prop option; [@option]
      (** routing_control_arn *)
  search_string : string prop option; [@option]  (** search_string *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_route53_health_check *)

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
