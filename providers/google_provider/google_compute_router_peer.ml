(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_router_peer__advertised_ip_ranges = {
  description : string option; [@option]
      (** User-specified description for the IP range. *)
  range : string;
      (** The IP range to advertise. The value must be a
CIDR-formatted string. *)
}
[@@deriving yojson_of]
(** User-specified list of individual IP ranges to advertise in
custom mode. This field can only be populated if advertiseMode
is 'CUSTOM' and is advertised to all peers of the router. These IP
ranges will be advertised in addition to any specified groups.
Leave this field blank to advertise no custom IP ranges. *)

type google_compute_router_peer__bfd = {
  min_receive_interval : float option; [@option]
      (** The minimum interval, in milliseconds, between BFD control packets
received from the peer router. The actual value is negotiated
between the two routers and is equal to the greater of this value
and the transmit interval of the other router. If set, this value
must be between 1000 and 30000. *)
  min_transmit_interval : float option; [@option]
      (** The minimum interval, in milliseconds, between BFD control packets
transmitted to the peer router. The actual value is negotiated
between the two routers and is equal to the greater of this value
and the corresponding receive interval of the other router. If set,
this value must be between 1000 and 30000. *)
  multiplier : float option; [@option]
      (** The number of consecutive BFD packets that must be missed before
BFD declares that a peer is unavailable. If set, the value must
be a value between 5 and 16. *)
  session_initialization_mode : string;
      (** The BFD session initialization mode for this BGP peer.
If set to 'ACTIVE', the Cloud Router will initiate the BFD session
for this BGP peer. If set to 'PASSIVE', the Cloud Router will wait
for the peer router to initiate the BFD session for this BGP peer.
If set to 'DISABLED', BFD is disabled for this BGP peer. Possible values: [ACTIVE, DISABLED, PASSIVE] *)
}
[@@deriving yojson_of]
(** BFD configuration for the BGP peering. *)

type google_compute_router_peer__md5_authentication_key = {
  key : string;  (** Value of the key. *)
  name : string;
      (** [REQUIRED] Name used to identify the key.
Must be unique within a router. Must be referenced by exactly one bgpPeer. Must comply with RFC1035. *)
}
[@@deriving yojson_of]
(** Present if MD5 authentication is enabled for the peering. Must be the name
of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035. *)

type google_compute_router_peer__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_router_peer__timeouts *)

type google_compute_router_peer = {
  advertise_mode : string option; [@option]
      (** User-specified flag to indicate which mode to use for advertisement.
Valid values of this enum field are: 'DEFAULT', 'CUSTOM' Default value: DEFAULT Possible values: [DEFAULT, CUSTOM] *)
  advertised_groups : string list option; [@option]
      (** User-specified list of prefix groups to advertise in custom
mode, which currently supports the following option:

* 'ALL_SUBNETS': Advertises all of the router's own VPC subnets.
This excludes any routes learned for subnets that use VPC Network
Peering.


Note that this field can only be populated if advertiseMode is 'CUSTOM'
and overrides the list defined for the router (in the bgp message).
These groups are advertised in addition to any specified prefixes.
Leave this field blank to advertise no custom groups. *)
  advertised_route_priority : float option; [@option]
      (** The priority of routes advertised to this BGP peer.
Where there is more than one matching route of maximum
length, the routes with the lowest priority value win. *)
  enable : bool option; [@option]
      (** The status of the BGP peer connection. If set to false, any active session
with the peer is terminated and all associated routing information is removed.
If set to true, the peer connection can be established with routing information.
The default is true. *)
  enable_ipv6 : bool option; [@option]
      (** Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default. *)
  interface : string;
      (** Name of the interface the BGP peer is associated with. *)
  name : string;
      (** Name of this BGP peer. The name must be 1-63 characters long,
and comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  peer_asn : float;
      (** Peer BGP Autonomous System Number (ASN).
Each BGP interface may use a different value. *)
  router : string;
      (** The name of the Cloud Router in which this BgpPeer will be configured. *)
  router_appliance_instance : string option; [@option]
      (** The URI of the VM instance that is used as third-party router appliances
such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
The VM instance must be located in zones contained in the same region as
this Cloud Router. The VM instance is the peer side of the BGP session. *)
  advertised_ip_ranges :
    google_compute_router_peer__advertised_ip_ranges list;
  bfd : google_compute_router_peer__bfd list;
  md5_authentication_key :
    google_compute_router_peer__md5_authentication_key list;
  timeouts : google_compute_router_peer__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router_peer *)

let google_compute_router_peer ?advertise_mode ?advertised_groups
    ?advertised_route_priority ?enable ?enable_ipv6
    ?router_appliance_instance ?timeouts ~interface ~name ~peer_asn
    ~router ~advertised_ip_ranges ~bfd ~md5_authentication_key
    __resource_id =
  let __resource_type = "google_compute_router_peer" in
  let __resource =
    {
      advertise_mode;
      advertised_groups;
      advertised_route_priority;
      enable;
      enable_ipv6;
      interface;
      name;
      peer_asn;
      router;
      router_appliance_instance;
      advertised_ip_ranges;
      bfd;
      md5_authentication_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_router_peer __resource);
  ()
