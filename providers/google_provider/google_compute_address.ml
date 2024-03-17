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
  address_type : string option; [@option]
      (** The type of address to reserve.
Note: if you set this argument's value as 'INTERNAL' you need to leave the 'network_tier' argument unset in that resource block. Default value: EXTERNAL Possible values: [INTERNAL, EXTERNAL] *)
  description : string option; [@option]
      (** An optional description of this resource. *)
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
  timeouts : google_compute_address__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_address *)

let google_compute_address ?address_type ?description ?ip_version
    ?ipv6_endpoint_type ?labels ?network ?timeouts ~name
    __resource_id =
  let __resource_type = "google_compute_address" in
  let __resource =
    {
      address_type;
      description;
      ip_version;
      ipv6_endpoint_type;
      labels;
      name;
      network;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_address __resource);
  ()
