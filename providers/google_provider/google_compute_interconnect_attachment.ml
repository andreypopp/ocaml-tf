(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_interconnect_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_interconnect_attachment__timeouts *)

type google_compute_interconnect_attachment__private_interconnect_info = {
  tag8021q : float;  (** tag8021q *)
}
[@@deriving yojson_of]

type google_compute_interconnect_attachment = {
  admin_enabled : bool option; [@option]
      (** Whether the VLAN attachment is enabled or disabled.  When using
PARTNER type this will Pre-Activate the interconnect attachment *)
  candidate_subnets : string list option; [@option]
      (** Up to 16 candidate prefixes that can be used to restrict the allocation
of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
All prefixes must be within link-local address space (169.254.0.0/16)
and must be /29 or shorter (/28, /27, etc). Google will attempt to select
an unused /29 from the supplied candidate prefix(es). The request will
fail if all possible /29s are in use on Google's edge. If not supplied,
Google will randomly select an unused /29 from all of link-local space. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  encryption : string option; [@option]
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
  interconnect : string option; [@option]
      (** URL of the underlying Interconnect object that this attachment's
traffic will traverse through. Required if type is DEDICATED, must not
be set if type is PARTNER. *)
  ipsec_internal_addresses : string list option; [@option]
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
  name : string;
      (** Name of the resource. Provided by the client when the resource is created. The
name must be 1-63 characters long, and comply with RFC1035. Specifically, the
name must be 1-63 characters long and match the regular expression
'[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character must be a
lowercase letter, and all following characters must be a dash, lowercase
letter, or digit, except the last character, which cannot be a dash. *)
  router : string;
      (** URL of the cloud router to be used for dynamic routing. This router must be in
the same region as this InterconnectAttachment. The InterconnectAttachment will
automatically connect the Interconnect to the network & region within which the
Cloud Router is configured. *)
  timeouts : google_compute_interconnect_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_interconnect_attachment *)

let google_compute_interconnect_attachment ?admin_enabled
    ?candidate_subnets ?description ?encryption ?interconnect
    ?ipsec_internal_addresses ?timeouts ~name ~router __resource_id =
  let __resource_type = "google_compute_interconnect_attachment" in
  let __resource =
    {
      admin_enabled;
      candidate_subnets;
      description;
      encryption;
      interconnect;
      ipsec_internal_addresses;
      name;
      router;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_interconnect_attachment __resource);
  ()
