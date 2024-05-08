(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_endpoints = {
  instance : string prop option; [@option]
  ip_address : string prop;
  port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_endpoints) -> ()

let yojson_of_network_endpoints =
  (function
   | {
       instance = v_instance;
       ip_address = v_ip_address;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         match v_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_endpoints

[@@@deriving.end]

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

type google_compute_network_endpoints = {
  id : string prop option; [@option]
  network_endpoint_group : string prop;
  project : string prop option; [@option]
  zone : string prop option; [@option]
  network_endpoints : network_endpoints list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network_endpoints) -> ()

let yojson_of_google_compute_network_endpoints =
  (function
   | {
       id = v_id;
       network_endpoint_group = v_network_endpoint_group;
       project = v_project;
       zone = v_zone;
       network_endpoints = v_network_endpoints;
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
         if [] = v_network_endpoints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_endpoints)
               v_network_endpoints
           in
           let bnd = "network_endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_network_endpoint_group
         in
         ("network_endpoint_group", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_network_endpoints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network_endpoints

[@@@deriving.end]

let network_endpoints ?instance ?port ~ip_address () :
    network_endpoints =
  { instance; ip_address; port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network_endpoints ?id ?project ?zone ?timeouts
    ~network_endpoint_group ~network_endpoints () :
    google_compute_network_endpoints =
  {
    id;
    network_endpoint_group;
    project;
    zone;
    network_endpoints;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  network_endpoint_group : string prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ?timeouts ~network_endpoint_group
    ~network_endpoints __id =
  let __type = "google_compute_network_endpoints" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       network_endpoint_group =
         Prop.computed __type __id "network_endpoint_group";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_endpoints
        (google_compute_network_endpoints ?id ?project ?zone
           ?timeouts ~network_endpoint_group ~network_endpoints ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ?timeouts
    ~network_endpoint_group ~network_endpoints __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ?timeouts ~network_endpoint_group
      ~network_endpoints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
