(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_target_group__health_check = {
  enabled : bool option; [@option]  (** enabled *)
  healthy_threshold : float option; [@option]
      (** healthy_threshold *)
  interval : float option; [@option]  (** interval *)
  matcher : string option; [@option]  (** matcher *)
  path : string option; [@option]  (** path *)
  port : string option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
  timeout : float option; [@option]  (** timeout *)
  unhealthy_threshold : float option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__health_check *)

type aws_lb_target_group__stickiness = {
  cookie_duration : float option; [@option]  (** cookie_duration *)
  cookie_name : string option; [@option]  (** cookie_name *)
  enabled : bool option; [@option]  (** enabled *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__stickiness *)

type aws_lb_target_group__target_failover = {
  on_deregistration : string;  (** on_deregistration *)
  on_unhealthy : string;  (** on_unhealthy *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__target_failover *)

type aws_lb_target_group__target_health_state = {
  enable_unhealthy_connection_termination : bool;
      (** enable_unhealthy_connection_termination *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__target_health_state *)

type aws_lb_target_group = {
  connection_termination : bool option; [@option]
      (** connection_termination *)
  deregistration_delay : string option; [@option]
      (** deregistration_delay *)
  id : string option; [@option]  (** id *)
  ip_address_type : string option; [@option]  (** ip_address_type *)
  lambda_multi_value_headers_enabled : bool option; [@option]
      (** lambda_multi_value_headers_enabled *)
  load_balancing_algorithm_type : string option; [@option]
      (** load_balancing_algorithm_type *)
  load_balancing_anomaly_mitigation : string option; [@option]
      (** load_balancing_anomaly_mitigation *)
  load_balancing_cross_zone_enabled : string option; [@option]
      (** load_balancing_cross_zone_enabled *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  port : float option; [@option]  (** port *)
  preserve_client_ip : string option; [@option]
      (** preserve_client_ip *)
  protocol : string option; [@option]  (** protocol *)
  protocol_version : string option; [@option]
      (** protocol_version *)
  proxy_protocol_v2 : bool option; [@option]
      (** proxy_protocol_v2 *)
  slow_start : float option; [@option]  (** slow_start *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target_type : string option; [@option]  (** target_type *)
  vpc_id : string option; [@option]  (** vpc_id *)
  health_check : aws_lb_target_group__health_check list;
  stickiness : aws_lb_target_group__stickiness list;
  target_failover : aws_lb_target_group__target_failover list;
  target_health_state : aws_lb_target_group__target_health_state list;
}
[@@deriving yojson_of]
(** aws_lb_target_group *)

let aws_lb_target_group ?connection_termination ?deregistration_delay
    ?id ?ip_address_type ?lambda_multi_value_headers_enabled
    ?load_balancing_algorithm_type ?load_balancing_anomaly_mitigation
    ?load_balancing_cross_zone_enabled ?name ?name_prefix ?port
    ?preserve_client_ip ?protocol ?protocol_version
    ?proxy_protocol_v2 ?slow_start ?tags ?tags_all ?target_type
    ?vpc_id ~health_check ~stickiness ~target_failover
    ~target_health_state __resource_id =
  let __resource_type = "aws_lb_target_group" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_target_group __resource);
  ()
