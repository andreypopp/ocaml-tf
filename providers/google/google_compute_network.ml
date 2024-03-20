(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network = {
  auto_create_subnetworks : bool prop option; [@option]
      (** When set to 'true', the network is created in auto subnet mode and
it will create a subnet for each region automatically across the
'10.128.0.0/9' address range.

When set to 'false', the network is created in custom subnet mode so
the user can explicitly connect subnetwork resources. *)
  delete_default_routes_on_create : bool prop option; [@option]
      (** If set to 'true', default routes ('0.0.0.0/0') will be deleted
immediately after network creation. Defaults to 'false'. *)
  description : string prop option; [@option]
      (** An optional description of this resource. The resource must be
recreated to modify this field. *)
  enable_ula_internal_ipv6 : bool prop option; [@option]
      (** Enable ULA internal ipv6 on this network. Enabling this feature will assign
a /48 from google defined ULA prefix fd20::/20. *)
  id : string prop option; [@option]  (** id *)
  internal_ipv6_range : string prop option; [@option]
      (** When enabling ula internal ipv6, caller optionally can specify the /48 range
they want from the google defined ULA prefix fd20::/20. The input must be a
valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will
fail if the speficied /48 is already in used by another resource.
If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. *)
  mtu : float prop option; [@option]
      (** Maximum Transmission Unit in bytes. The default value is 1460 bytes.
The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
with an ICMP 'Fragmentation-Needed' message if the packets are routed to the Internet or other VPCs
with varying MTUs. *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network_firewall_policy_enforcement_order : string prop option;
      [@option]
      (** Set the order that Firewall Rules and Firewall Policies are evaluated. Default value: AFTER_CLASSIC_FIREWALL Possible values: [BEFORE_CLASSIC_FIREWALL, AFTER_CLASSIC_FIREWALL] *)
  project : string prop option; [@option]  (** project *)
  routing_mode : string prop option; [@option]
      (** The network-wide routing mode to use. If set to 'REGIONAL', this
network's cloud routers will only advertise routes with subnetworks
of this network in the same region as the router. If set to 'GLOBAL',
this network's cloud routers will advertise routes with all
subnetworks of this network, across regions. Possible values: [REGIONAL, GLOBAL] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network ?auto_create_subnetworks
    ?delete_default_routes_on_create ?description
    ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
    ?network_firewall_policy_enforcement_order ?project ?routing_mode
    ?timeouts ~name () : google_compute_network =
  {
    auto_create_subnetworks;
    delete_default_routes_on_create;
    description;
    enable_ula_internal_ipv6;
    id;
    internal_ipv6_range;
    mtu;
    name;
    network_firewall_policy_enforcement_order;
    project;
    routing_mode;
    timeouts;
  }

type t = {
  auto_create_subnetworks : bool prop;
  delete_default_routes_on_create : bool prop;
  description : string prop;
  enable_ula_internal_ipv6 : bool prop;
  gateway_ipv4 : string prop;
  id : string prop;
  internal_ipv6_range : string prop;
  mtu : float prop;
  name : string prop;
  network_firewall_policy_enforcement_order : string prop;
  numeric_id : string prop;
  project : string prop;
  routing_mode : string prop;
  self_link : string prop;
}

let make ?auto_create_subnetworks ?delete_default_routes_on_create
    ?description ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range
    ?mtu ?network_firewall_policy_enforcement_order ?project
    ?routing_mode ?timeouts ~name __id =
  let __type = "google_compute_network" in
  let __attrs =
    ({
       auto_create_subnetworks =
         Prop.computed __type __id "auto_create_subnetworks";
       delete_default_routes_on_create =
         Prop.computed __type __id "delete_default_routes_on_create";
       description = Prop.computed __type __id "description";
       enable_ula_internal_ipv6 =
         Prop.computed __type __id "enable_ula_internal_ipv6";
       gateway_ipv4 = Prop.computed __type __id "gateway_ipv4";
       id = Prop.computed __type __id "id";
       internal_ipv6_range =
         Prop.computed __type __id "internal_ipv6_range";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       network_firewall_policy_enforcement_order =
         Prop.computed __type __id
           "network_firewall_policy_enforcement_order";
       numeric_id = Prop.computed __type __id "numeric_id";
       project = Prop.computed __type __id "project";
       routing_mode = Prop.computed __type __id "routing_mode";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network
        (google_compute_network ?auto_create_subnetworks
           ?delete_default_routes_on_create ?description
           ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
           ?network_firewall_policy_enforcement_order ?project
           ?routing_mode ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create_subnetworks
    ?delete_default_routes_on_create ?description
    ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
    ?network_firewall_policy_enforcement_order ?project ?routing_mode
    ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create_subnetworks ?delete_default_routes_on_create
      ?description ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range
      ?mtu ?network_firewall_policy_enforcement_order ?project
      ?routing_mode ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
