(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type load_balancers__target = {
  label_selector : string prop;
  server_id : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers__target) -> ()

let yojson_of_load_balancers__target =
  (function
   | {
       label_selector = v_label_selector;
       server_id = v_server_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers__target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers__target

[@@@deriving.end]

type load_balancers__service__http = {
  certificates : string prop list;
  cookie_lifetime : float prop;
  cookie_name : string prop;
  redirect_http : bool prop;
  sticky_sessions : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers__service__http) -> ()

let yojson_of_load_balancers__service__http =
  (function
   | {
       certificates = v_certificates;
       cookie_lifetime = v_cookie_lifetime;
       cookie_name = v_cookie_name;
       redirect_http = v_redirect_http;
       sticky_sessions = v_sticky_sessions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_sticky_sessions in
         ("sticky_sessions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_redirect_http in
         ("redirect_http", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cookie_name in
         ("cookie_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cookie_lifetime
         in
         ("cookie_lifetime", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_certificates
         in
         ("certificates", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers__service__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers__service__http

[@@@deriving.end]

type load_balancers__service__health_check__http = {
  domain : string prop;
  path : string prop;
  response : string prop;
  status_codes : float prop list;
  tls : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers__service__health_check__http) -> ()

let yojson_of_load_balancers__service__health_check__http =
  (function
   | {
       domain = v_domain;
       path = v_path;
       response = v_response;
       status_codes = v_status_codes;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tls in
         ("tls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_float)
             v_status_codes
         in
         ("status_codes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers__service__health_check__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers__service__health_check__http

[@@@deriving.end]

type load_balancers__service__health_check = {
  http : load_balancers__service__health_check__http list;
  interval : float prop;
  port : float prop;
  protocol : string prop;
  retries : float prop;
  timeout : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers__service__health_check) -> ()

let yojson_of_load_balancers__service__health_check =
  (function
   | {
       http = v_http;
       interval = v_interval;
       port = v_port;
       protocol = v_protocol;
       retries = v_retries;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_retries in
         ("retries", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancers__service__health_check__http
             v_http
         in
         ("http", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers__service__health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers__service__health_check

[@@@deriving.end]

type load_balancers__service = {
  destination_port : float prop;
  health_check : load_balancers__service__health_check list;
  http : load_balancers__service__http list;
  listen_port : float prop;
  protocol : string prop;
  proxyprotocol : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers__service) -> ()

let yojson_of_load_balancers__service =
  (function
   | {
       destination_port = v_destination_port;
       health_check = v_health_check;
       http = v_http;
       listen_port = v_listen_port;
       protocol = v_protocol;
       proxyprotocol = v_proxyprotocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_proxyprotocol in
         ("proxyprotocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_listen_port in
         ("listen_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancers__service__http
             v_http
         in
         ("http", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancers__service__health_check
             v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_destination_port
         in
         ("destination_port", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers__service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers__service

[@@@deriving.end]

type load_balancers__algorithm = {
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers__algorithm) -> ()

let yojson_of_load_balancers__algorithm =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers__algorithm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers__algorithm

[@@@deriving.end]

type load_balancers = {
  algorithm : load_balancers__algorithm list;
  delete_protection : bool prop;
  id : float prop;
  ipv4 : string prop;
  ipv6 : string prop;
  labels : (string * string prop) list;
  load_balancer_type : string prop;
  location : string prop;
  name : string prop;
  network_id : float prop;
  network_ip : string prop;
  network_zone : string prop;
  service : load_balancers__service list;
  target : load_balancers__target list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancers) -> ()

let yojson_of_load_balancers =
  (function
   | {
       algorithm = v_algorithm;
       delete_protection = v_delete_protection;
       id = v_id;
       ipv4 = v_ipv4;
       ipv6 = v_ipv6;
       labels = v_labels;
       load_balancer_type = v_load_balancer_type;
       location = v_location;
       name = v_name;
       network_id = v_network_id;
       network_ip = v_network_ip;
       network_zone = v_network_zone;
       service = v_service;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancers__target v_target
         in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancers__service v_service
         in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_zone in
         ("network_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_ip in
         ("network_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_network_id in
         ("network_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6 in
         ("ipv6", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4 in
         ("ipv4", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_protection
         in
         ("delete_protection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancers__algorithm
             v_algorithm
         in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : load_balancers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancers

[@@@deriving.end]

type hcloud_load_balancers = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_load_balancers) -> ()

let yojson_of_hcloud_load_balancers =
  (function
   | { id = v_id; with_selector = v_with_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
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
    : hcloud_load_balancers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_load_balancers

[@@@deriving.end]

let hcloud_load_balancers ?id ?with_selector () :
    hcloud_load_balancers =
  { id; with_selector }

type t = {
  tf_name : string;
  id : string prop;
  load_balancers : load_balancers list prop;
  with_selector : string prop;
}

let make ?id ?with_selector __id =
  let __type = "hcloud_load_balancers" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       load_balancers = Prop.computed __type __id "load_balancers";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancers
        (hcloud_load_balancers ?id ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector __id =
  let (r : _ Tf_core.resource) = make ?id ?with_selector __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
