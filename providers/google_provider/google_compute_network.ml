(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_network__timeouts *)

type google_compute_network = {
  auto_create_subnetworks : bool option; [@option]
      (** When set to 'true', the network is created in auto subnet mode and
it will create a subnet for each region automatically across the
'10.128.0.0/9' address range.

When set to 'false', the network is created in custom subnet mode so
the user can explicitly connect subnetwork resources. *)
  delete_default_routes_on_create : bool option; [@option]
      (** If set to 'true', default routes ('0.0.0.0/0') will be deleted
immediately after network creation. Defaults to 'false'. *)
  description : string option; [@option]
      (** An optional description of this resource. The resource must be
recreated to modify this field. *)
  enable_ula_internal_ipv6 : bool option; [@option]
      (** Enable ULA internal ipv6 on this network. Enabling this feature will assign
a /48 from google defined ULA prefix fd20::/20. *)
  id : string option; [@option]  (** id *)
  internal_ipv6_range : string option; [@option]
      (** When enabling ula internal ipv6, caller optionally can specify the /48 range
they want from the google defined ULA prefix fd20::/20. The input must be a
valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will
fail if the speficied /48 is already in used by another resource.
If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. *)
  mtu : float option; [@option]
      (** Maximum Transmission Unit in bytes. The default value is 1460 bytes.
The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
with an ICMP 'Fragmentation-Needed' message if the packets are routed to the Internet or other VPCs
with varying MTUs. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network_firewall_policy_enforcement_order : string option;
      [@option]
      (** Set the order that Firewall Rules and Firewall Policies are evaluated. Default value: AFTER_CLASSIC_FIREWALL Possible values: [BEFORE_CLASSIC_FIREWALL, AFTER_CLASSIC_FIREWALL] *)
  project : string option; [@option]  (** project *)
  routing_mode : string option; [@option]
      (** The network-wide routing mode to use. If set to 'REGIONAL', this
network's cloud routers will only advertise routes with subnetworks
of this network in the same region as the router. If set to 'GLOBAL',
this network's cloud routers will advertise routes with all
subnetworks of this network, across regions. Possible values: [REGIONAL, GLOBAL] *)
  timeouts : google_compute_network__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network *)

let google_compute_network ?auto_create_subnetworks
    ?delete_default_routes_on_create ?description
    ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
    ?network_firewall_policy_enforcement_order ?project ?routing_mode
    ?timeouts ~name __resource_id =
  let __resource_type = "google_compute_network" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network __resource);
  ()
