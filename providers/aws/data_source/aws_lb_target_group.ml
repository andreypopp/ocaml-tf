(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type health_check = {
  enabled : bool prop;
  healthy_threshold : float prop;
  interval : float prop;
  matcher : string prop;
  path : string prop;
  port : string prop;
  protocol : string prop;
  timeout : float prop;
  unhealthy_threshold : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_unhealthy_threshold
         in
         ("unhealthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_matcher in
         ("matcher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_healthy_threshold
         in
         ("healthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check

[@@@deriving.end]

type stickiness = {
  cookie_duration : float prop;
  cookie_name : string prop;
  enabled : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cookie_name in
         ("cookie_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cookie_duration
         in
         ("cookie_duration", arg) :: bnds
       in
       `Assoc bnds
    : stickiness -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stickiness

[@@@deriving.end]

type aws_lb_target_group = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  load_balancing_anomaly_mitigation : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_target_group) -> ()

let yojson_of_aws_lb_target_group =
  (function
   | {
       arn = v_arn;
       id = v_id;
       load_balancing_anomaly_mitigation =
         v_load_balancing_anomaly_mitigation;
       name = v_name;
       tags = v_tags;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lb_target_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_target_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_lb_target_group ?arn ?id ?load_balancing_anomaly_mitigation
    ?name ?tags ?timeouts () : aws_lb_target_group =
  {
    arn;
    id;
    load_balancing_anomaly_mitigation;
    name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  arn_suffix : string prop;
  connection_termination : bool prop;
  deregistration_delay : string prop;
  health_check : health_check list prop;
  id : string prop;
  lambda_multi_value_headers_enabled : bool prop;
  load_balancer_arns : string list prop;
  load_balancing_algorithm_type : string prop;
  load_balancing_anomaly_mitigation : string prop;
  load_balancing_cross_zone_enabled : string prop;
  name : string prop;
  port : float prop;
  preserve_client_ip : string prop;
  protocol : string prop;
  protocol_version : string prop;
  proxy_protocol_v2 : bool prop;
  slow_start : float prop;
  stickiness : stickiness list prop;
  tags : (string * string) list prop;
  target_type : string prop;
  vpc_id : string prop;
}

let make ?arn ?id ?load_balancing_anomaly_mitigation ?name ?tags
    ?timeouts __id =
  let __type = "aws_lb_target_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       arn_suffix = Prop.computed __type __id "arn_suffix";
       connection_termination =
         Prop.computed __type __id "connection_termination";
       deregistration_delay =
         Prop.computed __type __id "deregistration_delay";
       health_check = Prop.computed __type __id "health_check";
       id = Prop.computed __type __id "id";
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
       port = Prop.computed __type __id "port";
       preserve_client_ip =
         Prop.computed __type __id "preserve_client_ip";
       protocol = Prop.computed __type __id "protocol";
       protocol_version =
         Prop.computed __type __id "protocol_version";
       proxy_protocol_v2 =
         Prop.computed __type __id "proxy_protocol_v2";
       slow_start = Prop.computed __type __id "slow_start";
       stickiness = Prop.computed __type __id "stickiness";
       tags = Prop.computed __type __id "tags";
       target_type = Prop.computed __type __id "target_type";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_target_group
        (aws_lb_target_group ?arn ?id
           ?load_balancing_anomaly_mitigation ?name ?tags ?timeouts
           ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?load_balancing_anomaly_mitigation
    ?name ?tags ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?load_balancing_anomaly_mitigation ?name ?tags
      ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
