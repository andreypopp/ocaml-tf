(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_router_interface__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_router_interface__timeouts *)

type google_compute_router_interface = {
  id : string prop option; [@option]  (** id *)
  interconnect_attachment : string prop option; [@option]
      (** The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of interconnect_attachment, subnetwork or vpn_tunnel can be specified. *)
  ip_range : string prop option; [@option]
      (** The IP address and range of the interface. The IP range must be in the RFC3927 link-local IP space. Changing this forces a new interface to be created. *)
  name : string prop;
      (** A unique name for the interface, required by GCE. Changing this forces a new interface to be created. *)
  private_ip_address : string prop option; [@option]
      (** The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created. *)
  project : string prop option; [@option]
      (** The ID of the project in which this interface's router belongs. If it is not provided, the provider project is used. Changing this forces a new interface to be created. *)
  redundant_interface : string prop option; [@option]
      (** The name of the interface that is redundant to this interface. Changing this forces a new interface to be created. *)
  region : string prop option; [@option]
      (** The region this interface's router sits in. If not specified, the project region will be used. Changing this forces a new interface to be created. *)
  router : string prop;
      (** The name of the router this interface will be attached to. Changing this forces a new interface to be created. *)
  subnetwork : string prop option; [@option]
      (** The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. Changing this forces a new interface to be created. Only one of subnetwork, interconnect_attachment or vpn_tunnel can be specified. *)
  vpn_tunnel : string prop option; [@option]
      (** The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel, interconnect_attachment or subnetwork can be specified. *)
  timeouts : google_compute_router_interface__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router_interface *)

type t = {
  id : string prop;
  interconnect_attachment : string prop;
  ip_range : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  redundant_interface : string prop;
  region : string prop;
  router : string prop;
  subnetwork : string prop;
  vpn_tunnel : string prop;
}

let google_compute_router_interface ?id ?interconnect_attachment
    ?ip_range ?private_ip_address ?project ?redundant_interface
    ?region ?subnetwork ?vpn_tunnel ?timeouts ~name ~router
    __resource_id =
  let __resource_type = "google_compute_router_interface" in
  let __resource =
    ({
       id;
       interconnect_attachment;
       ip_range;
       name;
       private_ip_address;
       project;
       redundant_interface;
       region;
       router;
       subnetwork;
       vpn_tunnel;
       timeouts;
     }
      : google_compute_router_interface)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_router_interface __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       interconnect_attachment =
         Prop.computed __resource_type __resource_id
           "interconnect_attachment";
       ip_range =
         Prop.computed __resource_type __resource_id "ip_range";
       name = Prop.computed __resource_type __resource_id "name";
       private_ip_address =
         Prop.computed __resource_type __resource_id
           "private_ip_address";
       project =
         Prop.computed __resource_type __resource_id "project";
       redundant_interface =
         Prop.computed __resource_type __resource_id
           "redundant_interface";
       region = Prop.computed __resource_type __resource_id "region";
       router = Prop.computed __resource_type __resource_id "router";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
       vpn_tunnel =
         Prop.computed __resource_type __resource_id "vpn_tunnel";
     }
      : t)
  in
  __resource_attributes
