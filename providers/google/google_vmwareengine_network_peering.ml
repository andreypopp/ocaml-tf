(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network_peering *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_network_peering ?description
    ?export_custom_routes ?export_custom_routes_with_public_ip ?id
    ?import_custom_routes ?import_custom_routes_with_public_ip
    ?project ?timeouts ~name ~peer_network ~peer_network_type
    ~vmware_engine_network () : google_vmwareengine_network_peering =
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

type t = {
  create_time : string prop;
  description : string prop;
  export_custom_routes : bool prop;
  export_custom_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_custom_routes_with_public_ip : bool prop;
  name : string prop;
  peer_network : string prop;
  peer_network_type : string prop;
  project : string prop;
  state : string prop;
  state_details : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

let make ?description ?export_custom_routes
    ?export_custom_routes_with_public_ip ?id ?import_custom_routes
    ?import_custom_routes_with_public_ip ?project ?timeouts ~name
    ~peer_network ~peer_network_type ~vmware_engine_network __id =
  let __type = "google_vmwareengine_network_peering" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       export_custom_routes =
         Prop.computed __type __id "export_custom_routes";
       export_custom_routes_with_public_ip =
         Prop.computed __type __id
           "export_custom_routes_with_public_ip";
       id = Prop.computed __type __id "id";
       import_custom_routes =
         Prop.computed __type __id "import_custom_routes";
       import_custom_routes_with_public_ip =
         Prop.computed __type __id
           "import_custom_routes_with_public_ip";
       name = Prop.computed __type __id "name";
       peer_network = Prop.computed __type __id "peer_network";
       peer_network_type =
         Prop.computed __type __id "peer_network_type";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vmware_engine_network =
         Prop.computed __type __id "vmware_engine_network";
       vmware_engine_network_canonical =
         Prop.computed __type __id "vmware_engine_network_canonical";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_network_peering
        (google_vmwareengine_network_peering ?description
           ?export_custom_routes ?export_custom_routes_with_public_ip
           ?id ?import_custom_routes
           ?import_custom_routes_with_public_ip ?project ?timeouts
           ~name ~peer_network ~peer_network_type
           ~vmware_engine_network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?export_custom_routes
    ?export_custom_routes_with_public_ip ?id ?import_custom_routes
    ?import_custom_routes_with_public_ip ?project ?timeouts ~name
    ~peer_network ~peer_network_type ~vmware_engine_network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?export_custom_routes
      ?export_custom_routes_with_public_ip ?id ?import_custom_routes
      ?import_custom_routes_with_public_ip ?project ?timeouts ~name
      ~peer_network ~peer_network_type ~vmware_engine_network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
