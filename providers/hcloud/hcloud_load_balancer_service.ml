(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type health_check__http = {
  domain : string prop option; [@option]
  path : string prop option; [@option]
  response : string prop option; [@option]
  status_codes : string prop list option; [@option]
  tls : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check__http) -> ()

let yojson_of_health_check__http =
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
         match v_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "status_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : health_check__http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check__http

[@@@deriving.end]

type health_check = {
  interval : float prop;
  port : float prop;
  protocol : string prop;
  retries : float prop option; [@option]
  timeout : float prop;
  http : health_check__http list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check) -> ()

let yojson_of_health_check =
  (function
   | {
       interval = v_interval;
       port = v_port;
       protocol = v_protocol;
       retries = v_retries;
       timeout = v_timeout;
       http = v_http;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_http then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_check__http) v_http
           in
           let bnd = "http", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         match v_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retries", arg in
             bnd :: bnds
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
       `Assoc bnds
    : health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check

[@@@deriving.end]

type http = {
  certificates : float prop list option; [@option]
  cookie_lifetime : float prop option; [@option]
  cookie_name : string prop option; [@option]
  redirect_http : bool prop option; [@option]
  sticky_sessions : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http) -> ()

let yojson_of_http =
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
         match v_sticky_sessions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sticky_sessions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_http with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "redirect_http", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cookie_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cookie_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "certificates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http

[@@@deriving.end]

type hcloud_load_balancer_service = {
  destination_port : float prop option; [@option]
  id : string prop option; [@option]
  listen_port : float prop option; [@option]
  load_balancer_id : string prop;
  protocol : string prop;
  proxyprotocol : bool prop option; [@option]
  health_check : health_check list;
      [@default []] [@yojson_drop_default ( = )]
  http : http list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_load_balancer_service) -> ()

let yojson_of_hcloud_load_balancer_service =
  (function
   | {
       destination_port = v_destination_port;
       id = v_id;
       listen_port = v_listen_port;
       load_balancer_id = v_load_balancer_id;
       protocol = v_protocol;
       proxyprotocol = v_proxyprotocol;
       health_check = v_health_check;
       http = v_http;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_http then bnds
         else
           let arg = (yojson_of_list yojson_of_http) v_http in
           let bnd = "http", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_check) v_health_check
           in
           let bnd = "health_check", arg in
           bnd :: bnds
       in
       let bnds =
         match v_proxyprotocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "proxyprotocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_id
         in
         ("load_balancer_id", arg) :: bnds
       in
       let bnds =
         match v_listen_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "listen_port", arg in
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
       let bnds =
         match v_destination_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "destination_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_load_balancer_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_load_balancer_service

[@@@deriving.end]

let health_check__http ?domain ?path ?response ?status_codes ?tls ()
    : health_check__http =
  { domain; path; response; status_codes; tls }

let health_check ?retries ?(http = []) ~interval ~port ~protocol
    ~timeout () : health_check =
  { interval; port; protocol; retries; timeout; http }

let http ?certificates ?cookie_lifetime ?cookie_name ?redirect_http
    ?sticky_sessions () : http =
  {
    certificates;
    cookie_lifetime;
    cookie_name;
    redirect_http;
    sticky_sessions;
  }

let hcloud_load_balancer_service ?destination_port ?id ?listen_port
    ?proxyprotocol ?(health_check = []) ?(http = [])
    ~load_balancer_id ~protocol () : hcloud_load_balancer_service =
  {
    destination_port;
    id;
    listen_port;
    load_balancer_id;
    protocol;
    proxyprotocol;
    health_check;
    http;
  }

type t = {
  tf_name : string;
  destination_port : float prop;
  id : string prop;
  listen_port : float prop;
  load_balancer_id : string prop;
  protocol : string prop;
  proxyprotocol : bool prop;
}

let make ?destination_port ?id ?listen_port ?proxyprotocol
    ?(health_check = []) ?(http = []) ~load_balancer_id ~protocol
    __id =
  let __type = "hcloud_load_balancer_service" in
  let __attrs =
    ({
       tf_name = __id;
       destination_port =
         Prop.computed __type __id "destination_port";
       id = Prop.computed __type __id "id";
       listen_port = Prop.computed __type __id "listen_port";
       load_balancer_id =
         Prop.computed __type __id "load_balancer_id";
       protocol = Prop.computed __type __id "protocol";
       proxyprotocol = Prop.computed __type __id "proxyprotocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_load_balancer_service
        (hcloud_load_balancer_service ?destination_port ?id
           ?listen_port ?proxyprotocol ~health_check ~http
           ~load_balancer_id ~protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?destination_port ?id ?listen_port
    ?proxyprotocol ?(health_check = []) ?(http = [])
    ~load_balancer_id ~protocol __id =
  let (r : _ Tf_core.resource) =
    make ?destination_port ?id ?listen_port ?proxyprotocol
      ~health_check ~http ~load_balancer_id ~protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
