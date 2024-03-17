(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_vpn_tunnel__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_vpn_tunnel__timeouts *)

type google_compute_vpn_tunnel = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  ike_version : float prop option; [@option]
      (** IKE protocol version to use when establishing the VPN tunnel with
peer VPN gateway.
Acceptable IKE versions are 1 or 2. Default version is 2. *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this VpnTunnel.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  local_traffic_selector : string prop list option; [@option]
      (** Local traffic selector to use when establishing the VPN tunnel with
peer VPN gateway. The value should be a CIDR formatted string,
for example '192.168.0.0/16'. The ranges should be disjoint.
Only IPv4 is supported. *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long, and
comply with RFC1035. Specifically, the name must be 1-63
characters long and match the regular expression
'[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character
must be a lowercase letter, and all following characters must
be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  peer_external_gateway : string prop option; [@option]
      (** URL of the peer side external VPN gateway to which this VPN tunnel is connected. *)
  peer_external_gateway_interface : float prop option; [@option]
      (** The interface ID of the external VPN gateway to which this VPN tunnel is connected. *)
  peer_gcp_gateway : string prop option; [@option]
      (** URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
ID in the peer GCP VPN gateway.
This field must reference a 'google_compute_ha_vpn_gateway' resource. *)
  peer_ip : string prop option; [@option]
      (** IP address of the peer VPN gateway. Only IPv4 is supported. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region where the tunnel is located. If unset, is set to the region of 'target_vpn_gateway'. *)
  remote_traffic_selector : string prop list option; [@option]
      (** Remote traffic selector to use when establishing the VPN tunnel with
peer VPN gateway. The value should be a CIDR formatted string,
for example '192.168.0.0/16'. The ranges should be disjoint.
Only IPv4 is supported. *)
  router : string prop option; [@option]
      (** URL of router resource to be used for dynamic routing. *)
  shared_secret : string prop;
      (** Shared secret used to set the secure session between the Cloud VPN
gateway and the peer VPN gateway. *)
  target_vpn_gateway : string prop option; [@option]
      (** URL of the Target VPN gateway with which this VPN tunnel is
associated. *)
  vpn_gateway : string prop option; [@option]
      (** URL of the VPN gateway with which this VPN tunnel is associated.
This must be used if a High Availability VPN gateway resource is created.
This field must reference a 'google_compute_ha_vpn_gateway' resource. *)
  vpn_gateway_interface : float prop option; [@option]
      (** The interface ID of the VPN gateway with which this VPN tunnel is associated. *)
  timeouts : google_compute_vpn_tunnel__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_vpn_tunnel *)

let google_compute_vpn_tunnel ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret __resource_id =
  let __resource_type = "google_compute_vpn_tunnel" in
  let __resource =
    {
      description;
      id;
      ike_version;
      labels;
      local_traffic_selector;
      name;
      peer_external_gateway;
      peer_external_gateway_interface;
      peer_gcp_gateway;
      peer_ip;
      project;
      region;
      remote_traffic_selector;
      router;
      shared_secret;
      target_vpn_gateway;
      vpn_gateway;
      vpn_gateway_interface;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_vpn_tunnel __resource);
  ()
