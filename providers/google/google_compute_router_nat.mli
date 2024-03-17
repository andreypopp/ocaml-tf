(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router_nat__log_config
type google_compute_router_nat__rules__action
type google_compute_router_nat__rules
type google_compute_router_nat__subnetwork
type google_compute_router_nat__timeouts
type google_compute_router_nat

type t = private {
  drain_nat_ips : string list prop;
  enable_dynamic_port_allocation : bool prop;
  enable_endpoint_independent_mapping : bool prop;
  icmp_idle_timeout_sec : float prop;
  id : string prop;
  max_ports_per_vm : float prop;
  min_ports_per_vm : float prop;
  name : string prop;
  nat_ip_allocate_option : string prop;
  nat_ips : string list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  source_subnetwork_ip_ranges_to_nat : string prop;
  tcp_established_idle_timeout_sec : float prop;
  tcp_time_wait_timeout_sec : float prop;
  tcp_transitory_idle_timeout_sec : float prop;
  udp_idle_timeout_sec : float prop;
}

val google_compute_router_nat :
  ?drain_nat_ips:string prop list ->
  ?enable_dynamic_port_allocation:bool prop ->
  ?enable_endpoint_independent_mapping:bool prop ->
  ?icmp_idle_timeout_sec:float prop ->
  ?id:string prop ->
  ?max_ports_per_vm:float prop ->
  ?min_ports_per_vm:float prop ->
  ?nat_ip_allocate_option:string prop ->
  ?nat_ips:string prop list ->
  ?project:string prop ->
  ?region:string prop ->
  ?tcp_established_idle_timeout_sec:float prop ->
  ?tcp_time_wait_timeout_sec:float prop ->
  ?tcp_transitory_idle_timeout_sec:float prop ->
  ?udp_idle_timeout_sec:float prop ->
  ?timeouts:google_compute_router_nat__timeouts ->
  name:string prop ->
  router:string prop ->
  source_subnetwork_ip_ranges_to_nat:string prop ->
  log_config:google_compute_router_nat__log_config list ->
  rules:google_compute_router_nat__rules list ->
  subnetwork:google_compute_router_nat__subnetwork list ->
  string ->
  t
