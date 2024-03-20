(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_config = {
  enable : bool prop;
      (** Indicates whether or not to export logs. *)
  filter : string prop;
      (** Specifies the desired filtering of logs on this NAT. Possible values: [ERRORS_ONLY, TRANSLATIONS_ONLY, ALL] *)
}
[@@deriving yojson_of]
(** Configuration for logging on NAT *)

type rules__action = {
  source_nat_active_ips : string prop list option; [@option]
      (** A list of URLs of the IP resources used for this NAT rule.
These IP addresses must be valid static external IP addresses assigned to the project.
This field is used for public NAT. *)
  source_nat_drain_ips : string prop list option; [@option]
      (** A list of URLs of the IP resources to be drained.
These IPs must be valid static external IPs that have been assigned to the NAT.
These IPs should be used for updating/patching a NAT rule only.
This field is used for public NAT. *)
}
[@@deriving yojson_of]
(** The action to be enforced for traffic that matches this rule. *)

type rules = {
  description : string prop option; [@option]
      (** An optional description of this rule. *)
  match_ : string prop; [@key "match"]
      (** CEL expression that specifies the match condition that egress traffic from a VM is evaluated against.
If it evaluates to true, the corresponding action is enforced.

The following examples are valid match expressions for public NAT:

inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')

destination.ip == '1.1.0.1' || destination.ip == '8.8.8.8'

The following example is a valid match expression for private NAT:

nexthop.hub == 'https://networkconnectivity.googleapis.com/v1alpha1/projects/my-project/global/hub/hub-1' *)
  rule_number : float prop;
      (** An integer uniquely identifying a rule in the list.
The rule number must be a positive value between 0 and 65000, and must be unique among rules within a NAT. *)
  action : rules__action list;
}
[@@deriving yojson_of]
(** A list of rules associated with this NAT. *)

type subnetwork = {
  name : string prop;  (** Self-link of subnetwork to NAT *)
  secondary_ip_range_names : string prop list option; [@option]
      (** List of the secondary ranges of the subnetwork that are allowed
to use NAT. This can be populated only if
'LIST_OF_SECONDARY_IP_RANGES' is one of the values in
sourceIpRangesToNat *)
  source_ip_ranges_to_nat : string prop list;
      (** List of options for which source IPs in the subnetwork
should have NAT enabled. Supported values include:
'ALL_IP_RANGES', 'LIST_OF_SECONDARY_IP_RANGES',
'PRIMARY_IP_RANGE'. *)
}
[@@deriving yojson_of]
(** One or more subnetwork NAT configurations. Only used if
'source_subnetwork_ip_ranges_to_nat' is set to 'LIST_OF_SUBNETWORKS' *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_router_nat = {
  drain_nat_ips : string prop list option; [@option]
      (** A list of URLs of the IP resources to be drained. These IPs must be
valid static external IPs that have been assigned to the NAT. *)
  enable_dynamic_port_allocation : bool prop option; [@option]
      (** Enable Dynamic Port Allocation.
If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.

Mutually exclusive with enableEndpointIndependentMapping. *)
  enable_endpoint_independent_mapping : bool prop option; [@option]
      (** Enable endpoint independent mapping.
For more information see the [official documentation](https://cloud.google.com/nat/docs/overview#specs-rfcs). *)
  icmp_idle_timeout_sec : float prop option; [@option]
      (** Timeout (in seconds) for ICMP connections. Defaults to 30s if not set. *)
  id : string prop option; [@option]  (** id *)
  max_ports_per_vm : float prop option; [@option]
      (** Maximum number of ports allocated to a VM from this NAT.
This field can only be set when enableDynamicPortAllocation is enabled. *)
  min_ports_per_vm : float prop option; [@option]
      (** Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set. *)
  name : string prop;
      (** Name of the NAT service. The name must be 1-63 characters long and
comply with RFC1035. *)
  nat_ip_allocate_option : string prop option; [@option]
      (** How external IPs should be allocated for this NAT. Valid values are
'AUTO_ONLY' for only allowing NAT IPs allocated by Google Cloud
Platform, or 'MANUAL_ONLY' for only user-allocated NAT IP addresses. Possible values: [MANUAL_ONLY, AUTO_ONLY] *)
  nat_ips : string prop list option; [@option]
      (** Self-links of NAT IPs. Only valid if natIpAllocateOption
is set to MANUAL_ONLY. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where the router and NAT reside. *)
  router : string prop;
      (** The name of the Cloud Router in which this NAT will be configured. *)
  source_subnetwork_ip_ranges_to_nat : string prop;
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
  tcp_established_idle_timeout_sec : float prop option; [@option]
      (** Timeout (in seconds) for TCP established connections.
Defaults to 1200s if not set. *)
  tcp_time_wait_timeout_sec : float prop option; [@option]
      (** Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
Defaults to 120s if not set. *)
  tcp_transitory_idle_timeout_sec : float prop option; [@option]
      (** Timeout (in seconds) for TCP transitory connections.
Defaults to 30s if not set. *)
  udp_idle_timeout_sec : float prop option; [@option]
      (** Timeout (in seconds) for UDP connections. Defaults to 30s if not set. *)
  log_config : log_config list;
  rules : rules list;
  subnetwork : subnetwork list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router_nat *)

let log_config ~enable ~filter () : log_config = { enable; filter }

let rules__action ?source_nat_active_ips ?source_nat_drain_ips () :
    rules__action =
  { source_nat_active_ips; source_nat_drain_ips }

let rules ?description ~match_ ~rule_number ~action () : rules =
  { description; match_; rule_number; action }

let subnetwork ?secondary_ip_range_names ~name
    ~source_ip_ranges_to_nat () : subnetwork =
  { name; secondary_ip_range_names; source_ip_ranges_to_nat }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_router_nat ?drain_nat_ips
    ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~log_config ~rules
    ~subnetwork () : google_compute_router_nat =
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

type t = {
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

let make ?drain_nat_ips ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~log_config ~rules
    ~subnetwork __id =
  let __type = "google_compute_router_nat" in
  let __attrs =
    ({
       drain_nat_ips = Prop.computed __type __id "drain_nat_ips";
       enable_dynamic_port_allocation =
         Prop.computed __type __id "enable_dynamic_port_allocation";
       enable_endpoint_independent_mapping =
         Prop.computed __type __id
           "enable_endpoint_independent_mapping";
       icmp_idle_timeout_sec =
         Prop.computed __type __id "icmp_idle_timeout_sec";
       id = Prop.computed __type __id "id";
       max_ports_per_vm =
         Prop.computed __type __id "max_ports_per_vm";
       min_ports_per_vm =
         Prop.computed __type __id "min_ports_per_vm";
       name = Prop.computed __type __id "name";
       nat_ip_allocate_option =
         Prop.computed __type __id "nat_ip_allocate_option";
       nat_ips = Prop.computed __type __id "nat_ips";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       router = Prop.computed __type __id "router";
       source_subnetwork_ip_ranges_to_nat =
         Prop.computed __type __id
           "source_subnetwork_ip_ranges_to_nat";
       tcp_established_idle_timeout_sec =
         Prop.computed __type __id "tcp_established_idle_timeout_sec";
       tcp_time_wait_timeout_sec =
         Prop.computed __type __id "tcp_time_wait_timeout_sec";
       tcp_transitory_idle_timeout_sec =
         Prop.computed __type __id "tcp_transitory_idle_timeout_sec";
       udp_idle_timeout_sec =
         Prop.computed __type __id "udp_idle_timeout_sec";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router_nat
        (google_compute_router_nat ?drain_nat_ips
           ?enable_dynamic_port_allocation
           ?enable_endpoint_independent_mapping
           ?icmp_idle_timeout_sec ?id ?max_ports_per_vm
           ?min_ports_per_vm ?nat_ip_allocate_option ?nat_ips
           ?project ?region ?tcp_established_idle_timeout_sec
           ?tcp_time_wait_timeout_sec
           ?tcp_transitory_idle_timeout_sec ?udp_idle_timeout_sec
           ?timeouts ~name ~router
           ~source_subnetwork_ip_ranges_to_nat ~log_config ~rules
           ~subnetwork ());
    attrs = __attrs;
  }

let register ?tf_module ?drain_nat_ips
    ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~log_config ~rules
    ~subnetwork __id =
  let (r : _ Tf_core.resource) =
    make ?drain_nat_ips ?enable_dynamic_port_allocation
      ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
      ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
      ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
      ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
      ?udp_idle_timeout_sec ?timeouts ~name ~router
      ~source_subnetwork_ip_ranges_to_nat ~log_config ~rules
      ~subnetwork __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
