(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_target_group__health_check = {
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
(** aws_lb_target_group__health_check *)

type aws_lb_target_group__stickiness = {
  cookie_duration : float prop option; [@option]
      (** cookie_duration *)
  cookie_name : string prop option; [@option]  (** cookie_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__stickiness *)

type aws_lb_target_group__target_failover = {
  on_deregistration : string prop;  (** on_deregistration *)
  on_unhealthy : string prop;  (** on_unhealthy *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__target_failover *)

type aws_lb_target_group__target_health_state = {
  enable_unhealthy_connection_termination : bool prop;
      (** enable_unhealthy_connection_termination *)
}
[@@deriving yojson_of]
(** aws_lb_target_group__target_health_state *)

type aws_lb_target_group = {
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
