(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_loadbalancer__firewall = {
  allow : string prop list option; [@option]
      (** the rules for ALLOWING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16') *)
  deny : string prop list option; [@option]
      (** the rules for DENYING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16') *)
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer__firewall *)

type digitalocean_loadbalancer__forwarding_rule = {
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
(** digitalocean_loadbalancer__forwarding_rule *)

type digitalocean_loadbalancer__healthcheck = {
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
(** digitalocean_loadbalancer__healthcheck *)

type digitalocean_loadbalancer__sticky_sessions = {
  cookie_name : string prop option; [@option]  (** cookie_name *)
  cookie_ttl_seconds : float prop option; [@option]
      (** cookie_ttl_seconds *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer__sticky_sessions *)

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
  firewall : digitalocean_loadbalancer__firewall list;
  forwarding_rule : digitalocean_loadbalancer__forwarding_rule list;
  healthcheck : digitalocean_loadbalancer__healthcheck list;
  sticky_sessions : digitalocean_loadbalancer__sticky_sessions list;
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer *)

let digitalocean_loadbalancer ?algorithm
    ?disable_lets_encrypt_dns_records ?droplet_ids ?droplet_tag
    ?enable_backend_keepalive ?enable_proxy_protocol
    ?http_idle_timeout_seconds ?id ?project_id
    ?redirect_http_to_https ?region ?size ?size_unit ?type_ ?vpc_uuid
    ~name ~firewall ~forwarding_rule ~healthcheck ~sticky_sessions
    __resource_id =
  let __resource_type = "digitalocean_loadbalancer" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_loadbalancer __resource);
  ()
