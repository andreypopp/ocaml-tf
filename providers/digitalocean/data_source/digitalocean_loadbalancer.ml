(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type firewall = {
  allow : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  deny : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewall) -> ()

let yojson_of_firewall =
  (function
   | { allow = v_allow; deny = v_deny } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_deny then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_deny
           in
           let bnd = "deny", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allow then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow
           in
           let bnd = "allow", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall

[@@@deriving.end]

type forwarding_rule = {
  certificate_id : string prop;
  certificate_name : string prop;
  entry_port : float prop;
  entry_protocol : string prop;
  target_port : float prop;
  target_protocol : string prop;
  tls_passthrough : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forwarding_rule) -> ()

let yojson_of_forwarding_rule =
  (function
   | {
       certificate_id = v_certificate_id;
       certificate_name = v_certificate_name;
       entry_port = v_entry_port;
       entry_protocol = v_entry_protocol;
       target_port = v_target_port;
       target_protocol = v_target_protocol;
       tls_passthrough = v_tls_passthrough;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tls_passthrough in
         ("tls_passthrough", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_protocol
         in
         ("target_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_port in
         ("target_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_entry_protocol
         in
         ("entry_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_entry_port in
         ("entry_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_name
         in
         ("certificate_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_id
         in
         ("certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : forwarding_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forwarding_rule

[@@@deriving.end]

type healthcheck = {
  check_interval_seconds : float prop;
  healthy_threshold : float prop;
  path : string prop;
  port : float prop;
  protocol : string prop;
  response_timeout_seconds : float prop;
  unhealthy_threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : healthcheck) -> ()

let yojson_of_healthcheck =
  (function
   | {
       check_interval_seconds = v_check_interval_seconds;
       healthy_threshold = v_healthy_threshold;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       response_timeout_seconds = v_response_timeout_seconds;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_unhealthy_threshold
         in
         ("unhealthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_response_timeout_seconds
         in
         ("response_timeout_seconds", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_healthy_threshold
         in
         ("healthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_check_interval_seconds
         in
         ("check_interval_seconds", arg) :: bnds
       in
       `Assoc bnds
    : healthcheck -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_healthcheck

[@@@deriving.end]

type sticky_sessions = {
  cookie_name : string prop;
  cookie_ttl_seconds : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sticky_sessions) -> ()

let yojson_of_sticky_sessions =
  (function
   | {
       cookie_name = v_cookie_name;
       cookie_ttl_seconds = v_cookie_ttl_seconds;
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
         let arg =
           yojson_of_prop yojson_of_float v_cookie_ttl_seconds
         in
         ("cookie_ttl_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cookie_name in
         ("cookie_name", arg) :: bnds
       in
       `Assoc bnds
    : sticky_sessions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sticky_sessions

[@@@deriving.end]

type digitalocean_loadbalancer = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_loadbalancer) -> ()

let yojson_of_digitalocean_loadbalancer =
  (function
   | { id = v_id; name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_loadbalancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_loadbalancer

[@@@deriving.end]

let digitalocean_loadbalancer ?id ?name ?type_ () :
    digitalocean_loadbalancer =
  { id; name; type_ }

type t = {
  tf_name : string;
  algorithm : string prop;
  disable_lets_encrypt_dns_records : bool prop;
  droplet_ids : float list prop;
  droplet_tag : string prop;
  enable_backend_keepalive : bool prop;
  enable_proxy_protocol : bool prop;
  firewall : firewall list prop;
  forwarding_rule : forwarding_rule list prop;
  healthcheck : healthcheck list prop;
  http_idle_timeout_seconds : float prop;
  id : string prop;
  ip : string prop;
  name : string prop;
  project_id : string prop;
  redirect_http_to_https : bool prop;
  region : string prop;
  size : string prop;
  size_unit : float prop;
  status : string prop;
  sticky_sessions : sticky_sessions list prop;
  type_ : string prop;
  urn : string prop;
  vpc_uuid : string prop;
}

let make ?id ?name ?type_ __id =
  let __type = "digitalocean_loadbalancer" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       disable_lets_encrypt_dns_records =
         Prop.computed __type __id "disable_lets_encrypt_dns_records";
       droplet_ids = Prop.computed __type __id "droplet_ids";
       droplet_tag = Prop.computed __type __id "droplet_tag";
       enable_backend_keepalive =
         Prop.computed __type __id "enable_backend_keepalive";
       enable_proxy_protocol =
         Prop.computed __type __id "enable_proxy_protocol";
       firewall = Prop.computed __type __id "firewall";
       forwarding_rule = Prop.computed __type __id "forwarding_rule";
       healthcheck = Prop.computed __type __id "healthcheck";
       http_idle_timeout_seconds =
         Prop.computed __type __id "http_idle_timeout_seconds";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       name = Prop.computed __type __id "name";
       project_id = Prop.computed __type __id "project_id";
       redirect_http_to_https =
         Prop.computed __type __id "redirect_http_to_https";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       size_unit = Prop.computed __type __id "size_unit";
       status = Prop.computed __type __id "status";
       sticky_sessions = Prop.computed __type __id "sticky_sessions";
       type_ = Prop.computed __type __id "type";
       urn = Prop.computed __type __id "urn";
       vpc_uuid = Prop.computed __type __id "vpc_uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_loadbalancer
        (digitalocean_loadbalancer ?id ?name ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
