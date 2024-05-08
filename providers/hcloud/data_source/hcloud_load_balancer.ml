(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type algorithm = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : algorithm) -> ()

let yojson_of_algorithm =
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
    : algorithm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_algorithm

[@@@deriving.end]

type service__http = {
  certificates : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  cookie_lifetime : float prop;
  cookie_name : string prop;
  redirect_http : bool prop;
  sticky_sessions : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service__http) -> ()

let yojson_of_service__http =
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
         if [] = v_certificates then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_certificates
           in
           let bnd = "certificates", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service__http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service__http

[@@@deriving.end]

type service__health_check__http = {
  domain : string prop;
  path : string prop;
  response : string prop;
  status_codes : float prop list;
      [@default []] [@yojson_drop_default ( = )]
  tls : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service__health_check__http) -> ()

let yojson_of_service__health_check__http =
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
         if [] = v_status_codes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_status_codes
           in
           let bnd = "status_codes", arg in
           bnd :: bnds
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
    : service__health_check__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service__health_check__http

[@@@deriving.end]

type service__health_check = {
  http : service__health_check__http list;
      [@default []] [@yojson_drop_default ( = )]
  interval : float prop;
  port : float prop;
  protocol : string prop;
  retries : float prop;
  timeout : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service__health_check) -> ()

let yojson_of_service__health_check =
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
         if [] = v_http then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service__health_check__http)
               v_http
           in
           let bnd = "http", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service__health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service__health_check

[@@@deriving.end]

type service = {
  destination_port : float prop;
  health_check : service__health_check list;
      [@default []] [@yojson_drop_default ( = )]
  http : service__http list;
      [@default []] [@yojson_drop_default ( = )]
  listen_port : float prop;
  protocol : string prop;
  proxyprotocol : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service) -> ()

let yojson_of_service =
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
         if [] = v_http then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service__http) v_http
           in
           let bnd = "http", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service__health_check)
               v_health_check
           in
           let bnd = "health_check", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_destination_port
         in
         ("destination_port", arg) :: bnds
       in
       `Assoc bnds
    : service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service

[@@@deriving.end]

type target = {
  label_selector : string prop;
  server_id : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
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
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

type hcloud_load_balancer = {
  id : float prop option; [@option]
  name : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_load_balancer) -> ()

let yojson_of_hcloud_load_balancer =
  (function
   | { id = v_id; name = v_name; with_selector = v_with_selector } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_load_balancer

[@@@deriving.end]

let hcloud_load_balancer ?id ?name ?with_selector () :
    hcloud_load_balancer =
  { id; name; with_selector }

type t = {
  tf_name : string;
  algorithm : algorithm list prop;
  delete_protection : bool prop;
  id : float prop;
  ipv4 : string prop;
  ipv6 : string prop;
  labels : (string * string) list prop;
  load_balancer_type : string prop;
  location : string prop;
  name : string prop;
  network_id : float prop;
  network_ip : string prop;
  network_zone : string prop;
  service : service list prop;
  target : target list prop;
  with_selector : string prop;
}

let make ?id ?name ?with_selector __id =
  let __type = "hcloud_load_balancer" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       id = Prop.computed __type __id "id";
       ipv4 = Prop.computed __type __id "ipv4";
       ipv6 = Prop.computed __type __id "ipv6";
       labels = Prop.computed __type __id "labels";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_id = Prop.computed __type __id "network_id";
       network_ip = Prop.computed __type __id "network_ip";
       network_zone = Prop.computed __type __id "network_zone";
       service = Prop.computed __type __id "service";
       target = Prop.computed __type __id "target";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer
        (hcloud_load_balancer ?id ?name ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
