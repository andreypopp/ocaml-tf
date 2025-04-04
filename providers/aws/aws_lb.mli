(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_logs

val access_logs :
  ?enabled:bool prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  unit ->
  access_logs

type connection_logs

val connection_logs :
  ?enabled:bool prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  unit ->
  connection_logs

type subnet_mapping

val subnet_mapping :
  ?allocation_id:string prop ->
  ?ipv6_address:string prop ->
  ?private_ipv4_address:string prop ->
  subnet_id:string prop ->
  unit ->
  subnet_mapping

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lb

val aws_lb :
  ?client_keep_alive:float prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?desync_mitigation_mode:string prop ->
  ?dns_record_client_routing_policy:string prop ->
  ?drop_invalid_header_fields:bool prop ->
  ?enable_cross_zone_load_balancing:bool prop ->
  ?enable_deletion_protection:bool prop ->
  ?enable_http2:bool prop ->
  ?enable_tls_version_and_cipher_suite_headers:bool prop ->
  ?enable_waf_fail_open:bool prop ->
  ?enable_xff_client_port:bool prop ->
  ?enforce_security_group_inbound_rules_on_private_link_traffic:
    string prop ->
  ?id:string prop ->
  ?idle_timeout:float prop ->
  ?internal:bool prop ->
  ?ip_address_type:string prop ->
  ?load_balancer_type:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?preserve_host_header:bool prop ->
  ?security_groups:string prop list ->
  ?subnets:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?xff_header_processing_mode:string prop ->
  ?access_logs:access_logs list ->
  ?connection_logs:connection_logs list ->
  ?timeouts:timeouts ->
  subnet_mapping:subnet_mapping list ->
  unit ->
  aws_lb

val yojson_of_aws_lb : aws_lb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  arn_suffix : string prop;
  client_keep_alive : float prop;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
  xff_header_processing_mode : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_keep_alive:float prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?desync_mitigation_mode:string prop ->
  ?dns_record_client_routing_policy:string prop ->
  ?drop_invalid_header_fields:bool prop ->
  ?enable_cross_zone_load_balancing:bool prop ->
  ?enable_deletion_protection:bool prop ->
  ?enable_http2:bool prop ->
  ?enable_tls_version_and_cipher_suite_headers:bool prop ->
  ?enable_waf_fail_open:bool prop ->
  ?enable_xff_client_port:bool prop ->
  ?enforce_security_group_inbound_rules_on_private_link_traffic:
    string prop ->
  ?id:string prop ->
  ?idle_timeout:float prop ->
  ?internal:bool prop ->
  ?ip_address_type:string prop ->
  ?load_balancer_type:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?preserve_host_header:bool prop ->
  ?security_groups:string prop list ->
  ?subnets:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?xff_header_processing_mode:string prop ->
  ?access_logs:access_logs list ->
  ?connection_logs:connection_logs list ->
  ?timeouts:timeouts ->
  subnet_mapping:subnet_mapping list ->
  string ->
  t

val make :
  ?client_keep_alive:float prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?desync_mitigation_mode:string prop ->
  ?dns_record_client_routing_policy:string prop ->
  ?drop_invalid_header_fields:bool prop ->
  ?enable_cross_zone_load_balancing:bool prop ->
  ?enable_deletion_protection:bool prop ->
  ?enable_http2:bool prop ->
  ?enable_tls_version_and_cipher_suite_headers:bool prop ->
  ?enable_waf_fail_open:bool prop ->
  ?enable_xff_client_port:bool prop ->
  ?enforce_security_group_inbound_rules_on_private_link_traffic:
    string prop ->
  ?id:string prop ->
  ?idle_timeout:float prop ->
  ?internal:bool prop ->
  ?ip_address_type:string prop ->
  ?load_balancer_type:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?preserve_host_header:bool prop ->
  ?security_groups:string prop list ->
  ?subnets:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?xff_header_processing_mode:string prop ->
  ?access_logs:access_logs list ->
  ?connection_logs:connection_logs list ->
  ?timeouts:timeouts ->
  subnet_mapping:subnet_mapping list ->
  string ->
  t Tf_core.resource
