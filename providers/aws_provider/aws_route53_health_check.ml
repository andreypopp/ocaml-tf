(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_health_check = {
  child_health_threshold : float option; [@option]
      (** child_health_threshold *)
  child_healthchecks : string list option; [@option]
      (** child_healthchecks *)
  cloudwatch_alarm_name : string option; [@option]
      (** cloudwatch_alarm_name *)
  cloudwatch_alarm_region : string option; [@option]
      (** cloudwatch_alarm_region *)
  disabled : bool option; [@option]  (** disabled *)
  fqdn : string option; [@option]  (** fqdn *)
  insufficient_data_health_status : string option; [@option]
      (** insufficient_data_health_status *)
  invert_healthcheck : bool option; [@option]
      (** invert_healthcheck *)
  ip_address : string option; [@option]  (** ip_address *)
  measure_latency : bool option; [@option]  (** measure_latency *)
  port : float option; [@option]  (** port *)
  reference_name : string option; [@option]  (** reference_name *)
  regions : string list option; [@option]  (** regions *)
  request_interval : float option; [@option]  (** request_interval *)
  resource_path : string option; [@option]  (** resource_path *)
  routing_control_arn : string option; [@option]
      (** routing_control_arn *)
  search_string : string option; [@option]  (** search_string *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_route53_health_check *)

let aws_route53_health_check ?child_health_threshold
    ?child_healthchecks ?cloudwatch_alarm_name
    ?cloudwatch_alarm_region ?disabled ?fqdn
    ?insufficient_data_health_status ?invert_healthcheck ?ip_address
    ?measure_latency ?port ?reference_name ?regions ?request_interval
    ?resource_path ?routing_control_arn ?search_string ?tags ~type_
    __resource_id =
  let __resource_type = "aws_route53_health_check" in
  let __resource =
    {
      child_health_threshold;
      child_healthchecks;
      cloudwatch_alarm_name;
      cloudwatch_alarm_region;
      disabled;
      fqdn;
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
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_health_check __resource);
  ()
