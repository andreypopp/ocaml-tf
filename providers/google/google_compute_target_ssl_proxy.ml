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

type google_compute_target_ssl_proxy = {
  backend_service : string prop;
  certificate_map : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  proxy_header : string prop option; [@option]
  ssl_certificates : string prop list option; [@option]
  ssl_policy : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_target_ssl_proxy) -> ()

let yojson_of_google_compute_target_ssl_proxy =
  (function
   | {
       backend_service = v_backend_service;
       certificate_map = v_certificate_map;
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       proxy_header = v_proxy_header;
       ssl_certificates = v_ssl_certificates;
       ssl_policy = v_ssl_policy;
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
         match v_ssl_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_certificates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ssl_certificates", arg in
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
         match v_certificate_map with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_map", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_target_ssl_proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_target_ssl_proxy

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_ssl_proxy ?certificate_map ?description ?id
    ?project ?proxy_header ?ssl_certificates ?ssl_policy ?timeouts
    ~backend_service ~name () : google_compute_target_ssl_proxy =
  {
    backend_service;
    certificate_map;
    description;
    id;
    name;
    project;
    proxy_header;
    ssl_certificates;
    ssl_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  backend_service : string prop;
  certificate_map : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_header : string prop;
  proxy_id : float prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
}

let make ?certificate_map ?description ?id ?project ?proxy_header
    ?ssl_certificates ?ssl_policy ?timeouts ~backend_service ~name
    __id =
  let __type = "google_compute_target_ssl_proxy" in
  let __attrs =
    ({
       tf_name = __id;
       backend_service = Prop.computed __type __id "backend_service";
       certificate_map = Prop.computed __type __id "certificate_map";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_header = Prop.computed __type __id "proxy_header";
       proxy_id = Prop.computed __type __id "proxy_id";
       self_link = Prop.computed __type __id "self_link";
       ssl_certificates =
         Prop.computed __type __id "ssl_certificates";
       ssl_policy = Prop.computed __type __id "ssl_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_ssl_proxy
        (google_compute_target_ssl_proxy ?certificate_map
           ?description ?id ?project ?proxy_header ?ssl_certificates
           ?ssl_policy ?timeouts ~backend_service ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_map ?description ?id ?project
    ?proxy_header ?ssl_certificates ?ssl_policy ?timeouts
    ~backend_service ~name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_map ?description ?id ?project ?proxy_header
      ?ssl_certificates ?ssl_policy ?timeouts ~backend_service ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
