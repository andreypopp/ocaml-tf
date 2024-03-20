(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_vpn_tunnel *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_vpn_tunnel ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret () : google_compute_vpn_tunnel =
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

type t = {
  creation_timestamp : string prop;
  description : string prop;
  detailed_status : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ike_version : float prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  local_traffic_selector : string list prop;
  name : string prop;
  peer_external_gateway : string prop;
  peer_external_gateway_interface : float prop;
  peer_gcp_gateway : string prop;
  peer_ip : string prop;
  project : string prop;
  region : string prop;
  remote_traffic_selector : string list prop;
  router : string prop;
  self_link : string prop;
  shared_secret : string prop;
  shared_secret_hash : string prop;
  target_vpn_gateway : string prop;
  terraform_labels : (string * string) list prop;
  tunnel_id : string prop;
  vpn_gateway : string prop;
  vpn_gateway_interface : float prop;
}

let make ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret __id =
  let __type = "google_compute_vpn_tunnel" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       detailed_status = Prop.computed __type __id "detailed_status";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ike_version = Prop.computed __type __id "ike_version";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       local_traffic_selector =
         Prop.computed __type __id "local_traffic_selector";
       name = Prop.computed __type __id "name";
       peer_external_gateway =
         Prop.computed __type __id "peer_external_gateway";
       peer_external_gateway_interface =
         Prop.computed __type __id "peer_external_gateway_interface";
       peer_gcp_gateway =
         Prop.computed __type __id "peer_gcp_gateway";
       peer_ip = Prop.computed __type __id "peer_ip";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       remote_traffic_selector =
         Prop.computed __type __id "remote_traffic_selector";
       router = Prop.computed __type __id "router";
       self_link = Prop.computed __type __id "self_link";
       shared_secret = Prop.computed __type __id "shared_secret";
       shared_secret_hash =
         Prop.computed __type __id "shared_secret_hash";
       target_vpn_gateway =
         Prop.computed __type __id "target_vpn_gateway";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tunnel_id = Prop.computed __type __id "tunnel_id";
       vpn_gateway = Prop.computed __type __id "vpn_gateway";
       vpn_gateway_interface =
         Prop.computed __type __id "vpn_gateway_interface";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_vpn_tunnel
        (google_compute_vpn_tunnel ?description ?id ?ike_version
           ?labels ?local_traffic_selector ?peer_external_gateway
           ?peer_external_gateway_interface ?peer_gcp_gateway
           ?peer_ip ?project ?region ?remote_traffic_selector ?router
           ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface
           ?timeouts ~name ~shared_secret ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ike_version ?labels
      ?local_traffic_selector ?peer_external_gateway
      ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
      ?project ?region ?remote_traffic_selector ?router
      ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface
      ?timeouts ~name ~shared_secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
