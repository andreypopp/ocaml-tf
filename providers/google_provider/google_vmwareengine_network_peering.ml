(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_network_peering__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_network_peering__timeouts *)

type google_vmwareengine_network_peering = {
  description : string prop option; [@option]
      (** User-provided description for this network peering. *)
  export_custom_routes : bool prop option; [@option]
      (** True if custom routes are exported to the peered network; false otherwise. *)
  export_custom_routes_with_public_ip : bool prop option; [@option]
      (** True if all subnet routes with a public IP address range are exported; false otherwise. *)
  id : string prop option; [@option]  (** id *)
  import_custom_routes : bool prop option; [@option]
      (** True if custom routes are imported from the peered network; false otherwise. *)
  import_custom_routes_with_public_ip : bool prop option; [@option]
      (** True if custom routes are imported from the peered network; false otherwise. *)
  name : string prop;  (** The ID of the Network Peering. *)
  peer_network : string prop;
      (** The relative resource name of the network to peer with a standard VMware Engine network.
The provided network can be a consumer VPC network or another standard VMware Engine network. *)
  peer_network_type : string prop;
      (** The type of the network to peer with the VMware Engine network. Possible values: [STANDARD, VMWARE_ENGINE_NETWORK, PRIVATE_SERVICES_ACCESS, NETAPP_CLOUD_VOLUMES, THIRD_PARTY_SERVICE, DELL_POWERSCALE] *)
  project : string prop option; [@option]  (** project *)
  vmware_engine_network : string prop;
      (** The relative resource name of the VMware Engine network. Specify the name in the following form:
projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
can either be a project number or a project ID. *)
  timeouts : google_vmwareengine_network_peering__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network_peering *)

let google_vmwareengine_network_peering ?description
    ?export_custom_routes ?export_custom_routes_with_public_ip ?id
    ?import_custom_routes ?import_custom_routes_with_public_ip
    ?project ?timeouts ~name ~peer_network ~peer_network_type
    ~vmware_engine_network __resource_id =
  let __resource_type = "google_vmwareengine_network_peering" in
  let __resource =
    {
      description;
      export_custom_routes;
      export_custom_routes_with_public_ip;
      id;
      import_custom_routes;
      import_custom_routes_with_public_ip;
      name;
      peer_network;
      peer_network_type;
      project;
      vmware_engine_network;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_network_peering __resource);
  ()
