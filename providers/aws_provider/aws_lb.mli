(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb__access_logs
type aws_lb__connection_logs
type aws_lb__subnet_mapping
type aws_lb__timeouts
type aws_lb

val aws_lb :
  ?customer_owned_ipv4_pool:string ->
  ?desync_mitigation_mode:string ->
  ?dns_record_client_routing_policy:string ->
  ?drop_invalid_header_fields:bool ->
  ?enable_cross_zone_load_balancing:bool ->
  ?enable_deletion_protection:bool ->
  ?enable_http2:bool ->
  ?enable_tls_version_and_cipher_suite_headers:bool ->
  ?enable_waf_fail_open:bool ->
  ?enable_xff_client_port:bool ->
  ?idle_timeout:float ->
  ?load_balancer_type:string ->
  ?preserve_host_header:bool ->
  ?tags:(string * string) list ->
  ?xff_header_processing_mode:string ->
  ?timeouts:aws_lb__timeouts ->
  access_logs:aws_lb__access_logs list ->
  connection_logs:aws_lb__connection_logs list ->
  subnet_mapping:aws_lb__subnet_mapping list ->
  string ->
  unit
