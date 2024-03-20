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

type google_compute_network_peering_routes_config = {
  export_custom_routes : bool prop;
  id : string prop option; [@option]
  import_custom_routes : bool prop;
  network : string prop;
  peering : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network_peering_routes_config) -> ()

let yojson_of_google_compute_network_peering_routes_config =
  (function
   | {
       export_custom_routes = v_export_custom_routes;
       id = v_id;
       import_custom_routes = v_import_custom_routes;
       network = v_network;
       peering = v_peering;
       project = v_project;
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peering in
         ("peering", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_import_custom_routes
         in
         ("import_custom_routes", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_bool v_export_custom_routes
         in
         ("export_custom_routes", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_network_peering_routes_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network_peering_routes_config

[@@@deriving.end]

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
