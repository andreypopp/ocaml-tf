(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log_config = {
  enable : bool prop;  (** enable *)
  filter : string prop;  (** filter *)
}

type rules__action = {
  source_nat_active_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_nat_active_ips *)
  source_nat_drain_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_nat_drain_ips *)
}

type rules = {
  action : rules__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  description : string prop;  (** description *)
  match_ : string prop; [@key "match"]  (** match *)
  rule_number : float prop;  (** rule_number *)
}

type subnetwork = {
  name : string prop;  (** name *)
  secondary_ip_range_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secondary_ip_range_names *)
  source_ip_ranges_to_nat : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_ip_ranges_to_nat *)
}

type google_compute_router_nat

val google_compute_router_nat :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  router:string prop ->
  unit ->
  google_compute_router_nat

val yojson_of_google_compute_router_nat :
  google_compute_router_nat -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  drain_nat_ips : string list prop;
  enable_dynamic_port_allocation : bool prop;
  enable_endpoint_independent_mapping : bool prop;
  icmp_idle_timeout_sec : float prop;
  id : string prop;
  log_config : log_config list prop;
  max_ports_per_vm : float prop;
  min_ports_per_vm : float prop;
  name : string prop;
  nat_ip_allocate_option : string prop;
  nat_ips : string list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  rules : rules list prop;
  source_subnetwork_ip_ranges_to_nat : string prop;
  subnetwork : subnetwork list prop;
  tcp_established_idle_timeout_sec : float prop;
  tcp_time_wait_timeout_sec : float prop;
  tcp_transitory_idle_timeout_sec : float prop;
  udp_idle_timeout_sec : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  router:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  router:string prop ->
  string ->
  t Tf_core.resource
