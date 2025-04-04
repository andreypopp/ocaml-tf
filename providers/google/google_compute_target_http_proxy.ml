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

type google_compute_target_http_proxy = {
  description : string prop option; [@option]
  http_keep_alive_timeout_sec : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  proxy_bind : bool prop option; [@option]
  url_map : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_target_http_proxy) -> ()

let yojson_of_google_compute_target_http_proxy =
  (function
   | {
       description = v_description;
       http_keep_alive_timeout_sec = v_http_keep_alive_timeout_sec;
       id = v_id;
       name = v_name;
       project = v_project;
       proxy_bind = v_proxy_bind;
       url_map = v_url_map;
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
         let arg = yojson_of_prop yojson_of_string v_url_map in
         ("url_map", arg) :: bnds
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
         match v_http_keep_alive_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_keep_alive_timeout_sec", arg in
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
    : google_compute_target_http_proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_target_http_proxy

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_http_proxy ?description
    ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind ?timeouts
    ~name ~url_map () : google_compute_target_http_proxy =
  {
    description;
    http_keep_alive_timeout_sec;
    id;
    name;
    project;
    proxy_bind;
    url_map;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  http_keep_alive_timeout_sec : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_id : float prop;
  self_link : string prop;
  url_map : string prop;
}

let make ?description ?http_keep_alive_timeout_sec ?id ?project
    ?proxy_bind ?timeouts ~name ~url_map __id =
  let __type = "google_compute_target_http_proxy" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       http_keep_alive_timeout_sec =
         Prop.computed __type __id "http_keep_alive_timeout_sec";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_bind = Prop.computed __type __id "proxy_bind";
       proxy_id = Prop.computed __type __id "proxy_id";
       self_link = Prop.computed __type __id "self_link";
       url_map = Prop.computed __type __id "url_map";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_http_proxy
        (google_compute_target_http_proxy ?description
           ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind
           ?timeouts ~name ~url_map ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?http_keep_alive_timeout_sec ?id
    ?project ?proxy_bind ?timeouts ~name ~url_map __id =
  let (r : _ Tf_core.resource) =
    make ?description ?http_keep_alive_timeout_sec ?id ?project
      ?proxy_bind ?timeouts ~name ~url_map __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
