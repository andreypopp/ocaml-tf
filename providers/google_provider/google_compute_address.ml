(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_address__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_address__timeouts *)

type google_compute_address = {
  address : string option; [@option]
      (** The static external IP address represented by this resource.
The IP address must be inside the specified subnetwork,
if any. Set by the API if undefined. *)
  address_type : string option; [@option]
      (** The type of address to reserve.
Note: if you set this argument's value as 'INTERNAL' you need to leave the 'network_tier' argument unset in that resource block. Default value: EXTERNAL Possible values: [INTERNAL, EXTERNAL] *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  id : string option; [@option]  (** id *)
  ip_version : string option; [@option]
      (** The IP Version that will be used by this address. The default value is 'IPV4'. Possible values: [IPV4, IPV6] *)
  ipv6_endpoint_type : string option; [@option]
      (** The endpoint type of this address, which should be VM or NETLB. This is
used for deciding which type of endpoint this address can be used after
the external IPv6 address reservation. Possible values: [VM, NETLB] *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to this address.  A list of key->value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  network : string option; [@option]
      (** The URL of the network in which to reserve the address. This field
can only be used with INTERNAL type with the VPC_PEERING and
IPSEC_INTERCONNECT purposes. *)
  network_tier : string option; [@option]
      (** The networking tier used for configuring this address. If this field is not
specified, it is assumed to be PREMIUM.
This argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it's always Premium](https://cloud.google.com/network-tiers/docs/overview). Possible values: [PREMIUM, STANDARD] *)
  prefix_length : float option; [@option]
      (** The prefix length if the resource represents an IP range. *)
  project : string option; [@option]  (** project *)
  purpose : string option; [@option]
      (** The purpose of this resource, which can be one of the following values.

* GCE_ENDPOINT for addresses that are used by VM instances, alias IP
ranges, load balancers, and similar resources.

* SHARED_LOADBALANCER_VIP for an address that can be used by multiple
internal load balancers.

* VPC_PEERING for addresses that are reserved for VPC peer networks.

* IPSEC_INTERCONNECT for addresses created from a private IP range that
are reserved for a VLAN attachment in an HA VPN over Cloud Interconnect
configuration. These addresses are regional resources.

* PRIVATE_SERVICE_CONNECT for a private network address that is used to
configure Private Service Connect. Only global internal addresses can use
this purpose.


This should only be set when using an Internal address. *)
  region : string option; [@option]
      (** The Region in which the created address should reside.
If it is not provided, the provider region is used. *)
  subnetwork : string option; [@option]
      (** The URL of the subnetwork in which to reserve the address. If an IP
address is specified, it must be within the subnetwork's IP range.
This field can only be used with INTERNAL type with
GCE_ENDPOINT/DNS_RESOLVER purposes. *)
  timeouts : google_compute_address__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_address *)

let google_compute_address ?address ?address_type ?description ?id
    ?ip_version ?ipv6_endpoint_type ?labels ?network ?network_tier
    ?prefix_length ?project ?purpose ?region ?subnetwork ?timeouts
    ~name __resource_id =
  let __resource_type = "google_compute_address" in
  let __resource =
    {
      address;
      address_type;
      description;
      id;
      ip_version;
      ipv6_endpoint_type;
      labels;
      name;
      network;
      network_tier;
      prefix_length;
      project;
      purpose;
      region;
      subnetwork;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_address __resource);
  ()
