(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domains = {
  certificate_name : string prop option; [@option]
  is_managed : bool prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : domains) -> ()

let yojson_of_domains =
  (function
   | {
       certificate_name = v_certificate_name;
       is_managed = v_is_managed;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_managed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_managed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : domains -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domains

[@@@deriving.end]

type firewall = {
  allow : string prop list option; [@option]
  deny : string prop list option; [@option]
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
         match v_deny with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "deny", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewall

[@@@deriving.end]

type forwarding_rule = {
  certificate_id : string prop option; [@option]
  certificate_name : string prop option; [@option]
  entry_port : float prop;
  entry_protocol : string prop;
  target_port : float prop;
  target_protocol : string prop;
  tls_passthrough : bool prop option; [@option]
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
         match v_tls_passthrough with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_passthrough", arg in
             bnd :: bnds
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
         match v_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : forwarding_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forwarding_rule

[@@@deriving.end]

type glb_settings__cdn = { is_enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : glb_settings__cdn) -> ()

let yojson_of_glb_settings__cdn =
  (function
   | { is_enabled = v_is_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_is_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : glb_settings__cdn -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_glb_settings__cdn

[@@@deriving.end]

type glb_settings = {
  failover_threshold : float prop option; [@option]
  region_priorities : (string * float prop) list option; [@option]
  target_port : float prop;
  target_protocol : string prop;
  cdn : glb_settings__cdn list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : glb_settings) -> ()

let yojson_of_glb_settings =
  (function
   | {
       failover_threshold = v_failover_threshold;
       region_priorities = v_region_priorities;
       target_port = v_target_port;
       target_protocol = v_target_protocol;
       cdn = v_cdn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cdn then bnds
         else
           let arg =
             (yojson_of_list yojson_of_glb_settings__cdn) v_cdn
           in
           let bnd = "cdn", arg in
           bnd :: bnds
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
         match v_region_priorities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_float v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "region_priorities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failover_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failover_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : glb_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_glb_settings

[@@@deriving.end]

type healthcheck = {
  check_interval_seconds : float prop option; [@option]
  healthy_threshold : float prop option; [@option]
  path : string prop option; [@option]
  port : float prop;
  protocol : string prop;
  response_timeout_seconds : float prop option; [@option]
  unhealthy_threshold : float prop option; [@option]
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
         match v_unhealthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "response_timeout_seconds", arg in
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "check_interval_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : healthcheck -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_healthcheck

[@@@deriving.end]

type sticky_sessions = {
  cookie_name : string prop option; [@option]
  cookie_ttl_seconds : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_ttl_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cookie_ttl_seconds", arg in
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
       `Assoc bnds
    : sticky_sessions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sticky_sessions

[@@@deriving.end]

type digitalocean_loadbalancer = {
  algorithm : string prop option; [@option]
  disable_lets_encrypt_dns_records : bool prop option; [@option]
  droplet_ids : float prop list option; [@option]
  droplet_tag : string prop option; [@option]
  enable_backend_keepalive : bool prop option; [@option]
  enable_proxy_protocol : bool prop option; [@option]
  http_idle_timeout_seconds : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project_id : string prop option; [@option]
  redirect_http_to_https : bool prop option; [@option]
  region : string prop option; [@option]
  size : string prop option; [@option]
  size_unit : float prop option; [@option]
  target_load_balancer_ids : string prop list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  vpc_uuid : string prop option; [@option]
  domains : domains list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  firewall : firewall list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  forwarding_rule : forwarding_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  glb_settings : glb_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  healthcheck : healthcheck list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sticky_sessions : sticky_sessions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_loadbalancer) -> ()

let yojson_of_digitalocean_loadbalancer =
  (function
   | {
       algorithm = v_algorithm;
       disable_lets_encrypt_dns_records =
         v_disable_lets_encrypt_dns_records;
       droplet_ids = v_droplet_ids;
       droplet_tag = v_droplet_tag;
       enable_backend_keepalive = v_enable_backend_keepalive;
       enable_proxy_protocol = v_enable_proxy_protocol;
       http_idle_timeout_seconds = v_http_idle_timeout_seconds;
       id = v_id;
       name = v_name;
       project_id = v_project_id;
       redirect_http_to_https = v_redirect_http_to_https;
       region = v_region;
       size = v_size;
       size_unit = v_size_unit;
       target_load_balancer_ids = v_target_load_balancer_ids;
       type_ = v_type_;
       vpc_uuid = v_vpc_uuid;
       domains = v_domains;
       firewall = v_firewall;
       forwarding_rule = v_forwarding_rule;
       glb_settings = v_glb_settings;
       healthcheck = v_healthcheck;
       sticky_sessions = v_sticky_sessions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sticky_sessions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sticky_sessions)
               v_sticky_sessions
           in
           let bnd = "sticky_sessions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_healthcheck then bnds
         else
           let arg =
             (yojson_of_list yojson_of_healthcheck) v_healthcheck
           in
           let bnd = "healthcheck", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_glb_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_glb_settings) v_glb_settings
           in
           let bnd = "glb_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forwarding_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_forwarding_rule)
               v_forwarding_rule
           in
           let bnd = "forwarding_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_firewall then bnds
         else
           let arg =
             (yojson_of_list yojson_of_firewall) v_firewall
           in
           let bnd = "firewall", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domains then bnds
         else
           let arg = (yojson_of_list yojson_of_domains) v_domains in
           let bnd = "domains", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_uuid", arg in
             bnd :: bnds
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
         match v_target_load_balancer_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_load_balancer_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
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
         match v_redirect_http_to_https with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "redirect_http_to_https", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
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
         match v_http_idle_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_idle_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_proxy_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_proxy_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_backend_keepalive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_backend_keepalive", arg in
             bnd :: bnds
       in
       let bnds =
         match v_droplet_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "droplet_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_droplet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "droplet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_lets_encrypt_dns_records with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_lets_encrypt_dns_records", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_loadbalancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_loadbalancer

[@@@deriving.end]

let domains ?certificate_name ?is_managed ~name () : domains =
  { certificate_name; is_managed; name }

let firewall ?allow ?deny () : firewall = { allow; deny }

let forwarding_rule ?certificate_id ?certificate_name
    ?tls_passthrough ~entry_port ~entry_protocol ~target_port
    ~target_protocol () : forwarding_rule =
  {
    certificate_id;
    certificate_name;
    entry_port;
    entry_protocol;
    target_port;
    target_protocol;
    tls_passthrough;
  }

let glb_settings__cdn ?is_enabled () : glb_settings__cdn =
  { is_enabled }

let glb_settings ?failover_threshold ?region_priorities ?(cdn = [])
    ~target_port ~target_protocol () : glb_settings =
  {
    failover_threshold;
    region_priorities;
    target_port;
    target_protocol;
    cdn;
  }

let healthcheck ?check_interval_seconds ?healthy_threshold ?path
    ?response_timeout_seconds ?unhealthy_threshold ~port ~protocol ()
    : healthcheck =
  {
    check_interval_seconds;
    healthy_threshold;
    path;
    port;
    protocol;
    response_timeout_seconds;
    unhealthy_threshold;
  }

let sticky_sessions ?cookie_name ?cookie_ttl_seconds ?type_ () :
    sticky_sessions =
  { cookie_name; cookie_ttl_seconds; type_ }

let digitalocean_loadbalancer ?algorithm
    ?disable_lets_encrypt_dns_records ?droplet_ids ?droplet_tag
    ?enable_backend_keepalive ?enable_proxy_protocol
    ?http_idle_timeout_seconds ?id ?project_id
    ?redirect_http_to_https ?region ?size ?size_unit
    ?target_load_balancer_ids ?type_ ?vpc_uuid ?(glb_settings = [])
    ?(healthcheck = []) ?(sticky_sessions = []) ~name ~domains
    ~firewall ~forwarding_rule () : digitalocean_loadbalancer =
  {
    algorithm;
    disable_lets_encrypt_dns_records;
    droplet_ids;
    droplet_tag;
    enable_backend_keepalive;
    enable_proxy_protocol;
    http_idle_timeout_seconds;
    id;
    name;
    project_id;
    redirect_http_to_https;
    region;
    size;
    size_unit;
    target_load_balancer_ids;
    type_;
    vpc_uuid;
    domains;
    firewall;
    forwarding_rule;
    glb_settings;
    healthcheck;
    sticky_sessions;
  }

type t = {
  tf_name : string;
  algorithm : string prop;
  disable_lets_encrypt_dns_records : bool prop;
  droplet_ids : float list prop;
  droplet_tag : string prop;
  enable_backend_keepalive : bool prop;
  enable_proxy_protocol : bool prop;
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
  target_load_balancer_ids : string list prop;
  type_ : string prop;
  urn : string prop;
  vpc_uuid : string prop;
}

let make ?algorithm ?disable_lets_encrypt_dns_records ?droplet_ids
    ?droplet_tag ?enable_backend_keepalive ?enable_proxy_protocol
    ?http_idle_timeout_seconds ?id ?project_id
    ?redirect_http_to_https ?region ?size ?size_unit
    ?target_load_balancer_ids ?type_ ?vpc_uuid ?(glb_settings = [])
    ?(healthcheck = []) ?(sticky_sessions = []) ~name ~domains
    ~firewall ~forwarding_rule __id =
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
       target_load_balancer_ids =
         Prop.computed __type __id "target_load_balancer_ids";
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
        (digitalocean_loadbalancer ?algorithm
           ?disable_lets_encrypt_dns_records ?droplet_ids
           ?droplet_tag ?enable_backend_keepalive
           ?enable_proxy_protocol ?http_idle_timeout_seconds ?id
           ?project_id ?redirect_http_to_https ?region ?size
           ?size_unit ?target_load_balancer_ids ?type_ ?vpc_uuid
           ~glb_settings ~healthcheck ~sticky_sessions ~name ~domains
           ~firewall ~forwarding_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?algorithm ?disable_lets_encrypt_dns_records
    ?droplet_ids ?droplet_tag ?enable_backend_keepalive
    ?enable_proxy_protocol ?http_idle_timeout_seconds ?id ?project_id
    ?redirect_http_to_https ?region ?size ?size_unit
    ?target_load_balancer_ids ?type_ ?vpc_uuid ?(glb_settings = [])
    ?(healthcheck = []) ?(sticky_sessions = []) ~name ~domains
    ~firewall ~forwarding_rule __id =
  let (r : _ Tf_core.resource) =
    make ?algorithm ?disable_lets_encrypt_dns_records ?droplet_ids
      ?droplet_tag ?enable_backend_keepalive ?enable_proxy_protocol
      ?http_idle_timeout_seconds ?id ?project_id
      ?redirect_http_to_https ?region ?size ?size_unit
      ?target_load_balancer_ids ?type_ ?vpc_uuid ~glb_settings
      ~healthcheck ~sticky_sessions ~name ~domains ~firewall
      ~forwarding_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
