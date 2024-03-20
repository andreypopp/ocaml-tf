(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_network_endpoint = {
  id : string prop option; [@option]
  instance : string prop option; [@option]
  ip_address : string prop;
  network_endpoint_group : string prop;
  port : float prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network_endpoint) -> ()

let yojson_of_google_compute_network_endpoint =
  (function
   | {
       id = v_id;
       instance = v_instance;
       ip_address = v_ip_address;
       network_endpoint_group = v_network_endpoint_group;
       port = v_port;
       project = v_project;
       zone = v_zone;
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_endpoint_group
         in
         ("network_endpoint_group", arg) :: bnds
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
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_network_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network_endpoint

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_network_endpoint ?id ?instance ?port ?project
    ?zone ?timeouts ~ip_address ~network_endpoint_group () :
    google_compute_network_endpoint =
  {
    id;
    instance;
    ip_address;
    network_endpoint_group;
    port;
    project;
    zone;
    timeouts;
  }

type t = {
  id : string prop;
  instance : string prop;
  ip_address : string prop;
  network_endpoint_group : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?instance ?port ?project ?zone ?timeouts ~ip_address
    ~network_endpoint_group __id =
  let __type = "google_compute_network_endpoint" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       ip_address = Prop.computed __type __id "ip_address";
       network_endpoint_group =
         Prop.computed __type __id "network_endpoint_group";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_endpoint
        (google_compute_network_endpoint ?id ?instance ?port ?project
           ?zone ?timeouts ~ip_address ~network_endpoint_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance ?port ?project ?zone ?timeouts
    ~ip_address ~network_endpoint_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance ?port ?project ?zone ?timeouts ~ip_address
      ~network_endpoint_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
