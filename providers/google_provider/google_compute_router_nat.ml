(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_router_nat__log_config = {
  enable : bool;  (** Indicates whether or not to export logs. *)
  filter : string;
      (** Specifies the desired filtering of logs on this NAT. Possible values: [ERRORS_ONLY, TRANSLATIONS_ONLY, ALL] *)
}
[@@deriving yojson_of]
(** Configuration for logging on NAT *)

type google_compute_router_nat__rules__action = {
  source_nat_active_ips : string list option; [@option]
      (** A list of URLs of the IP resources used for this NAT rule.
These IP addresses must be valid static external IP addresses assigned to the project.
This field is used for public NAT. *)
  source_nat_drain_ips : string list option; [@option]
      (** A list of URLs of the IP resources to be drained.
These IPs must be valid static external IPs that have been assigned to the NAT.
These IPs should be used for updating/patching a NAT rule only.
This field is used for public NAT. *)
}
[@@deriving yojson_of]
(** The action to be enforced for traffic that matches this rule. *)

type google_compute_router_nat__rules = {
  description : string option; [@option]
      (** An optional description of this rule. *)
  match_ : string; [@key "match"]
      (** CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
If it evaluates to true, the corresponding action is enforced.

The following examples are valid match expressions for public NAT:

inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')

destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'

The following example is a valid match expression for private NAT:

nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1' *)
  rule_number : float;
      (** An integer uniquely identifying a rule in the list.
The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT. *)
  action : google_compute_router_nat__rules__action list;
}
[@@deriving yojson_of]
(** A list of rules associated with this NAT. *)

type google_compute_router_nat__subnetwork = {
  name : string;  (** Self-link of subnetwork to NAT *)
  secondary_ip_range_names : string list option; [@option]
      (** List of the secondary ranges of the subnetwork that are allowed
to use NAT. This can be populated only if
'LIST_OF_SECONDARY_IP_RANGES' is one of the values in
sourceIpRangesToNat *)
  source_ip_ranges_to_nat : string list;
      (** List of options for which source IPs in the subnetwork
should have NAT enabled. Supported values include:
'ALL_IP_RANGES', 'LIST_OF_SECONDARY_IP_RANGES',
'PRIMARY_IP_RANGE'. *)
}
[@@deriving yojson_of]
(** One or more subnetwork NAT configurations. Only used if
'source_subnetwork_ip_ranges_to_nat' is set to 'LIST_OF_SUBNETWORKS' *)

type google_compute_router_nat__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_router_nat__timeouts *)

type google_compute_router_nat = {
  drain_nat_ips : string list option; [@option]
      (** A list of URLs of the IP resources to be drained. These IPs must be
valid static external IPs that have been assigned to the NAT. *)
  enable_dynamic_port_allocation : bool option; [@option]
      (** Enable Dynamic Port Allocation.
If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.

Mutually exclusive with enableEndpointIndependentMapping. *)
  enable_endpoint_independent_mapping : bool option; [@option]
      (** Enable endpoint independent mapping.
For more information see the [official documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs). *)
  icmp_idle_timeout_sec : float option; [@option]
      (** Timeout (in seconds) for ICMP connections. Defaults to 30s if not set. *)
  id : string option; [@option]  (** id *)
  max_ports_per_vm : float option; [@option]
      (** Maximum number of ports allocated to a VM from this NAT.
This field can only be set when enableDynamicPortAllocation is enabled. *)
  min_ports_per_vm : float option; [@option]
      (** Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set. *)
  name : string;
      (** Name of the NAT service. The name must be 1-63 characters long and
comply with RFC1035. *)
  nat_ip_allocate_option : string option; [@option]
      (** How external IPs should be allocated for this NAT. Valid values are
'AUTO_ONLY' for only allowing NAT IPs allocated by Google Cloud
Platform, or 'MANUAL_ONLY' for only user-allocated NAT IP addresses. Possible values: [MANUAL_ONLY, AUTO_ONLY] *)
  nat_ips : string list option; [@option]
      (** Self-links of NAT IPs. Only valid if natIpAllocateOption
is set to MANUAL_ONLY. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** Region where the router and NAT reside. *)
  router : string;
      (** The name of the Cloud Router in which this NAT will be configured. *)
  source_subnetwork_ip_ranges_to_nat : string;
      (** How NAT should be configured per Subnetwork.
If 'ALL_SUBNETWORKS_ALL_IP_RANGES', all of the
IP ranges in every Subnetwork are allowed to Nat.
If 'ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES', all of the primary IP
ranges in every Subnetwork are allowed to Nat.
'LIST_OF_SUBNETWORKS': A list of Subnetworks are allowed to Nat
(specified in the field subnetwork below). Note that if this field
contains ALL_SUBNETWORKS_ALL_IP_RANGES or
ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
other RouterNat section in any Router for this network in this region. Possible values: [ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS] *)
  tcp_established_idle_timeout_sec : float option; [@option]
      (** Timeout (in seconds) for TCP established connections.
Defaults to 1200s if not set. *)
  tcp_time_wait_timeout_sec : float option; [@option]
      (** Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
Defaults to 120s if not set. *)
  tcp_transitory_idle_timeout_sec : float option; [@option]
      (** Timeout (in seconds) for TCP transitory connections.
Defaults to 30s if not set. *)
  udp_idle_timeout_sec : float option; [@option]
      (** Timeout (in seconds) for UDP connections. Defaults to 30s if not set. *)
  log_config : google_compute_router_nat__log_config list;
  rules : google_compute_router_nat__rules list;
  subnetwork : google_compute_router_nat__subnetwork list;
  timeouts : google_compute_router_nat__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router_nat *)

let google_compute_router_nat ?drain_nat_ips
    ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~log_config ~rules
    ~subnetwork __resource_id =
  let __resource_type = "google_compute_router_nat" in
  let __resource =
    {
      drain_nat_ips;
      enable_dynamic_port_allocation;
      enable_endpoint_independent_mapping;
      icmp_idle_timeout_sec;
      id;
      max_ports_per_vm;
      min_ports_per_vm;
      name;
      nat_ip_allocate_option;
      nat_ips;
      project;
      region;
      router;
      source_subnetwork_ip_ranges_to_nat;
      tcp_established_idle_timeout_sec;
      tcp_time_wait_timeout_sec;
      tcp_transitory_idle_timeout_sec;
      udp_idle_timeout_sec;
      log_config;
      rules;
      subnetwork;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_router_nat __resource);
  ()
