(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_peering = {
  export_custom_routes : bool prop option; [@option]
      (** Whether to export the custom routes to the peer network. Defaults to false. *)
  export_subnet_routes_with_public_ip : bool prop option; [@option]
      (** export_subnet_routes_with_public_ip *)
  id : string prop option; [@option]  (** id *)
  import_custom_routes : bool prop option; [@option]
      (** Whether to export the custom routes from the peer network. Defaults to false. *)
  import_subnet_routes_with_public_ip : bool prop option; [@option]
      (** import_subnet_routes_with_public_ip *)
  name : string prop;  (** Name of the peering. *)
  network : string prop;  (** The primary network of the peering. *)
  peer_network : string prop;
      (** The peer network in the peering. The peer network may belong to a different project. *)
  stack_type : string prop option; [@option]
      (** Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: [IPV4_ONLY, IPV4_IPV6] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_peering *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network_peering ?export_custom_routes
    ?export_subnet_routes_with_public_ip ?id ?import_custom_routes
    ?import_subnet_routes_with_public_ip ?stack_type ?timeouts ~name
    ~network ~peer_network () : google_compute_network_peering =
  {
    export_custom_routes;
    export_subnet_routes_with_public_ip;
    id;
    import_custom_routes;
    import_subnet_routes_with_public_ip;
    name;
    network;
    peer_network;
    stack_type;
    timeouts;
  }

type t = {
  export_custom_routes : bool prop;
  export_subnet_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_subnet_routes_with_public_ip : bool prop;
  name : string prop;
  network : string prop;
  peer_network : string prop;
  stack_type : string prop;
  state : string prop;
  state_details : string prop;
}

let make ?export_custom_routes ?export_subnet_routes_with_public_ip
    ?id ?import_custom_routes ?import_subnet_routes_with_public_ip
    ?stack_type ?timeouts ~name ~network ~peer_network __id =
  let __type = "google_compute_network_peering" in
  let __attrs =
    ({
       export_custom_routes =
         Prop.computed __type __id "export_custom_routes";
       export_subnet_routes_with_public_ip =
         Prop.computed __type __id
           "export_subnet_routes_with_public_ip";
       id = Prop.computed __type __id "id";
       import_custom_routes =
         Prop.computed __type __id "import_custom_routes";
       import_subnet_routes_with_public_ip =
         Prop.computed __type __id
           "import_subnet_routes_with_public_ip";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       peer_network = Prop.computed __type __id "peer_network";
       stack_type = Prop.computed __type __id "stack_type";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_peering
        (google_compute_network_peering ?export_custom_routes
           ?export_subnet_routes_with_public_ip ?id
           ?import_custom_routes ?import_subnet_routes_with_public_ip
           ?stack_type ?timeouts ~name ~network ~peer_network ());
    attrs = __attrs;
  }

let register ?tf_module ?export_custom_routes
    ?export_subnet_routes_with_public_ip ?id ?import_custom_routes
    ?import_subnet_routes_with_public_ip ?stack_type ?timeouts ~name
    ~network ~peer_network __id =
  let (r : _ Tf_core.resource) =
    make ?export_custom_routes ?export_subnet_routes_with_public_ip
      ?id ?import_custom_routes ?import_subnet_routes_with_public_ip
      ?stack_type ?timeouts ~name ~network ~peer_network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
