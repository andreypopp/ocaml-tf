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

type google_compute_target_https_proxy = {
  certificate_manager_certificates : string prop list option;
      [@option]
  certificate_map : string prop option; [@option]
  description : string prop option; [@option]
  http_keep_alive_timeout_sec : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  proxy_bind : bool prop option; [@option]
  quic_override : string prop option; [@option]
  server_tls_policy : string prop option; [@option]
  ssl_certificates : string prop list option; [@option]
  ssl_policy : string prop option; [@option]
  tls_early_data : string prop option; [@option]
  url_map : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_target_https_proxy) -> ()

let yojson_of_google_compute_target_https_proxy =
  (function
   | {
       certificate_manager_certificates =
         v_certificate_manager_certificates;
       certificate_map = v_certificate_map;
       description = v_description;
       http_keep_alive_timeout_sec = v_http_keep_alive_timeout_sec;
       id = v_id;
       name = v_name;
       project = v_project;
       proxy_bind = v_proxy_bind;
       quic_override = v_quic_override;
       server_tls_policy = v_server_tls_policy;
       ssl_certificates = v_ssl_certificates;
       ssl_policy = v_ssl_policy;
       tls_early_data = v_tls_early_data;
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
         match v_tls_early_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_early_data", arg in
             bnd :: bnds
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
         match v_server_tls_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_tls_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quic_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quic_override", arg in
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
       let bnds =
         match v_certificate_map with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_map", arg in
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
    : google_compute_target_https_proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_target_https_proxy

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_https_proxy
    ?certificate_manager_certificates ?certificate_map ?description
    ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind
    ?quic_override ?server_tls_policy ?ssl_certificates ?ssl_policy
    ?tls_early_data ?timeouts ~name ~url_map () :
    google_compute_target_https_proxy =
  {
    certificate_manager_certificates;
    certificate_map;
    description;
    http_keep_alive_timeout_sec;
    id;
    name;
    project;
    proxy_bind;
    quic_override;
    server_tls_policy;
    ssl_certificates;
    ssl_policy;
    tls_early_data;
    url_map;
    timeouts;
  }

type t = {
  tf_name : string;
  certificate_manager_certificates : string list prop;
  certificate_map : string prop;
  creation_timestamp : string prop;
  description : string prop;
  http_keep_alive_timeout_sec : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_id : float prop;
  quic_override : string prop;
  self_link : string prop;
  server_tls_policy : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
  tls_early_data : string prop;
  url_map : string prop;
}

let make ?certificate_manager_certificates ?certificate_map
    ?description ?http_keep_alive_timeout_sec ?id ?project
    ?proxy_bind ?quic_override ?server_tls_policy ?ssl_certificates
    ?ssl_policy ?tls_early_data ?timeouts ~name ~url_map __id =
  let __type = "google_compute_target_https_proxy" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_manager_certificates =
         Prop.computed __type __id "certificate_manager_certificates";
       certificate_map = Prop.computed __type __id "certificate_map";
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
       quic_override = Prop.computed __type __id "quic_override";
       self_link = Prop.computed __type __id "self_link";
       server_tls_policy =
         Prop.computed __type __id "server_tls_policy";
       ssl_certificates =
         Prop.computed __type __id "ssl_certificates";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       tls_early_data = Prop.computed __type __id "tls_early_data";
       url_map = Prop.computed __type __id "url_map";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_https_proxy
        (google_compute_target_https_proxy
           ?certificate_manager_certificates ?certificate_map
           ?description ?http_keep_alive_timeout_sec ?id ?project
           ?proxy_bind ?quic_override ?server_tls_policy
           ?ssl_certificates ?ssl_policy ?tls_early_data ?timeouts
           ~name ~url_map ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_manager_certificates
    ?certificate_map ?description ?http_keep_alive_timeout_sec ?id
    ?project ?proxy_bind ?quic_override ?server_tls_policy
    ?ssl_certificates ?ssl_policy ?tls_early_data ?timeouts ~name
    ~url_map __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_manager_certificates ?certificate_map
      ?description ?http_keep_alive_timeout_sec ?id ?project
      ?proxy_bind ?quic_override ?server_tls_policy ?ssl_certificates
      ?ssl_policy ?tls_early_data ?timeouts ~name ~url_map __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
