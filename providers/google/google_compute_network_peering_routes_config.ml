(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_peering_routes_config = {
  export_custom_routes : bool prop;
      (** Whether to export the custom routes to the peer network. *)
  id : string prop option; [@option]  (** id *)
  import_custom_routes : bool prop;
      (** Whether to import the custom routes to the peer network. *)
  network : string prop;
      (** The name of the primary network for the peering. *)
  peering : string prop;  (** Name of the peering. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_peering_routes_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network_peering_routes_config ?id ?project
    ?timeouts ~export_custom_routes ~import_custom_routes ~network
    ~peering () : google_compute_network_peering_routes_config =
  {
    export_custom_routes;
    id;
    import_custom_routes;
    network;
    peering;
    project;
    timeouts;
  }

type t = {
  export_custom_routes : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  network : string prop;
  peering : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~export_custom_routes
    ~import_custom_routes ~network ~peering __id =
  let __type = "google_compute_network_peering_routes_config" in
  let __attrs =
    ({
       export_custom_routes =
         Prop.computed __type __id "export_custom_routes";
       id = Prop.computed __type __id "id";
       import_custom_routes =
         Prop.computed __type __id "import_custom_routes";
       network = Prop.computed __type __id "network";
       peering = Prop.computed __type __id "peering";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_peering_routes_config
        (google_compute_network_peering_routes_config ?id ?project
           ?timeouts ~export_custom_routes ~import_custom_routes
           ~network ~peering ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~export_custom_routes
    ~import_custom_routes ~network ~peering __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~export_custom_routes
      ~import_custom_routes ~network ~peering __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
