(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs = {
  bucket : string prop;
  bucket_prefix : string prop option; [@option]
  enabled : bool prop option; [@option]
  interval : float prop option; [@option]
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
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
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
       let bnds =
         match v_bucket_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_prefix", arg in
             bnd :: bnds
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
  ssl_certificate_id : string prop option; [@option]
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
         match v_ssl_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_certificate_id", arg in
             bnd :: bnds
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

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_elb = {
  availability_zones : string prop list option; [@option]
  connection_draining : bool prop option; [@option]
  connection_draining_timeout : float prop option; [@option]
  cross_zone_load_balancing : bool prop option; [@option]
  desync_mitigation_mode : string prop option; [@option]
  id : string prop option; [@option]
  idle_timeout : float prop option; [@option]
  instances : string prop list option; [@option]
  internal : bool prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  security_groups : string prop list option; [@option]
  source_security_group : string prop option; [@option]
  subnets : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  access_logs : access_logs list;
  health_check : health_check list;
  listener : listener list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elb) -> ()

let yojson_of_aws_elb =
  (function
   | {
       availability_zones = v_availability_zones;
       connection_draining = v_connection_draining;
       connection_draining_timeout = v_connection_draining_timeout;
       cross_zone_load_balancing = v_cross_zone_load_balancing;
       desync_mitigation_mode = v_desync_mitigation_mode;
       id = v_id;
       idle_timeout = v_idle_timeout;
       instances = v_instances;
       internal = v_internal;
       name = v_name;
       name_prefix = v_name_prefix;
       security_groups = v_security_groups;
       source_security_group = v_source_security_group;
       subnets = v_subnets;
       tags = v_tags;
       tags_all = v_tags_all;
       access_logs = v_access_logs;
       health_check = v_health_check;
       listener = v_listener;
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
         let arg = yojson_of_list yojson_of_listener v_listener in
         ("listener", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_health_check v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_logs v_access_logs
         in
         ("access_logs", arg) :: bnds
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
         match v_subnets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_security_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_security_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
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
         match v_internal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout", arg in
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
         match v_desync_mitigation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desync_mitigation_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_zone_load_balancing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cross_zone_load_balancing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_draining_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_draining_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_draining with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "connection_draining", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "availability_zones", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elb

[@@@deriving.end]

let access_logs ?bucket_prefix ?enabled ?interval ~bucket () :
    access_logs =
  { bucket; bucket_prefix; enabled; interval }

let health_check ~healthy_threshold ~interval ~target ~timeout
    ~unhealthy_threshold () : health_check =
  {
    healthy_threshold;
    interval;
    target;
    timeout;
    unhealthy_threshold;
  }

let listener ?ssl_certificate_id ~instance_port ~instance_protocol
    ~lb_port ~lb_protocol () : listener =
  {
    instance_port;
    instance_protocol;
    lb_port;
    lb_protocol;
    ssl_certificate_id;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_elb ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener () : aws_elb =
  {
    availability_zones;
    connection_draining;
    connection_draining_timeout;
    cross_zone_load_balancing;
    desync_mitigation_mode;
    id;
    idle_timeout;
    instances;
    internal;
    name;
    name_prefix;
    security_groups;
    source_security_group;
    subnets;
    tags;
    tags_all;
    access_logs;
    health_check;
    listener;
    timeouts;
  }

type t = {
  arn : string prop;
  availability_zones : string list prop;
  connection_draining : bool prop;
  connection_draining_timeout : float prop;
  cross_zone_load_balancing : bool prop;
  desync_mitigation_mode : string prop;
  dns_name : string prop;
  id : string prop;
  idle_timeout : float prop;
  instances : string list prop;
  internal : bool prop;
  name : string prop;
  name_prefix : string prop;
  security_groups : string list prop;
  source_security_group : string prop;
  source_security_group_id : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zone_id : string prop;
}

let make ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener __id =
  let __type = "aws_elb" in
  let __attrs =
    ({
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
       id = Prop.computed __type __id "id";
       idle_timeout = Prop.computed __type __id "idle_timeout";
       instances = Prop.computed __type __id "instances";
       internal = Prop.computed __type __id "internal";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       security_groups = Prop.computed __type __id "security_groups";
       source_security_group =
         Prop.computed __type __id "source_security_group";
       source_security_group_id =
         Prop.computed __type __id "source_security_group_id";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elb
        (aws_elb ?availability_zones ?connection_draining
           ?connection_draining_timeout ?cross_zone_load_balancing
           ?desync_mitigation_mode ?id ?idle_timeout ?instances
           ?internal ?name ?name_prefix ?security_groups
           ?source_security_group ?subnets ?tags ?tags_all ?timeouts
           ~access_logs ~health_check ~listener ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zones ?connection_draining
    ?connection_draining_timeout ?cross_zone_load_balancing
    ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
    ?name ?name_prefix ?security_groups ?source_security_group
    ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
    ~listener __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zones ?connection_draining
      ?connection_draining_timeout ?cross_zone_load_balancing
      ?desync_mitigation_mode ?id ?idle_timeout ?instances ?internal
      ?name ?name_prefix ?security_groups ?source_security_group
      ?subnets ?tags ?tags_all ?timeouts ~access_logs ~health_check
      ~listener __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
