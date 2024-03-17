(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb__access_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_lb__access_logs *)

type aws_lb__connection_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_lb__connection_logs *)

type aws_lb__subnet_mapping = {
  allocation_id : string prop option; [@option]  (** allocation_id *)
  ipv6_address : string prop option; [@option]  (** ipv6_address *)
  outpost_id : string prop;  (** outpost_id *)
  private_ipv4_address : string prop option; [@option]
      (** private_ipv4_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_lb__subnet_mapping *)

type aws_lb__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lb__timeouts *)

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
  access_logs : aws_lb__access_logs list;
  connection_logs : aws_lb__connection_logs list;
  subnet_mapping : aws_lb__subnet_mapping list;
  timeouts : aws_lb__timeouts option;
}
[@@deriving yojson_of]
(** aws_lb *)

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

let aws_lb ?customer_owned_ipv4_pool ?desync_mitigation_mode
    ?dns_record_client_routing_policy ?drop_invalid_header_fields
    ?enable_cross_zone_load_balancing ?enable_deletion_protection
    ?enable_http2 ?enable_tls_version_and_cipher_suite_headers
    ?enable_waf_fail_open ?enable_xff_client_port
    ?enforce_security_group_inbound_rules_on_private_link_traffic ?id
    ?idle_timeout ?internal ?ip_address_type ?load_balancer_type
    ?name ?name_prefix ?preserve_host_header ?security_groups
    ?subnets ?tags ?tags_all ?xff_header_processing_mode ?timeouts
    ~access_logs ~connection_logs ~subnet_mapping __resource_id =
  let __resource_type = "aws_lb" in
  let __resource =
    ({
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
      : aws_lb)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       arn_suffix =
         Prop.computed __resource_type __resource_id "arn_suffix";
       customer_owned_ipv4_pool =
         Prop.computed __resource_type __resource_id
           "customer_owned_ipv4_pool";
       desync_mitigation_mode =
         Prop.computed __resource_type __resource_id
           "desync_mitigation_mode";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       dns_record_client_routing_policy =
         Prop.computed __resource_type __resource_id
           "dns_record_client_routing_policy";
       drop_invalid_header_fields =
         Prop.computed __resource_type __resource_id
           "drop_invalid_header_fields";
       enable_cross_zone_load_balancing =
         Prop.computed __resource_type __resource_id
           "enable_cross_zone_load_balancing";
       enable_deletion_protection =
         Prop.computed __resource_type __resource_id
           "enable_deletion_protection";
       enable_http2 =
         Prop.computed __resource_type __resource_id "enable_http2";
       enable_tls_version_and_cipher_suite_headers =
         Prop.computed __resource_type __resource_id
           "enable_tls_version_and_cipher_suite_headers";
       enable_waf_fail_open =
         Prop.computed __resource_type __resource_id
           "enable_waf_fail_open";
       enable_xff_client_port =
         Prop.computed __resource_type __resource_id
           "enable_xff_client_port";
       enforce_security_group_inbound_rules_on_private_link_traffic =
         Prop.computed __resource_type __resource_id
           "enforce_security_group_inbound_rules_on_private_link_traffic";
       id = Prop.computed __resource_type __resource_id "id";
       idle_timeout =
         Prop.computed __resource_type __resource_id "idle_timeout";
       internal =
         Prop.computed __resource_type __resource_id "internal";
       ip_address_type =
         Prop.computed __resource_type __resource_id
           "ip_address_type";
       load_balancer_type =
         Prop.computed __resource_type __resource_id
           "load_balancer_type";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       preserve_host_header =
         Prop.computed __resource_type __resource_id
           "preserve_host_header";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       subnets =
         Prop.computed __resource_type __resource_id "subnets";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       xff_header_processing_mode =
         Prop.computed __resource_type __resource_id
           "xff_header_processing_mode";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
