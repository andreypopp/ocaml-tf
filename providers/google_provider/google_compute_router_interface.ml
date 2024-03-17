(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_router_interface__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_router_interface__timeouts *)

type google_compute_router_interface = {
  interconnect_attachment : string option; [@option]
      (** The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of interconnect_attachment, subnetwork or vpn_tunnel can be specified. *)
  name : string;
      (** A unique name for the interface, required by GCE. Changing this forces a new interface to be created. *)
  private_ip_address : string option; [@option]
      (** The regional private internal IP address that is used to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created. *)
  router : string;
      (** The name of the router this interface will be attached to. Changing this forces a new interface to be created. *)
  subnetwork : string option; [@option]
      (** The URI of the subnetwork resource that this interface belongs to, which must be in the same region as the Cloud Router. Changing this forces a new interface to be created. Only one of subnetwork, interconnect_attachment or vpn_tunnel can be specified. *)
  vpn_tunnel : string option; [@option]
      (** The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel, interconnect_attachment or subnetwork can be specified. *)
  timeouts : google_compute_router_interface__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_router_interface *)

let google_compute_router_interface ?interconnect_attachment
    ?private_ip_address ?subnetwork ?vpn_tunnel ?timeouts ~name
    ~router __resource_id =
  let __resource_type = "google_compute_router_interface" in
  let __resource =
    {
      interconnect_attachment;
      name;
      private_ip_address;
      router;
      subnetwork;
      vpn_tunnel;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_router_interface __resource);
  ()
