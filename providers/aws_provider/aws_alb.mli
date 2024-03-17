(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb__access_logs
type aws_alb__connection_logs
type aws_alb__subnet_mapping
type aws_alb__timeouts
type aws_alb

val aws_alb :
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?xff_header_processing_mode:string prop ->
  ?timeouts:aws_alb__timeouts ->
  access_logs:aws_alb__access_logs list ->
  connection_logs:aws_alb__connection_logs list ->
  subnet_mapping:aws_alb__subnet_mapping list ->
  string ->
  unit
