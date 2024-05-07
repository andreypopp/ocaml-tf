(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs = {
  bucket : string prop;
  bucket_prefix : string prop;
  enabled : bool prop;
  interval : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_logs) -> ()

let yojson_of_access_logs =
  (function
   | {
       bucket = v_bucket;
       bucket_prefix = v_bucket_prefix;
       enabled = v_enabled;
       interval = v_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_prefix in
         ("bucket_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : access_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs

[@@@deriving.end]

type health_check = {
  healthy_threshold : float prop;
  interval : float prop;
  target : string prop;
  timeout : float prop;
  unhealthy_threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check) -> ()

let yojson_of_health_check =
  (function
   | {
       healthy_threshold = v_healthy_threshold;
       interval = v_interval;
       target = v_target;
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
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
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
       `Assoc bnds
    : health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check

[@@@deriving.end]

type listener = {
  instance_port : float prop;
  instance_protocol : string prop;
  lb_port : float prop;
  lb_protocol : string prop;
  ssl_certificate_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : listener) -> ()

let yojson_of_listener =
  (function
   | {
       instance_port = v_instance_port;
       instance_protocol = v_instance_protocol;
       lb_port = v_lb_port;
       lb_protocol = v_lb_protocol;
       ssl_certificate_id = v_ssl_certificate_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssl_certificate_id
         in
         ("ssl_certificate_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lb_protocol in
         ("lb_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lb_port in
         ("lb_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_protocol
         in
         ("instance_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_port in
         ("instance_port", arg) :: bnds
       in
       `Assoc bnds
    : listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_listener

[@@@deriving.end]

type aws_elb = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elb) -> ()

let yojson_of_aws_elb =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elb

[@@@deriving.end]

let aws_elb ?id ?tags ~name () : aws_elb = { id; name; tags }

type t = {
  tf_name : string;
  access_logs : access_logs list prop;
  arn : string prop;
  availability_zones : string list prop;
  connection_draining : bool prop;
  connection_draining_timeout : float prop;
  cross_zone_load_balancing : bool prop;
  desync_mitigation_mode : string prop;
  dns_name : string prop;
  health_check : health_check list prop;
  id : string prop;
  idle_timeout : float prop;
  instances : string list prop;
  internal : bool prop;
  listener : listener list prop;
  name : string prop;
  security_groups : string list prop;
  source_security_group : string prop;
  source_security_group_id : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  zone_id : string prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_elb" in
  let __attrs =
    ({
       tf_name = __id;
       access_logs = Prop.computed __type __id "access_logs";
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       connection_draining =
         Prop.computed __type __id "connection_draining";
       connection_draining_timeout =
         Prop.computed __type __id "connection_draining_timeout";
       cross_zone_load_balancing =
         Prop.computed __type __id "cross_zone_load_balancing";
       desync_mitigation_mode =
         Prop.computed __type __id "desync_mitigation_mode";
       dns_name = Prop.computed __type __id "dns_name";
       health_check = Prop.computed __type __id "health_check";
       id = Prop.computed __type __id "id";
       idle_timeout = Prop.computed __type __id "idle_timeout";
       instances = Prop.computed __type __id "instances";
       internal = Prop.computed __type __id "internal";
       listener = Prop.computed __type __id "listener";
       name = Prop.computed __type __id "name";
       security_groups = Prop.computed __type __id "security_groups";
       source_security_group =
         Prop.computed __type __id "source_security_group";
       source_security_group_id =
         Prop.computed __type __id "source_security_group_id";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_elb (aws_elb ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
