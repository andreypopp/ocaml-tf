(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_alb__access_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_alb__access_logs *)

type aws_alb__connection_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_alb__connection_logs *)

type aws_alb__subnet_mapping = {
  allocation_id : string prop option; [@option]  (** allocation_id *)
  ipv6_address : string prop option; [@option]  (** ipv6_address *)
  outpost_id : string prop;  (** outpost_id *)
  private_ipv4_address : string prop option; [@option]
      (** private_ipv4_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_alb__subnet_mapping *)

type aws_alb__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_alb__timeouts *)

type aws_alb = {
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
  access_logs : aws_alb__access_logs list;
  connection_logs : aws_alb__connection_logs list;
  subnet_mapping : aws_alb__subnet_mapping list;
  timeouts : aws_alb__timeouts option;
}
[@@deriving yojson_of]
(** aws_alb *)

let aws_alb ?customer_owned_ipv4_pool ?desync_mitigation_mode
    ?dns_record_client_routing_policy ?drop_invalid_header_fields
    ?enable_cross_zone_load_balancing ?enable_deletion_protection
    ?enable_http2 ?enable_tls_version_and_cipher_suite_headers
    ?enable_waf_fail_open ?enable_xff_client_port
    ?enforce_security_group_inbound_rules_on_private_link_traffic ?id
    ?idle_timeout ?internal ?ip_address_type ?load_balancer_type
    ?name ?name_prefix ?preserve_host_header ?security_groups
    ?subnets ?tags ?tags_all ?xff_header_processing_mode ?timeouts
    ~access_logs ~connection_logs ~subnet_mapping __resource_id =
  let __resource_type = "aws_alb" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_alb __resource);
  ()
