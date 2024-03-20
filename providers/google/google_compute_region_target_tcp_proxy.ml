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

type google_compute_region_target_tcp_proxy = {
  backend_service : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  proxy_bind : bool prop option; [@option]
  proxy_header : string prop option; [@option]
  region : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_target_tcp_proxy) -> ()

let yojson_of_google_compute_region_target_tcp_proxy =
  (function
   | {
       backend_service = v_backend_service;
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       proxy_bind = v_proxy_bind;
       proxy_header = v_proxy_header;
       region = v_region;
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
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_bind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "proxy_bind", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_region_target_tcp_proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_target_tcp_proxy

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_target_tcp_proxy ?description ?id ?project
    ?proxy_bind ?proxy_header ?region ?timeouts ~backend_service
    ~name () : google_compute_region_target_tcp_proxy =
  {
    backend_service;
    description;
    id;
    name;
    project;
    proxy_bind;
    proxy_header;
    region;
    timeouts;
  }

type t = {
  backend_service : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_header : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?proxy_bind ?proxy_header ?region
    ?timeouts ~backend_service ~name __id =
  let __type = "google_compute_region_target_tcp_proxy" in
  let __attrs =
    ({
       backend_service = Prop.computed __type __id "backend_service";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_bind = Prop.computed __type __id "proxy_bind";
       proxy_header = Prop.computed __type __id "proxy_header";
       proxy_id = Prop.computed __type __id "proxy_id";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_target_tcp_proxy
        (google_compute_region_target_tcp_proxy ?description ?id
           ?project ?proxy_bind ?proxy_header ?region ?timeouts
           ~backend_service ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?proxy_bind
    ?proxy_header ?region ?timeouts ~backend_service ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?proxy_bind ?proxy_header ?region
      ?timeouts ~backend_service ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
