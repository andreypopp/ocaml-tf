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

type google_compute_region_target_https_proxy = {
  certificate_manager_certificates : string prop list option;
      [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  ssl_certificates : string prop list option; [@option]
  ssl_policy : string prop option; [@option]
  url_map : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_target_https_proxy) -> ()

let yojson_of_google_compute_region_target_https_proxy =
  (function
   | {
       certificate_manager_certificates =
         v_certificate_manager_certificates;
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       ssl_certificates = v_ssl_certificates;
       ssl_policy = v_ssl_policy;
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
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_certificate_manager_certificates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate_manager_certificates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_target_https_proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_target_https_proxy

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_target_https_proxy
    ?certificate_manager_certificates ?description ?id ?project
    ?region ?ssl_certificates ?ssl_policy ?timeouts ~name ~url_map ()
    : google_compute_region_target_https_proxy =
  {
    certificate_manager_certificates;
    description;
    id;
    name;
    project;
    region;
    ssl_certificates;
    ssl_policy;
    url_map;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_manager_certificates : string list prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
  url_map : string prop;
}

let make ?certificate_manager_certificates ?description ?id ?project
    ?region ?ssl_certificates ?ssl_policy ?timeouts ~name ~url_map
    __id =
  let __type = "google_compute_region_target_https_proxy" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_manager_certificates =
         Prop.computed __type __id "certificate_manager_certificates";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_id = Prop.computed __type __id "proxy_id";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       ssl_certificates =
         Prop.computed __type __id "ssl_certificates";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       url_map = Prop.computed __type __id "url_map";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_target_https_proxy
        (google_compute_region_target_https_proxy
           ?certificate_manager_certificates ?description ?id
           ?project ?region ?ssl_certificates ?ssl_policy ?timeouts
           ~name ~url_map ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_manager_certificates
    ?description ?id ?project ?region ?ssl_certificates ?ssl_policy
    ?timeouts ~name ~url_map __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_manager_certificates ?description ?id ?project
      ?region ?ssl_certificates ?ssl_policy ?timeouts ~name ~url_map
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
