(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_alb_target_group__health_check = {
  enabled : bool prop option; [@option]  (** enabled *)
  healthy_threshold : float prop option; [@option]
      (** healthy_threshold *)
  interval : float prop option; [@option]  (** interval *)
  matcher : string prop option; [@option]  (** matcher *)
  path : string prop option; [@option]  (** path *)
  port : string prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
  timeout : float prop option; [@option]  (** timeout *)
  unhealthy_threshold : float prop option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_alb_target_group__health_check *)

type aws_alb_target_group__stickiness = {
  cookie_duration : float prop option; [@option]
      (** cookie_duration *)
  cookie_name : string prop option; [@option]  (** cookie_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_alb_target_group__stickiness *)

type aws_alb_target_group__target_failover = {
  on_deregistration : string prop;  (** on_deregistration *)
  on_unhealthy : string prop;  (** on_unhealthy *)
}
[@@deriving yojson_of]
(** aws_alb_target_group__target_failover *)

type aws_alb_target_group__target_health_state = {
  enable_unhealthy_connection_termination : bool prop;
      (** enable_unhealthy_connection_termination *)
}
[@@deriving yojson_of]
(** aws_alb_target_group__target_health_state *)

type aws_alb_target_group = {
  connection_termination : bool prop option; [@option]
      (** connection_termination *)
  deregistration_delay : string prop option; [@option]
      (** deregistration_delay *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  lambda_multi_value_headers_enabled : bool prop option; [@option]
      (** lambda_multi_value_headers_enabled *)
  load_balancing_algorithm_type : string prop option; [@option]
      (** load_balancing_algorithm_type *)
  load_balancing_anomaly_mitigation : string prop option; [@option]
      (** load_balancing_anomaly_mitigation *)
  load_balancing_cross_zone_enabled : string prop option; [@option]
      (** load_balancing_cross_zone_enabled *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  port : float prop option; [@option]  (** port *)
  preserve_client_ip : string prop option; [@option]
      (** preserve_client_ip *)
  protocol : string prop option; [@option]  (** protocol *)
  protocol_version : string prop option; [@option]
      (** protocol_version *)
  proxy_protocol_v2 : bool prop option; [@option]
      (** proxy_protocol_v2 *)
  slow_start : float prop option; [@option]  (** slow_start *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_type : string prop option; [@option]  (** target_type *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
  health_check : aws_alb_target_group__health_check list;
  stickiness : aws_alb_target_group__stickiness list;
  target_failover : aws_alb_target_group__target_failover list;
  target_health_state :
    aws_alb_target_group__target_health_state list;
}
[@@deriving yojson_of]
(** aws_alb_target_group *)

type t = {
  arn : string prop;
  arn_suffix : string prop;
  connection_termination : bool prop;
  deregistration_delay : string prop;
  id : string prop;
  ip_address_type : string prop;
  lambda_multi_value_headers_enabled : bool prop;
  load_balancer_arns : string list prop;
  load_balancing_algorithm_type : string prop;
  load_balancing_anomaly_mitigation : string prop;
  load_balancing_cross_zone_enabled : string prop;
  name : string prop;
  name_prefix : string prop;
  port : float prop;
  preserve_client_ip : string prop;
  protocol : string prop;
  protocol_version : string prop;
  proxy_protocol_v2 : bool prop;
  slow_start : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_type : string prop;
  vpc_id : string prop;
}

let aws_alb_target_group ?connection_termination
    ?deregistration_delay ?id ?ip_address_type
    ?lambda_multi_value_headers_enabled
    ?load_balancing_algorithm_type ?load_balancing_anomaly_mitigation
    ?load_balancing_cross_zone_enabled ?name ?name_prefix ?port
    ?preserve_client_ip ?protocol ?protocol_version
    ?proxy_protocol_v2 ?slow_start ?tags ?tags_all ?target_type
    ?vpc_id ~health_check ~stickiness ~target_failover
    ~target_health_state __resource_id =
  let __resource_type = "aws_alb_target_group" in
  let __resource =
    ({
       connection_termination;
       deregistration_delay;
       id;
       ip_address_type;
       lambda_multi_value_headers_enabled;
       load_balancing_algorithm_type;
       load_balancing_anomaly_mitigation;
       load_balancing_cross_zone_enabled;
       name;
       name_prefix;
       port;
       preserve_client_ip;
       protocol;
       protocol_version;
       proxy_protocol_v2;
       slow_start;
       tags;
       tags_all;
       target_type;
       vpc_id;
       health_check;
       stickiness;
       target_failover;
       target_health_state;
     }
      : aws_alb_target_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_alb_target_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       arn_suffix =
         Prop.computed __resource_type __resource_id "arn_suffix";
       connection_termination =
         Prop.computed __resource_type __resource_id
           "connection_termination";
       deregistration_delay =
         Prop.computed __resource_type __resource_id
           "deregistration_delay";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address_type =
         Prop.computed __resource_type __resource_id
           "ip_address_type";
       lambda_multi_value_headers_enabled =
         Prop.computed __resource_type __resource_id
           "lambda_multi_value_headers_enabled";
       load_balancer_arns =
         Prop.computed __resource_type __resource_id
           "load_balancer_arns";
       load_balancing_algorithm_type =
         Prop.computed __resource_type __resource_id
           "load_balancing_algorithm_type";
       load_balancing_anomaly_mitigation =
         Prop.computed __resource_type __resource_id
           "load_balancing_anomaly_mitigation";
       load_balancing_cross_zone_enabled =
         Prop.computed __resource_type __resource_id
           "load_balancing_cross_zone_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       port = Prop.computed __resource_type __resource_id "port";
       preserve_client_ip =
         Prop.computed __resource_type __resource_id
           "preserve_client_ip";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       protocol_version =
         Prop.computed __resource_type __resource_id
           "protocol_version";
       proxy_protocol_v2 =
         Prop.computed __resource_type __resource_id
           "proxy_protocol_v2";
       slow_start =
         Prop.computed __resource_type __resource_id "slow_start";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_type =
         Prop.computed __resource_type __resource_id "target_type";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
