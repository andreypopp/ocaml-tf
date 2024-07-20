(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop;  (** enabled *)
  prefix : string prop;  (** prefix *)
}

type connection_logs = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop;  (** enabled *)
  prefix : string prop;  (** prefix *)
}

type subnet_mapping = {
  allocation_id : string prop;  (** allocation_id *)
  ipv6_address : string prop;  (** ipv6_address *)
  outpost_id : string prop;  (** outpost_id *)
  private_ipv4_address : string prop;  (** private_ipv4_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_alb

val aws_alb :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  unit ->
  aws_alb

val yojson_of_aws_alb : aws_alb -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  vpc_id : string prop;
  xff_header_processing_mode : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
