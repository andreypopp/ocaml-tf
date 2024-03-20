(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type private_interconnect_info = {
  tag8021q : float prop;  (** tag8021q *)
}
[@@deriving yojson_of]

type google_compute_interconnect_attachment = {
  admin_enabled : bool prop option; [@option]
      (** Whether the VLAN attachment is enabled or disabled.  When using
PARTNER type this will Pre-Activate the interconnect attachment *)
  bandwidth : string prop option; [@option]
      (** Provisioned bandwidth capacity for the interconnect attachment.
For attachments of type DEDICATED, the user can set the bandwidth.
For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
Defaults to BPS_10G Possible values: [BPS_50M, BPS_100M, BPS_200M, BPS_300M, BPS_400M, BPS_500M, BPS_1G, BPS_2G, BPS_5G, BPS_10G, BPS_20G, BPS_50G] *)
  candidate_subnets : string prop list option; [@option]
      (** Up to 16 candidate prefixes that can be used to restrict the allocation
of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
All prefixes must be within link-local address space (169.254.0.0/16)
and must be /29 or shorter (/28, /27, etc). Google will attempt to select
an unused /29 from the supplied candidate prefix(es). The request will
fail if all possible /29s are in use on Google's edge. If not supplied,
Google will randomly select an unused /29 from all of link-local space. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  edge_availability_domain : string prop option; [@option]
      (** Desired availability domain for the attachment. Only available for type
PARTNER, at creation time. For improved reliability, customers should
configure a pair of attachments with one per availability domain. The
selected availability domain will be provided to the Partner via the
pairing key so that the provisioned circuit will lie in the specified
domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY. *)
  encryption : string prop option; [@option]
      (** Indicates the user-supplied encryption option of this interconnect
attachment. Can only be specified at attachment creation for PARTNER or
DEDICATED attachments.

* NONE - This is the default value, which means that the VLAN attachment
carries unencrypted traffic. VMs are able to send traffic to, or receive
traffic from, such a VLAN attachment.

* IPSEC - The VLAN attachment carries only encrypted traffic that is
encrypted by an IPsec device, such as an HA VPN gateway or third-party
IPsec VPN. VMs cannot directly send traffic to, or receive traffic from,
such a VLAN attachment. To use HA VPN over Cloud Interconnect, the VLAN
attachment must be created with this option. Default value: NONE Possible values: [NONE, IPSEC] *)
  id : string prop option; [@option]  (** id *)
  interconnect : string prop option; [@option]
      (** URL of the underlying Interconnect object that this attachment's
traffic will traverse through. Required if type is DEDICATED, must not
be set if type is PARTNER. *)
  ipsec_internal_addresses : string prop list option; [@option]
      (** URL of addresses that have been reserved for the interconnect attachment,
Used only for interconnect attachment that has the encryption option as
IPSEC.

The addresses must be RFC 1918 IP address ranges. When creating HA VPN
gateway over the interconnect attachment, if the attachment is configured
to use an RFC 1918 IP address, then the VPN gateway's IP address will be
allocated from the IP address range specified here.

For example, if the HA VPN gateway's interface 0 is paired to this
interconnect attachment, then an RFC 1918 IP address for the VPN gateway
interface 0 will be allocated from the IP address specified for this
interconnect attachment.

If this field is not specified for interconnect attachment that has
encryption option as IPSEC, later on when creating HA VPN gateway on this
interconnect attachment, the HA VPN gateway's IP address will be
allocated from regional external IP address pool. *)
  mtu : string prop option; [@option]
      (** Maximum Transmission Unit (MTU), in bytes, of packets passing through
this interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440. *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
'[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character must be a
lowercase letter, and all following characters must be a dash, lowercase
letter, or digit, except the last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where the regional interconnect attachment resides. *)
  router : string prop;
      (** URL of the cloud router to be used for dynamic routing. This router must be in
the same region as this InterconnectAttachment. The InterconnectAttachment will
automatically connect the Interconnect to the network & region within which the
Cloud Router is configured. *)
  stack_type : string prop option; [@option]
      (** The stack type for this interconnect attachment to identify whether the IPv6
feature is enabled or not. If not specified, IPV4_ONLY will be used.

This field can be both set at interconnect attachments creation and update
interconnect attachment operations. Possible values: [IPV4_IPV6, IPV4_ONLY] *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of InterconnectAttachment you wish to create. Defaults to
DEDICATED. Possible values: [DEDICATED, PARTNER, PARTNER_PROVIDER] *)
  vlan_tag8021q : float prop option; [@option]
      (** The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
using PARTNER type this will be managed upstream. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_interconnect_attachment *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_interconnect_attachment ?admin_enabled ?bandwidth
    ?candidate_subnets ?description ?edge_availability_domain
    ?encryption ?id ?interconnect ?ipsec_internal_addresses ?mtu
    ?project ?region ?stack_type ?type_ ?vlan_tag8021q ?timeouts
    ~name ~router () : google_compute_interconnect_attachment =
  {
    admin_enabled;
    bandwidth;
    candidate_subnets;
    description;
    edge_availability_domain;
    encryption;
    id;
    interconnect;
    ipsec_internal_addresses;
    mtu;
    name;
    project;
    region;
    router;
    stack_type;
    type_;
    vlan_tag8021q;
    timeouts;
  }

type t = {
  admin_enabled : bool prop;
  bandwidth : string prop;
  candidate_subnets : string list prop;
  cloud_router_ip_address : string prop;
  creation_timestamp : string prop;
  customer_router_ip_address : string prop;
  description : string prop;
  edge_availability_domain : string prop;
  encryption : string prop;
  google_reference_id : string prop;
  id : string prop;
  interconnect : string prop;
  ipsec_internal_addresses : string list prop;
  mtu : string prop;
  name : string prop;
  pairing_key : string prop;
  partner_asn : string prop;
  private_interconnect_info : private_interconnect_info list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  self_link : string prop;
  stack_type : string prop;
  state : string prop;
  type_ : string prop;
  vlan_tag8021q : float prop;
}

let make ?admin_enabled ?bandwidth ?candidate_subnets ?description
    ?edge_availability_domain ?encryption ?id ?interconnect
    ?ipsec_internal_addresses ?mtu ?project ?region ?stack_type
    ?type_ ?vlan_tag8021q ?timeouts ~name ~router __id =
  let __type = "google_compute_interconnect_attachment" in
  let __attrs =
    ({
       admin_enabled = Prop.computed __type __id "admin_enabled";
       bandwidth = Prop.computed __type __id "bandwidth";
       candidate_subnets =
         Prop.computed __type __id "candidate_subnets";
       cloud_router_ip_address =
         Prop.computed __type __id "cloud_router_ip_address";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       customer_router_ip_address =
         Prop.computed __type __id "customer_router_ip_address";
       description = Prop.computed __type __id "description";
       edge_availability_domain =
         Prop.computed __type __id "edge_availability_domain";
       encryption = Prop.computed __type __id "encryption";
       google_reference_id =
         Prop.computed __type __id "google_reference_id";
       id = Prop.computed __type __id "id";
       interconnect = Prop.computed __type __id "interconnect";
       ipsec_internal_addresses =
         Prop.computed __type __id "ipsec_internal_addresses";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       pairing_key = Prop.computed __type __id "pairing_key";
       partner_asn = Prop.computed __type __id "partner_asn";
       private_interconnect_info =
         Prop.computed __type __id "private_interconnect_info";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       router = Prop.computed __type __id "router";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       vlan_tag8021q = Prop.computed __type __id "vlan_tag8021q";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_interconnect_attachment
        (google_compute_interconnect_attachment ?admin_enabled
           ?bandwidth ?candidate_subnets ?description
           ?edge_availability_domain ?encryption ?id ?interconnect
           ?ipsec_internal_addresses ?mtu ?project ?region
           ?stack_type ?type_ ?vlan_tag8021q ?timeouts ~name ~router
           ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_enabled ?bandwidth ?candidate_subnets
    ?description ?edge_availability_domain ?encryption ?id
    ?interconnect ?ipsec_internal_addresses ?mtu ?project ?region
    ?stack_type ?type_ ?vlan_tag8021q ?timeouts ~name ~router __id =
  let (r : _ Tf_core.resource) =
    make ?admin_enabled ?bandwidth ?candidate_subnets ?description
      ?edge_availability_domain ?encryption ?id ?interconnect
      ?ipsec_internal_addresses ?mtu ?project ?region ?stack_type
      ?type_ ?vlan_tag8021q ?timeouts ~name ~router __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
