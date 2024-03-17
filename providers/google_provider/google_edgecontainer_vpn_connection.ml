(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_edgecontainer_vpn_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_edgecontainer_vpn_connection__timeouts *)

type google_edgecontainer_vpn_connection__vpc_project = {
  project_id : string prop option; [@option]
      (** The project of the VPC to connect to. If not specified, it is the same as the cluster project. *)
}
[@@deriving yojson_of]
(** Project detail of the VPC network. Required if VPC is in a different project than the cluster project. *)

type google_edgecontainer_vpn_connection__details__cloud_vpns = {
  gateway : string prop;  (** gateway *)
}
[@@deriving yojson_of]

type google_edgecontainer_vpn_connection__details__cloud_router = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type google_edgecontainer_vpn_connection__details = {
  cloud_router :
    google_edgecontainer_vpn_connection__details__cloud_router list;
      (** cloud_router *)
  cloud_vpns :
    google_edgecontainer_vpn_connection__details__cloud_vpns list;
      (** cloud_vpns *)
  error : string prop;  (** error *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type google_edgecontainer_vpn_connection = {
  cluster : string prop;
      (** The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}. *)
  enable_high_availability : bool prop option; [@option]
      (** Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** Google Cloud Platform location. *)
  name : string prop;  (** The resource name of VPN connection *)
  nat_gateway_ip : string prop option; [@option]
      (** NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
This is empty if NAT is not used. *)
  project : string prop option; [@option]  (** project *)
  router : string prop option; [@option]
      (** The VPN connection Cloud Router name. *)
  vpc : string prop option; [@option]
      (** The network ID of VPC to connect to. *)
  timeouts : google_edgecontainer_vpn_connection__timeouts option;
  vpc_project : google_edgecontainer_vpn_connection__vpc_project list;
}
[@@deriving yojson_of]
(** google_edgecontainer_vpn_connection *)

type t = {
  cluster : string prop;
  create_time : string prop;
  details : google_edgecontainer_vpn_connection__details list prop;
  effective_labels : (string * string) list prop;
  enable_high_availability : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  nat_gateway_ip : string prop;
  project : string prop;
  router : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  vpc : string prop;
}

let google_edgecontainer_vpn_connection ?enable_high_availability ?id
    ?labels ?nat_gateway_ip ?project ?router ?vpc ?timeouts ~cluster
    ~location ~name ~vpc_project __resource_id =
  let __resource_type = "google_edgecontainer_vpn_connection" in
  let __resource =
    ({
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
      : google_edgecontainer_vpn_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgecontainer_vpn_connection __resource);
  let __resource_attributes =
    ({
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       details =
         Prop.computed __resource_type __resource_id "details";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       enable_high_availability =
         Prop.computed __resource_type __resource_id
           "enable_high_availability";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       nat_gateway_ip =
         Prop.computed __resource_type __resource_id "nat_gateway_ip";
       project =
         Prop.computed __resource_type __resource_id "project";
       router = Prop.computed __resource_type __resource_id "router";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       vpc = Prop.computed __resource_type __resource_id "vpc";
     }
      : t)
  in
  __resource_attributes
