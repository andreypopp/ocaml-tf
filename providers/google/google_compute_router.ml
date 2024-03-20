(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp__advertised_ip_ranges = {
  description : string prop option; [@option]
      (** User-specified description for the IP range. *)
  range : string prop;
      (** The IP range to advertise. The value must be a
CIDR-formatted string. *)
}
[@@deriving yojson_of]
(** User-specified list of individual IP ranges to advertise in
custom mode. This field can only be populated if advertiseMode
is CUSTOM and is advertised to all peers of the router. These IP
ranges will be advertised in addition to any specified groups.
Leave this field blank to advertise no custom IP ranges. *)

type bgp = {
  advertise_mode : string prop option; [@option]
      (** User-specified flag to indicate which mode to use for advertisement. Default value: DEFAULT Possible values: [DEFAULT, CUSTOM] *)
  advertised_groups : string prop list option; [@option]
      (** User-specified list of prefix groups to advertise in custom mode.
This field can only be populated if advertiseMode is CUSTOM and
is advertised to all peers of the router. These groups will be
advertised in addition to any specified prefixes. Leave this field
blank to advertise no custom groups.

This enum field has the one valid value: ALL_SUBNETS *)
  asn : float prop;
      (** Local BGP Autonomous System Number (ASN). Must be an RFC6996
private ASN, either 16-bit or 32-bit. The value will be fixed for
this router resource. All VPN tunnels that link to this router
will have the same local ASN. *)
  keepalive_interval : float prop option; [@option]
      (** The interval in seconds between BGP keepalive messages that are sent
to the peer. Hold time is three times the interval at which keepalive
messages are sent, and the hold time is the maximum number of seconds
allowed to elapse between successive keepalive messages that BGP
receives from a peer.

BGP will use the smaller of either the local hold time value or the
peer's hold time value as the hold time for the BGP connection
between the two peers. If set, this value must be between 20 and 60.
The default is 20. *)
  advertised_ip_ranges : bgp__advertised_ip_ranges list;
}
[@@deriving yojson_of]
(** BGP information specific to this router. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_router = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  encrypted_interconnect_router : bool prop option; [@option]
      (** Indicates if a router is dedicated for use with encrypted VLAN
attachments (interconnectAttachments). *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63 characters
long and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
which means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  network : string prop;
      (** A reference to the network to which this router belongs. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where the router resides. *)
  bgp : bgp list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router *)

let bgp__advertised_ip_ranges ?description ~range () :
    bgp__advertised_ip_ranges =
  { description; range }

let bgp ?advertise_mode ?advertised_groups ?keepalive_interval ~asn
    ~advertised_ip_ranges () : bgp =
  {
    advertise_mode;
    advertised_groups;
    asn;
    keepalive_interval;
    advertised_ip_ranges;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_router ?description ?encrypted_interconnect_router
    ?id ?project ?region ?timeouts ~name ~network ~bgp () :
    google_compute_router =
  {
    description;
    encrypted_interconnect_router;
    id;
    name;
    network;
    project;
    region;
    bgp;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  encrypted_interconnect_router : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?encrypted_interconnect_router ?id ?project
    ?region ?timeouts ~name ~network ~bgp __id =
  let __type = "google_compute_router" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       encrypted_interconnect_router =
         Prop.computed __type __id "encrypted_interconnect_router";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router
        (google_compute_router ?description
           ?encrypted_interconnect_router ?id ?project ?region
           ?timeouts ~name ~network ~bgp ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?encrypted_interconnect_router
    ?id ?project ?region ?timeouts ~name ~network ~bgp __id =
  let (r : _ Tf_core.resource) =
    make ?description ?encrypted_interconnect_router ?id ?project
      ?region ?timeouts ~name ~network ~bgp __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
