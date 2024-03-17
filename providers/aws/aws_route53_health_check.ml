(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_route53_health_check ?child_health_threshold
    ?child_healthchecks ?cloudwatch_alarm_name
    ?cloudwatch_alarm_region ?disabled ?enable_sni ?failure_threshold
    ?fqdn ?id ?insufficient_data_health_status ?invert_healthcheck
    ?ip_address ?measure_latency ?port ?reference_name ?regions
    ?request_interval ?resource_path ?routing_control_arn
    ?search_string ?tags ?tags_all ~type_ __resource_id =
  let __resource_type = "aws_route53_health_check" in
  let __resource =
    ({
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
      : aws_route53_health_check)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_health_check __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       child_health_threshold =
         Prop.computed __resource_type __resource_id
           "child_health_threshold";
       child_healthchecks =
         Prop.computed __resource_type __resource_id
           "child_healthchecks";
       cloudwatch_alarm_name =
         Prop.computed __resource_type __resource_id
           "cloudwatch_alarm_name";
       cloudwatch_alarm_region =
         Prop.computed __resource_type __resource_id
           "cloudwatch_alarm_region";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       enable_sni =
         Prop.computed __resource_type __resource_id "enable_sni";
       failure_threshold =
         Prop.computed __resource_type __resource_id
           "failure_threshold";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       insufficient_data_health_status =
         Prop.computed __resource_type __resource_id
           "insufficient_data_health_status";
       invert_healthcheck =
         Prop.computed __resource_type __resource_id
           "invert_healthcheck";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       measure_latency =
         Prop.computed __resource_type __resource_id
           "measure_latency";
       port = Prop.computed __resource_type __resource_id "port";
       reference_name =
         Prop.computed __resource_type __resource_id "reference_name";
       regions =
         Prop.computed __resource_type __resource_id "regions";
       request_interval =
         Prop.computed __resource_type __resource_id
           "request_interval";
       resource_path =
         Prop.computed __resource_type __resource_id "resource_path";
       routing_control_arn =
         Prop.computed __resource_type __resource_id
           "routing_control_arn";
       search_string =
         Prop.computed __resource_type __resource_id "search_string";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
