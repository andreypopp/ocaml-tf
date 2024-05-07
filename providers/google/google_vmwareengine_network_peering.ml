(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_vmwareengine_network_peering = {
  description : string prop option; [@option]
  export_custom_routes : bool prop option; [@option]
  export_custom_routes_with_public_ip : bool prop option; [@option]
  id : string prop option; [@option]
  import_custom_routes : bool prop option; [@option]
  import_custom_routes_with_public_ip : bool prop option; [@option]
  name : string prop;
  peer_network : string prop;
  peer_network_type : string prop;
  project : string prop option; [@option]
  vmware_engine_network : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_network_peering) -> ()

let yojson_of_google_vmwareengine_network_peering =
  (function
   | {
       description = v_description;
       export_custom_routes = v_export_custom_routes;
       export_custom_routes_with_public_ip =
         v_export_custom_routes_with_public_ip;
       id = v_id;
       import_custom_routes = v_import_custom_routes;
       import_custom_routes_with_public_ip =
         v_import_custom_routes_with_public_ip;
       name = v_name;
       peer_network = v_peer_network;
       peer_network_type = v_peer_network_type;
       project = v_project;
       vmware_engine_network = v_vmware_engine_network;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vmware_engine_network
         in
         ("vmware_engine_network", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peer_network_type
         in
         ("peer_network_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peer_network in
         ("peer_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_import_custom_routes_with_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "import_custom_routes_with_public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_import_custom_routes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "import_custom_routes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_export_custom_routes_with_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "export_custom_routes_with_public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_export_custom_routes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "export_custom_routes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_vmwareengine_network_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_network_peering

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
