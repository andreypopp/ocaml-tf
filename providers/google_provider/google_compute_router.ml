(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_router__bgp__advertised_ip_ranges = {
  description : string option; [@option]
      (** User-specified description for the IP range. *)
  range : string;
      (** The IP range to advertise. The value must be a
CIDR-formatted string. *)
}
[@@deriving yojson_of]
(** User-specified list of individual IP ranges to advertise in
custom mode. This field can only be populated if advertiseMode
is CUSTOM and is advertised to all peers of the router. These IP
ranges will be advertised in addition to any specified groups.
Leave this field blank to advertise no custom IP ranges. *)

type google_compute_router__bgp = {
  advertise_mode : string option; [@option]
      (** User-specified flag to indicate which mode to use for advertisement. Default value: DEFAULT Possible values: [DEFAULT, CUSTOM] *)
  advertised_groups : string list option; [@option]
      (** User-specified list of prefix groups to advertise in custom mode.
This field can only be populated if advertiseMode is CUSTOM and
is advertised to all peers of the router. These groups will be
advertised in addition to any specified prefixes. Leave this field
blank to advertise no custom groups.

This enum field has the one valid value: ALL_SUBNETS *)
  asn : float;
      (** Local BGP Autonomous System Number (ASN). Must be an RFC6996
private ASN, either 16-bit or 32-bit. The value will be fixed for
this router resource. All VPN tunnels that link to this router
will have the same local ASN. *)
  keepalive_interval : float option; [@option]
      (** The interval in seconds between BGP keepalive messages that are sent
to the peer. Hold time is three times the interval at which keepalive
messages are sent, and the hold time is the maximum number of seconds
allowed to elapse between successive keepalive messages that BGP
receives from a peer.

BGP will use the smaller of either the local hold time value or the
peer's hold time value as the hold time for the BGP connection
between the two peers. If set, this value must be between 20 and 60.
The default is 20. *)
  advertised_ip_ranges :
    google_compute_router__bgp__advertised_ip_ranges list;
}
[@@deriving yojson_of]
(** BGP information specific to this router. *)

type google_compute_router__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_router__timeouts *)

type google_compute_router = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  encrypted_interconnect_router : bool option; [@option]
      (** Indicates if a router is dedicated for use with encrypted VLAN
attachments (interconnectAttachments). *)
  name : string;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  network : string;
      (** A reference to the network to which this router belongs. *)
  bgp : google_compute_router__bgp list;
  timeouts : google_compute_router__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router *)

let google_compute_router ?description ?encrypted_interconnect_router
    ?timeouts ~name ~network ~bgp __resource_id =
  let __resource_type = "google_compute_router" in
  let __resource =
    {
      description;
      encrypted_interconnect_router;
      name;
      network;
      bgp;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_router __resource);
  ()
