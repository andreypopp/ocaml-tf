(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_edgecontainer_vpn_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_edgecontainer_vpn_connection__timeouts *)

type google_edgecontainer_vpn_connection__vpc_project = {
  project_id : string option; [@option]
      (** The project of the VPC to connect to. If not specified, it is the same as the cluster project. *)
}
[@@deriving yojson_of]
(** Project detail of the VPC network. Required if VPC is in a different project than the cluster project. *)

type google_edgecontainer_vpn_connection__details__cloud_vpns = {
  gateway : string;  (** gateway *)
}
[@@deriving yojson_of]

type google_edgecontainer_vpn_connection__details__cloud_router = {
  name : string;  (** name *)
}
[@@deriving yojson_of]

type google_edgecontainer_vpn_connection__details = {
  cloud_router :
    google_edgecontainer_vpn_connection__details__cloud_router list;
      (** cloud_router *)
  cloud_vpns :
    google_edgecontainer_vpn_connection__details__cloud_vpns list;
      (** cloud_vpns *)
  error : string;  (** error *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_edgecontainer_vpn_connection = {
  cluster : string;
      (** The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}. *)
  enable_high_availability : bool option; [@option]
      (** Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** Google Cloud Platform location. *)
  name : string;  (** The resource name of VPN connection *)
  nat_gateway_ip : string option; [@option]
      (** NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
This is empty if NAT is not used. *)
  project : string option; [@option]  (** project *)
  router : string option; [@option]
      (** The VPN connection Cloud Router name. *)
  vpc : string option; [@option]
      (** The network ID of VPC to connect to. *)
  timeouts : google_edgecontainer_vpn_connection__timeouts option;
  vpc_project : google_edgecontainer_vpn_connection__vpc_project list;
}
[@@deriving yojson_of]
(** google_edgecontainer_vpn_connection *)

let google_edgecontainer_vpn_connection ?enable_high_availability ?id
    ?labels ?nat_gateway_ip ?project ?router ?vpc ?timeouts ~cluster
    ~location ~name ~vpc_project __resource_id =
  let __resource_type = "google_edgecontainer_vpn_connection" in
  let __resource =
    {
      cluster;
      enable_high_availability;
      id;
      labels;
      location;
      name;
      nat_gateway_ip;
      project;
      router;
      vpc;
      timeouts;
      vpc_project;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgecontainer_vpn_connection __resource);
  ()
