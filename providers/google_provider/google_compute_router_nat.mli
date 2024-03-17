(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router_nat__log_config
type google_compute_router_nat__rules__action
type google_compute_router_nat__rules
type google_compute_router_nat__subnetwork
type google_compute_router_nat__timeouts
type google_compute_router_nat

val google_compute_router_nat :
  ?drain_nat_ips:string list ->
  ?enable_dynamic_port_allocation:bool ->
  ?enable_endpoint_independent_mapping:bool ->
  ?icmp_idle_timeout_sec:float ->
  ?id:string ->
  ?max_ports_per_vm:float ->
  ?min_ports_per_vm:float ->
  ?nat_ip_allocate_option:string ->
  ?nat_ips:string list ->
  ?project:string ->
  ?region:string ->
  ?tcp_established_idle_timeout_sec:float ->
  ?tcp_time_wait_timeout_sec:float ->
  ?tcp_transitory_idle_timeout_sec:float ->
  ?udp_idle_timeout_sec:float ->
  ?timeouts:google_compute_router_nat__timeouts ->
  name:string ->
  router:string ->
  source_subnetwork_ip_ranges_to_nat:string ->
  log_config:google_compute_router_nat__log_config list ->
  rules:google_compute_router_nat__rules list ->
  subnetwork:google_compute_router_nat__subnetwork list ->
  string ->
  unit
