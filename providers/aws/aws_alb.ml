(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs = {
  bucket : string prop;
  enabled : bool prop option; [@option]
  prefix : string prop option; [@option]
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
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : access_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs

[@@@deriving.end]

type connection_logs = {
  bucket : string prop;
  enabled : bool prop option; [@option]
  prefix : string prop option; [@option]
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
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : connection_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_logs

[@@@deriving.end]

type subnet_mapping = {
  allocation_id : string prop option; [@option]
  ipv6_address : string prop option; [@option]
  private_ipv4_address : string prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet_mapping) -> ()

let yojson_of_subnet_mapping =
  (function
   | {
       allocation_id = v_allocation_id;
       ipv6_address = v_ipv6_address;
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
         match v_private_ipv4_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ipv4_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subnet_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet_mapping

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type aws_alb = {
  customer_owned_ipv4_pool : string prop option; [@option]
  desync_mitigation_mode : string prop option; [@option]
  dns_record_client_routing_policy : string prop option; [@option]
  drop_invalid_header_fields : bool prop option; [@option]
  enable_cross_zone_load_balancing : bool prop option; [@option]
  enable_deletion_protection : bool prop option; [@option]
  enable_http2 : bool prop option; [@option]
  enable_tls_version_and_cipher_suite_headers : bool prop option;
      [@option]
  enable_waf_fail_open : bool prop option; [@option]
  enable_xff_client_port : bool prop option; [@option]
  enforce_security_group_inbound_rules_on_private_link_traffic :
    string prop option;
      [@option]
  id : string prop option; [@option]
  idle_timeout : float prop option; [@option]
  internal : bool prop option; [@option]
  ip_address_type : string prop option; [@option]
  load_balancer_type : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  preserve_host_header : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  xff_header_processing_mode : string prop option; [@option]
  access_logs : access_logs list;
  connection_logs : connection_logs list;
  subnet_mapping : subnet_mapping list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_alb) -> ()

let yojson_of_aws_alb =
  (function
   | {
       customer_owned_ipv4_pool = v_customer_owned_ipv4_pool;
       desync_mitigation_mode = v_desync_mitigation_mode;
       dns_record_client_routing_policy =
         v_dns_record_client_routing_policy;
       drop_invalid_header_fields = v_drop_invalid_header_fields;
       enable_cross_zone_load_balancing =
         v_enable_cross_zone_load_balancing;
       enable_deletion_protection = v_enable_deletion_protection;
       enable_http2 = v_enable_http2;
       enable_tls_version_and_cipher_suite_headers =
         v_enable_tls_version_and_cipher_suite_headers;
       enable_waf_fail_open = v_enable_waf_fail_open;
       enable_xff_client_port = v_enable_xff_client_port;
       enforce_security_group_inbound_rules_on_private_link_traffic =
         v_enforce_security_group_inbound_rules_on_private_link_traffic;
       id = v_id;
       idle_timeout = v_idle_timeout;
       internal = v_internal;
       ip_address_type = v_ip_address_type;
       load_balancer_type = v_load_balancer_type;
       name = v_name;
       name_prefix = v_name_prefix;
       preserve_host_header = v_preserve_host_header;
       security_groups = v_security_groups;
       subnets = v_subnets;
       tags = v_tags;
       tags_all = v_tags_all;
       xff_header_processing_mode = v_xff_header_processing_mode;
       access_logs = v_access_logs;
       connection_logs = v_connection_logs;
       subnet_mapping = v_subnet_mapping;
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
         let arg =
           yojson_of_list yojson_of_subnet_mapping v_subnet_mapping
         in
         ("subnet_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connection_logs v_connection_logs
         in
         ("connection_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_logs v_access_logs
         in
         ("access_logs", arg) :: bnds
       in
       let bnds =
         match v_xff_header_processing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "xff_header_processing_mode", arg in
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
         match v_preserve_host_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_host_header", arg in
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
         match v_load_balancer_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_type", arg in
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
         match v_internal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal", arg in
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
         match
           v_enforce_security_group_inbound_rules_on_private_link_traffic
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               ( "enforce_security_group_inbound_rules_on_private_link_traffic",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_enable_xff_client_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_xff_client_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_waf_fail_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_waf_fail_open", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_tls_version_and_cipher_suite_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_tls_version_and_cipher_suite_headers", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_enable_http2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_http2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_cross_zone_load_balancing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_cross_zone_load_balancing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drop_invalid_header_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "drop_invalid_header_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_record_client_routing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_record_client_routing_policy", arg in
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
         match v_customer_owned_ipv4_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_owned_ipv4_pool", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_alb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_alb

[@@@deriving.end]

let access_logs ?enabled ?prefix ~bucket () : access_logs =
  { bucket; enabled; prefix }

let connection_logs ?enabled ?prefix ~bucket () : connection_logs =
  { bucket; enabled; prefix }

let subnet_mapping ?allocation_id ?ipv6_address ?private_ipv4_address
    ~subnet_id () : subnet_mapping =
  { allocation_id; ipv6_address; private_ipv4_address; subnet_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_alb ?customer_owned_ipv4_pool ?desync_mitigation_mode
    ?dns_record_client_routing_policy ?drop_invalid_header_fields
    ?enable_cross_zone_load_balancing ?enable_deletion_protection
    ?enable_http2 ?enable_tls_version_and_cipher_suite_headers
    ?enable_waf_fail_open ?enable_xff_client_port
    ?enforce_security_group_inbound_rules_on_private_link_traffic ?id
    ?idle_timeout ?internal ?ip_address_type ?load_balancer_type
    ?name ?name_prefix ?preserve_host_header ?security_groups
    ?subnets ?tags ?tags_all ?xff_header_processing_mode ?timeouts
    ~access_logs ~connection_logs ~subnet_mapping () : aws_alb =
  {
    customer_owned_ipv4_pool;
    desync_mitigation_mode;
    dns_record_client_routing_policy;
    drop_invalid_header_fields;
    enable_cross_zone_load_balancing;
    enable_deletion_protection;
    enable_http2;
    enable_tls_version_and_cipher_suite_headers;
    enable_waf_fail_open;
    enable_xff_client_port;
    enforce_security_group_inbound_rules_on_private_link_traffic;
    id;
    idle_timeout;
    internal;
    ip_address_type;
    load_balancer_type;
    name;
    name_prefix;
    preserve_host_header;
    security_groups;
    subnets;
    tags;
    tags_all;
    xff_header_processing_mode;
    access_logs;
    connection_logs;
    subnet_mapping;
    timeouts;
  }

type t = {
  arn : string prop;
  arn_suffix : string prop;
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
  name_prefix : string prop;
  preserve_host_header : bool prop;
  security_groups : string list prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  xff_header_processing_mode : string prop;
  zone_id : string prop;
}

let make ?customer_owned_ipv4_pool ?desync_mitigation_mode
    ?dns_record_client_routing_policy ?drop_invalid_header_fields
    ?enable_cross_zone_load_balancing ?enable_deletion_protection
    ?enable_http2 ?enable_tls_version_and_cipher_suite_headers
    ?enable_waf_fail_open ?enable_xff_client_port
    ?enforce_security_group_inbound_rules_on_private_link_traffic ?id
    ?idle_timeout ?internal ?ip_address_type ?load_balancer_type
    ?name ?name_prefix ?preserve_host_header ?security_groups
    ?subnets ?tags ?tags_all ?xff_header_processing_mode ?timeouts
    ~access_logs ~connection_logs ~subnet_mapping __id =
  let __type = "aws_alb" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       arn_suffix = Prop.computed __type __id "arn_suffix";
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
       name_prefix = Prop.computed __type __id "name_prefix";
       preserve_host_header =
         Prop.computed __type __id "preserve_host_header";
       security_groups = Prop.computed __type __id "security_groups";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
      yojson_of_aws_alb
        (aws_alb ?customer_owned_ipv4_pool ?desync_mitigation_mode
           ?dns_record_client_routing_policy
           ?drop_invalid_header_fields
           ?enable_cross_zone_load_balancing
           ?enable_deletion_protection ?enable_http2
           ?enable_tls_version_and_cipher_suite_headers
           ?enable_waf_fail_open ?enable_xff_client_port
           ?enforce_security_group_inbound_rules_on_private_link_traffic
           ?id ?idle_timeout ?internal ?ip_address_type
           ?load_balancer_type ?name ?name_prefix
           ?preserve_host_header ?security_groups ?subnets ?tags
           ?tags_all ?xff_header_processing_mode ?timeouts
           ~access_logs ~connection_logs ~subnet_mapping ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_owned_ipv4_pool
    ?desync_mitigation_mode ?dns_record_client_routing_policy
    ?drop_invalid_header_fields ?enable_cross_zone_load_balancing
    ?enable_deletion_protection ?enable_http2
    ?enable_tls_version_and_cipher_suite_headers
    ?enable_waf_fail_open ?enable_xff_client_port
    ?enforce_security_group_inbound_rules_on_private_link_traffic ?id
    ?idle_timeout ?internal ?ip_address_type ?load_balancer_type
    ?name ?name_prefix ?preserve_host_header ?security_groups
    ?subnets ?tags ?tags_all ?xff_header_processing_mode ?timeouts
    ~access_logs ~connection_logs ~subnet_mapping __id =
  let (r : _ Tf_core.resource) =
    make ?customer_owned_ipv4_pool ?desync_mitigation_mode
      ?dns_record_client_routing_policy ?drop_invalid_header_fields
      ?enable_cross_zone_load_balancing ?enable_deletion_protection
      ?enable_http2 ?enable_tls_version_and_cipher_suite_headers
      ?enable_waf_fail_open ?enable_xff_client_port
      ?enforce_security_group_inbound_rules_on_private_link_traffic
      ?id ?idle_timeout ?internal ?ip_address_type
      ?load_balancer_type ?name ?name_prefix ?preserve_host_header
      ?security_groups ?subnets ?tags ?tags_all
      ?xff_header_processing_mode ?timeouts ~access_logs
      ~connection_logs ~subnet_mapping __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
