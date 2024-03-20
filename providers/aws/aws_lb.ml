(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** access_logs *)

type connection_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** connection_logs *)

type subnet_mapping = {
  allocation_id : string prop option; [@option]  (** allocation_id *)
  ipv6_address : string prop option; [@option]  (** ipv6_address *)
  private_ipv4_address : string prop option; [@option]
      (** private_ipv4_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** subnet_mapping *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lb = {
  customer_owned_ipv4_pool : string prop option; [@option]
      (** customer_owned_ipv4_pool *)
  desync_mitigation_mode : string prop option; [@option]
      (** desync_mitigation_mode *)
  dns_record_client_routing_policy : string prop option; [@option]
      (** dns_record_client_routing_policy *)
  drop_invalid_header_fields : bool prop option; [@option]
      (** drop_invalid_header_fields *)
  enable_cross_zone_load_balancing : bool prop option; [@option]
      (** enable_cross_zone_load_balancing *)
  enable_deletion_protection : bool prop option; [@option]
      (** enable_deletion_protection *)
  enable_http2 : bool prop option; [@option]  (** enable_http2 *)
  enable_tls_version_and_cipher_suite_headers : bool prop option;
      [@option]
      (** enable_tls_version_and_cipher_suite_headers *)
  enable_waf_fail_open : bool prop option; [@option]
      (** enable_waf_fail_open *)
  enable_xff_client_port : bool prop option; [@option]
      (** enable_xff_client_port *)
  enforce_security_group_inbound_rules_on_private_link_traffic :
    string prop option;
      [@option]
      (** enforce_security_group_inbound_rules_on_private_link_traffic *)
  id : string prop option; [@option]  (** id *)
  idle_timeout : float prop option; [@option]  (** idle_timeout *)
  internal : bool prop option; [@option]  (** internal *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  load_balancer_type : string prop option; [@option]
      (** load_balancer_type *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  preserve_host_header : bool prop option; [@option]
      (** preserve_host_header *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list option; [@option]  (** subnets *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  xff_header_processing_mode : string prop option; [@option]
      (** xff_header_processing_mode *)
  access_logs : access_logs list;
  connection_logs : connection_logs list;
  subnet_mapping : subnet_mapping list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lb *)

let access_logs ?enabled ?prefix ~bucket () : access_logs =
  { bucket; enabled; prefix }

let connection_logs ?enabled ?prefix ~bucket () : connection_logs =
  { bucket; enabled; prefix }

let subnet_mapping ?allocation_id ?ipv6_address ?private_ipv4_address
    ~subnet_id () : subnet_mapping =
  { allocation_id; ipv6_address; private_ipv4_address; subnet_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lb ?customer_owned_ipv4_pool ?desync_mitigation_mode
    ?dns_record_client_routing_policy ?drop_invalid_header_fields
    ?enable_cross_zone_load_balancing ?enable_deletion_protection
    ?enable_http2 ?enable_tls_version_and_cipher_suite_headers
    ?enable_waf_fail_open ?enable_xff_client_port
    ?enforce_security_group_inbound_rules_on_private_link_traffic ?id
    ?idle_timeout ?internal ?ip_address_type ?load_balancer_type
    ?name ?name_prefix ?preserve_host_header ?security_groups
    ?subnets ?tags ?tags_all ?xff_header_processing_mode ?timeouts
    ~access_logs ~connection_logs ~subnet_mapping () : aws_lb =
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
  let __type = "aws_lb" in
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
      yojson_of_aws_lb
        (aws_lb ?customer_owned_ipv4_pool ?desync_mitigation_mode
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
