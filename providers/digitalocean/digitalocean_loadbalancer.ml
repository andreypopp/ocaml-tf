(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type firewall = {
  allow : string prop list option; [@option]
      (** the rules for ALLOWING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16') *)
  deny : string prop list option; [@option]
      (** the rules for DENYING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16') *)
}
[@@deriving yojson_of]
(** firewall *)

type forwarding_rule = {
  certificate_id : string prop option; [@option]
      (** certificate_id *)
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  entry_port : float prop;  (** entry_port *)
  entry_protocol : string prop;  (** entry_protocol *)
  target_port : float prop;  (** target_port *)
  target_protocol : string prop;  (** target_protocol *)
  tls_passthrough : bool prop option; [@option]
      (** tls_passthrough *)
}
[@@deriving yojson_of]
(** forwarding_rule *)

type healthcheck = {
  check_interval_seconds : float prop option; [@option]
      (** check_interval_seconds *)
  healthy_threshold : float prop option; [@option]
      (** healthy_threshold *)
  path : string prop option; [@option]  (** path *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  response_timeout_seconds : float prop option; [@option]
      (** response_timeout_seconds *)
  unhealthy_threshold : float prop option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** healthcheck *)

type sticky_sessions = {
  cookie_name : string prop option; [@option]  (** cookie_name *)
  cookie_ttl_seconds : float prop option; [@option]
      (** cookie_ttl_seconds *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** sticky_sessions *)

type digitalocean_loadbalancer = {
  algorithm : string prop option; [@option]  (** algorithm *)
  disable_lets_encrypt_dns_records : bool prop option; [@option]
      (** disable_lets_encrypt_dns_records *)
  droplet_ids : float prop list option; [@option]  (** droplet_ids *)
  droplet_tag : string prop option; [@option]  (** droplet_tag *)
  enable_backend_keepalive : bool prop option; [@option]
      (** enable_backend_keepalive *)
  enable_proxy_protocol : bool prop option; [@option]
      (** enable_proxy_protocol *)
  http_idle_timeout_seconds : float prop option; [@option]
      (** http_idle_timeout_seconds *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_id : string prop option; [@option]  (** project_id *)
  redirect_http_to_https : bool prop option; [@option]
      (** redirect_http_to_https *)
  region : string prop option; [@option]  (** region *)
  size : string prop option; [@option]  (** size *)
  size_unit : float prop option; [@option]  (** size_unit *)
  type_ : string prop option; [@option] [@key "type"]
      (** the type of the load balancer (GLOBAL or REGIONAL) *)
  vpc_uuid : string prop option; [@option]  (** vpc_uuid *)
  firewall : firewall list;
  forwarding_rule : forwarding_rule list;
  healthcheck : healthcheck list;
  sticky_sessions : sticky_sessions list;
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer *)

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
    ?redirect_http_to_https ?region ?size ?size_unit ?type_ ?vpc_uuid
    ~name ~firewall ~forwarding_rule ~healthcheck ~sticky_sessions ()
    : digitalocean_loadbalancer =
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
    type_;
    vpc_uuid;
    firewall;
    forwarding_rule;
    healthcheck;
    sticky_sessions;
  }

type t = {
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
  type_ : string prop;
  urn : string prop;
  vpc_uuid : string prop;
}

let make ?algorithm ?disable_lets_encrypt_dns_records ?droplet_ids
    ?droplet_tag ?enable_backend_keepalive ?enable_proxy_protocol
    ?http_idle_timeout_seconds ?id ?project_id
    ?redirect_http_to_https ?region ?size ?size_unit ?type_ ?vpc_uuid
    ~name ~firewall ~forwarding_rule ~healthcheck ~sticky_sessions
    __id =
  let __type = "digitalocean_loadbalancer" in
  let __attrs =
    ({
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
           ?size_unit ?type_ ?vpc_uuid ~name ~firewall
           ~forwarding_rule ~healthcheck ~sticky_sessions ());
    attrs = __attrs;
  }

let register ?tf_module ?algorithm ?disable_lets_encrypt_dns_records
    ?droplet_ids ?droplet_tag ?enable_backend_keepalive
    ?enable_proxy_protocol ?http_idle_timeout_seconds ?id ?project_id
    ?redirect_http_to_https ?region ?size ?size_unit ?type_ ?vpc_uuid
    ~name ~firewall ~forwarding_rule ~healthcheck ~sticky_sessions
    __id =
  let (r : _ Tf_core.resource) =
    make ?algorithm ?disable_lets_encrypt_dns_records ?droplet_ids
      ?droplet_tag ?enable_backend_keepalive ?enable_proxy_protocol
      ?http_idle_timeout_seconds ?id ?project_id
      ?redirect_http_to_https ?region ?size ?size_unit ?type_
      ?vpc_uuid ~name ~firewall ~forwarding_rule ~healthcheck
      ~sticky_sessions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
