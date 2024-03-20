(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type health_check = {
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
(** health_check *)

type stickiness = {
  cookie_duration : float prop option; [@option]
      (** cookie_duration *)
  cookie_name : string prop option; [@option]  (** cookie_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** stickiness *)

type target_failover = {
  on_deregistration : string prop;  (** on_deregistration *)
  on_unhealthy : string prop;  (** on_unhealthy *)
}
[@@deriving yojson_of]
(** target_failover *)

type target_health_state = {
  enable_unhealthy_connection_termination : bool prop;
      (** enable_unhealthy_connection_termination *)
}
[@@deriving yojson_of]
(** target_health_state *)

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
  health_check : health_check list;
  stickiness : stickiness list;
  target_failover : target_failover list;
  target_health_state : target_health_state list;
}
[@@deriving yojson_of]
(** aws_alb_target_group *)

let health_check ?enabled ?healthy_threshold ?interval ?matcher ?path
    ?port ?protocol ?timeout ?unhealthy_threshold () : health_check =
  {
    enabled;
    healthy_threshold;
    interval;
    matcher;
    path;
    port;
    protocol;
    timeout;
    unhealthy_threshold;
  }

let stickiness ?cookie_duration ?cookie_name ?enabled ~type_ () :
    stickiness =
  { cookie_duration; cookie_name; enabled; type_ }

let target_failover ~on_deregistration ~on_unhealthy () :
    target_failover =
  { on_deregistration; on_unhealthy }

let target_health_state ~enable_unhealthy_connection_termination () :
    target_health_state =
  { enable_unhealthy_connection_termination }

let aws_alb_target_group ?connection_termination
    ?deregistration_delay ?id ?ip_address_type
    ?lambda_multi_value_headers_enabled
    ?load_balancing_algorithm_type ?load_balancing_anomaly_mitigation
    ?load_balancing_cross_zone_enabled ?name ?name_prefix ?port
    ?preserve_client_ip ?protocol ?protocol_version
    ?proxy_protocol_v2 ?slow_start ?tags ?tags_all ?target_type
    ?vpc_id ~health_check ~stickiness ~target_failover
    ~target_health_state () : aws_alb_target_group =
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

let make ?connection_termination ?deregistration_delay ?id
    ?ip_address_type ?lambda_multi_value_headers_enabled
    ?load_balancing_algorithm_type ?load_balancing_anomaly_mitigation
    ?load_balancing_cross_zone_enabled ?name ?name_prefix ?port
    ?preserve_client_ip ?protocol ?protocol_version
    ?proxy_protocol_v2 ?slow_start ?tags ?tags_all ?target_type
    ?vpc_id ~health_check ~stickiness ~target_failover
    ~target_health_state __id =
  let __type = "aws_alb_target_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       arn_suffix = Prop.computed __type __id "arn_suffix";
       connection_termination =
         Prop.computed __type __id "connection_termination";
       deregistration_delay =
         Prop.computed __type __id "deregistration_delay";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       lambda_multi_value_headers_enabled =
         Prop.computed __type __id
           "lambda_multi_value_headers_enabled";
       load_balancer_arns =
         Prop.computed __type __id "load_balancer_arns";
       load_balancing_algorithm_type =
         Prop.computed __type __id "load_balancing_algorithm_type";
       load_balancing_anomaly_mitigation =
         Prop.computed __type __id
           "load_balancing_anomaly_mitigation";
       load_balancing_cross_zone_enabled =
         Prop.computed __type __id
           "load_balancing_cross_zone_enabled";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       port = Prop.computed __type __id "port";
       preserve_client_ip =
         Prop.computed __type __id "preserve_client_ip";
       protocol = Prop.computed __type __id "protocol";
       protocol_version =
         Prop.computed __type __id "protocol_version";
       proxy_protocol_v2 =
         Prop.computed __type __id "proxy_protocol_v2";
       slow_start = Prop.computed __type __id "slow_start";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_type = Prop.computed __type __id "target_type";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_alb_target_group
        (aws_alb_target_group ?connection_termination
           ?deregistration_delay ?id ?ip_address_type
           ?lambda_multi_value_headers_enabled
           ?load_balancing_algorithm_type
           ?load_balancing_anomaly_mitigation
           ?load_balancing_cross_zone_enabled ?name ?name_prefix
           ?port ?preserve_client_ip ?protocol ?protocol_version
           ?proxy_protocol_v2 ?slow_start ?tags ?tags_all
           ?target_type ?vpc_id ~health_check ~stickiness
           ~target_failover ~target_health_state ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_termination ?deregistration_delay
    ?id ?ip_address_type ?lambda_multi_value_headers_enabled
    ?load_balancing_algorithm_type ?load_balancing_anomaly_mitigation
    ?load_balancing_cross_zone_enabled ?name ?name_prefix ?port
    ?preserve_client_ip ?protocol ?protocol_version
    ?proxy_protocol_v2 ?slow_start ?tags ?tags_all ?target_type
    ?vpc_id ~health_check ~stickiness ~target_failover
    ~target_health_state __id =
  let (r : _ Tf_core.resource) =
    make ?connection_termination ?deregistration_delay ?id
      ?ip_address_type ?lambda_multi_value_headers_enabled
      ?load_balancing_algorithm_type
      ?load_balancing_anomaly_mitigation
      ?load_balancing_cross_zone_enabled ?name ?name_prefix ?port
      ?preserve_client_ip ?protocol ?protocol_version
      ?proxy_protocol_v2 ?slow_start ?tags ?tags_all ?target_type
      ?vpc_id ~health_check ~stickiness ~target_failover
      ~target_health_state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
