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

type access_logs = {
  bucket : string prop;
  enabled : bool prop;
  prefix : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_logs) -> ()

let yojson_of_access_logs =
  (function
   | { bucket = v_bucket; enabled = v_enabled; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : access_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs

[@@@deriving.end]

type connection_logs = {
  bucket : string prop;
  enabled : bool prop;
  prefix : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_logs) -> ()

let yojson_of_connection_logs =
  (function
   | { bucket = v_bucket; enabled = v_enabled; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : connection_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_logs

[@@@deriving.end]

type subnet_mapping = {
  allocation_id : string prop;
  ipv6_address : string prop;
  outpost_id : string prop;
  private_ipv4_address : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet_mapping) -> ()

let yojson_of_subnet_mapping =
  (function
   | {
       allocation_id = v_allocation_id;
       ipv6_address = v_ipv6_address;
       outpost_id = v_outpost_id;
       private_ipv4_address = v_private_ipv4_address;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ipv4_address
         in
         ("private_ipv4_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_outpost_id in
         ("outpost_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6_address in
         ("ipv6_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_allocation_id in
         ("allocation_id", arg) :: bnds
       in
       `Assoc bnds
    : subnet_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet_mapping

[@@@deriving.end]

type aws_lb = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb) -> ()

let yojson_of_aws_lb =
  (function
   | {
       arn = v_arn;
       id = v_id;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
    : aws_lb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_lb ?arn ?id ?name ?tags ?timeouts () : aws_lb =
  { arn; id; name; tags; timeouts }

type t = {
  tf_name : string;
  access_logs : access_logs list prop;
  arn : string prop;
  arn_suffix : string prop;
  client_keep_alive : float prop;
  connection_logs : connection_logs list prop;
  customer_owned_ipv4_pool : string prop;
  desync_mitigation_mode : string prop;
  dns_name : string prop;
  dns_record_client_routing_policy : string prop;
  drop_invalid_header_fields : bool prop;
  enable_cross_zone_load_balancing : bool prop;
  enable_deletion_protection : bool prop;
  enable_http2 : bool prop;
  enable_tls_version_and_cipher_suite_headers : bool prop;
  enable_waf_fail_open : bool prop;
  enable_xff_client_port : bool prop;
  enforce_security_group_inbound_rules_on_private_link_traffic :
    string prop;
  id : string prop;
  idle_timeout : float prop;
  internal : bool prop;
  ip_address_type : string prop;
  load_balancer_type : string prop;
  name : string prop;
  preserve_host_header : bool prop;
  security_groups : string list prop;
  subnet_mapping : subnet_mapping list prop;
  subnets : string list prop;
  tags : string Tf_core.assoc prop;
  vpc_id : string prop;
  xff_header_processing_mode : string prop;
  zone_id : string prop;
}

let make ?arn ?id ?name ?tags ?timeouts __id =
  let __type = "aws_lb" in
  let __attrs =
    ({
       tf_name = __id;
       access_logs = Prop.computed __type __id "access_logs";
       arn = Prop.computed __type __id "arn";
       arn_suffix = Prop.computed __type __id "arn_suffix";
       client_keep_alive =
         Prop.computed __type __id "client_keep_alive";
       connection_logs = Prop.computed __type __id "connection_logs";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       desync_mitigation_mode =
         Prop.computed __type __id "desync_mitigation_mode";
       dns_name = Prop.computed __type __id "dns_name";
       dns_record_client_routing_policy =
         Prop.computed __type __id "dns_record_client_routing_policy";
       drop_invalid_header_fields =
         Prop.computed __type __id "drop_invalid_header_fields";
       enable_cross_zone_load_balancing =
         Prop.computed __type __id "enable_cross_zone_load_balancing";
       enable_deletion_protection =
         Prop.computed __type __id "enable_deletion_protection";
       enable_http2 = Prop.computed __type __id "enable_http2";
       enable_tls_version_and_cipher_suite_headers =
         Prop.computed __type __id
           "enable_tls_version_and_cipher_suite_headers";
       enable_waf_fail_open =
         Prop.computed __type __id "enable_waf_fail_open";
       enable_xff_client_port =
         Prop.computed __type __id "enable_xff_client_port";
       enforce_security_group_inbound_rules_on_private_link_traffic =
         Prop.computed __type __id
           "enforce_security_group_inbound_rules_on_private_link_traffic";
       id = Prop.computed __type __id "id";
       idle_timeout = Prop.computed __type __id "idle_timeout";
       internal = Prop.computed __type __id "internal";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       name = Prop.computed __type __id "name";
       preserve_host_header =
         Prop.computed __type __id "preserve_host_header";
       security_groups = Prop.computed __type __id "security_groups";
       subnet_mapping = Prop.computed __type __id "subnet_mapping";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
       xff_header_processing_mode =
         Prop.computed __type __id "xff_header_processing_mode";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb (aws_lb ?arn ?id ?name ?tags ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?name ?tags ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
