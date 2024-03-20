(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log_config

val log_config :
  enable:bool prop -> filter:string prop -> unit -> log_config

type rules__action

val rules__action :
  ?source_nat_active_ips:string prop list ->
  ?source_nat_drain_ips:string prop list ->
  unit ->
  rules__action

type rules

val rules :
  ?description:string prop ->
  match_:string prop ->
  rule_number:float prop ->
  action:rules__action list ->
  unit ->
  rules

type subnetwork

val subnetwork :
  ?secondary_ip_range_names:string prop list ->
  name:string prop ->
  source_ip_ranges_to_nat:string prop list ->
  unit ->
  subnetwork

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_router_nat

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
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  source_subnetwork_ip_ranges_to_nat:string prop ->
  log_config:log_config list ->
  rules:rules list ->
  subnetwork:subnetwork list ->
  unit ->
  google_compute_router_nat

val yojson_of_google_compute_router_nat :
  google_compute_router_nat -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  source_subnetwork_ip_ranges_to_nat:string prop ->
  log_config:log_config list ->
  rules:rules list ->
  subnetwork:subnetwork list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  source_subnetwork_ip_ranges_to_nat:string prop ->
  log_config:log_config list ->
  rules:rules list ->
  subnetwork:subnetwork list ->
  string ->
  t Tf_core.resource
