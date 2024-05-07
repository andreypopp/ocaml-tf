(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type health_check = {
  enabled : bool prop option; [@option]
  healthy_threshold : float prop option; [@option]
  interval : float prop option; [@option]
  matcher : string prop option; [@option]
  path : string prop option; [@option]
  port : string prop option; [@option]
  protocol : string prop option; [@option]
  timeout : float prop option; [@option]
  unhealthy_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check) -> ()

let yojson_of_health_check =
  (function
   | {
       enabled = v_enabled;
       healthy_threshold = v_healthy_threshold;
       interval = v_interval;
       matcher = v_matcher;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       timeout = v_timeout;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unhealthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_matcher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "matcher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check

[@@@deriving.end]

type stickiness = {
  cookie_duration : float prop option; [@option]
  cookie_name : string prop option; [@option]
  enabled : bool prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stickiness) -> ()

let yojson_of_stickiness =
  (function
   | {
       cookie_duration = v_cookie_duration;
       cookie_name = v_cookie_name;
       enabled = v_enabled;
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cookie_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cookie_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stickiness -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stickiness

[@@@deriving.end]

type target_failover = {
  on_deregistration : string prop;
  on_unhealthy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_failover) -> ()

let yojson_of_target_failover =
  (function
   | {
       on_deregistration = v_on_deregistration;
       on_unhealthy = v_on_unhealthy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_on_unhealthy in
         ("on_unhealthy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_on_deregistration
         in
         ("on_deregistration", arg) :: bnds
       in
       `Assoc bnds
    : target_failover -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_failover

[@@@deriving.end]

type target_health_state = {
  enable_unhealthy_connection_termination : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_health_state) -> ()

let yojson_of_target_health_state =
  (function
   | {
       enable_unhealthy_connection_termination =
         v_enable_unhealthy_connection_termination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_unhealthy_connection_termination
         in
         ("enable_unhealthy_connection_termination", arg) :: bnds
       in
       `Assoc bnds
    : target_health_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_health_state

[@@@deriving.end]

type aws_alb_target_group = {
  connection_termination : bool prop option; [@option]
  deregistration_delay : string prop option; [@option]
  id : string prop option; [@option]
  ip_address_type : string prop option; [@option]
  lambda_multi_value_headers_enabled : bool prop option; [@option]
  load_balancing_algorithm_type : string prop option; [@option]
  load_balancing_anomaly_mitigation : string prop option; [@option]
  load_balancing_cross_zone_enabled : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  port : float prop option; [@option]
  preserve_client_ip : string prop option; [@option]
  protocol : string prop option; [@option]
  protocol_version : string prop option; [@option]
  proxy_protocol_v2 : bool prop option; [@option]
  slow_start : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_type : string prop option; [@option]
  vpc_id : string prop option; [@option]
  health_check : health_check list;
  stickiness : stickiness list;
  target_failover : target_failover list;
  target_health_state : target_health_state list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_alb_target_group) -> ()

let yojson_of_aws_alb_target_group =
  (function
   | {
       connection_termination = v_connection_termination;
       deregistration_delay = v_deregistration_delay;
       id = v_id;
       ip_address_type = v_ip_address_type;
       lambda_multi_value_headers_enabled =
         v_lambda_multi_value_headers_enabled;
       load_balancing_algorithm_type =
         v_load_balancing_algorithm_type;
       load_balancing_anomaly_mitigation =
         v_load_balancing_anomaly_mitigation;
       load_balancing_cross_zone_enabled =
         v_load_balancing_cross_zone_enabled;
       name = v_name;
       name_prefix = v_name_prefix;
       port = v_port;
       preserve_client_ip = v_preserve_client_ip;
       protocol = v_protocol;
       protocol_version = v_protocol_version;
       proxy_protocol_v2 = v_proxy_protocol_v2;
       slow_start = v_slow_start;
       tags = v_tags;
       tags_all = v_tags_all;
       target_type = v_target_type;
       vpc_id = v_vpc_id;
       health_check = v_health_check;
       stickiness = v_stickiness;
       target_failover = v_target_failover;
       target_health_state = v_target_health_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_health_state
             v_target_health_state
         in
         ("target_health_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_failover v_target_failover
         in
         ("target_failover", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_stickiness v_stickiness
         in
         ("stickiness", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_health_check v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_type", arg in
             bnd :: bnds
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
         match v_slow_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "slow_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_protocol_v2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "proxy_protocol_v2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_client_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preserve_client_ip", arg in
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancing_cross_zone_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_cross_zone_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancing_anomaly_mitigation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_anomaly_mitigation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancing_algorithm_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_algorithm_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda_multi_value_headers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lambda_multi_value_headers_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
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
         match v_deregistration_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deregistration_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "connection_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_alb_target_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_alb_target_group

[@@@deriving.end]

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
    ?vpc_id ?(health_check = []) ?(stickiness = [])
    ?(target_failover = []) ?(target_health_state = []) () :
    aws_alb_target_group =
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
  tf_name : string;
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
    ?vpc_id ?(health_check = []) ?(stickiness = [])
    ?(target_failover = []) ?(target_health_state = []) __id =
  let __type = "aws_alb_target_group" in
  let __attrs =
    ({
       tf_name = __id;
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
    ?vpc_id ?(health_check = []) ?(stickiness = [])
    ?(target_failover = []) ?(target_health_state = []) __id =
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
