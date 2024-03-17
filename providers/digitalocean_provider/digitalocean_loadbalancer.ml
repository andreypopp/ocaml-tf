(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_loadbalancer__firewall = {
  allow : string list option; [@option]
      (** the rules for ALLOWING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16') *)
  deny : string list option; [@option]
      (** the rules for DENYING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16') *)
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer__firewall *)

type digitalocean_loadbalancer__forwarding_rule = {
  certificate_id : string option; [@option]  (** certificate_id *)
  certificate_name : string option; [@option]
      (** certificate_name *)
  entry_port : float;  (** entry_port *)
  entry_protocol : string;  (** entry_protocol *)
  target_port : float;  (** target_port *)
  target_protocol : string;  (** target_protocol *)
  tls_passthrough : bool option; [@option]  (** tls_passthrough *)
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer__forwarding_rule *)

type digitalocean_loadbalancer__healthcheck = {
  check_interval_seconds : float option; [@option]
      (** check_interval_seconds *)
  healthy_threshold : float option; [@option]
      (** healthy_threshold *)
  path : string option; [@option]  (** path *)
  port : float;  (** port *)
  protocol : string;  (** protocol *)
  response_timeout_seconds : float option; [@option]
      (** response_timeout_seconds *)
  unhealthy_threshold : float option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer__healthcheck *)

type digitalocean_loadbalancer__sticky_sessions = {
  cookie_name : string option; [@option]  (** cookie_name *)
  cookie_ttl_seconds : float option; [@option]
      (** cookie_ttl_seconds *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer__sticky_sessions *)

type digitalocean_loadbalancer = {
  algorithm : string option; [@option]  (** algorithm *)
  disable_lets_encrypt_dns_records : bool option; [@option]
      (** disable_lets_encrypt_dns_records *)
  droplet_tag : string option; [@option]  (** droplet_tag *)
  enable_backend_keepalive : bool option; [@option]
      (** enable_backend_keepalive *)
  enable_proxy_protocol : bool option; [@option]
      (** enable_proxy_protocol *)
  name : string;  (** name *)
  redirect_http_to_https : bool option; [@option]
      (** redirect_http_to_https *)
  region : string option; [@option]  (** region *)
  size : string option; [@option]  (** size *)
  type_ : string option; [@option] [@key "type"]
      (** the type of the load balancer (GLOBAL or REGIONAL) *)
  firewall : digitalocean_loadbalancer__firewall list;
  forwarding_rule : digitalocean_loadbalancer__forwarding_rule list;
  healthcheck : digitalocean_loadbalancer__healthcheck list;
  sticky_sessions : digitalocean_loadbalancer__sticky_sessions list;
}
[@@deriving yojson_of]
(** digitalocean_loadbalancer *)

let digitalocean_loadbalancer ?algorithm
    ?disable_lets_encrypt_dns_records ?droplet_tag
    ?enable_backend_keepalive ?enable_proxy_protocol
    ?redirect_http_to_https ?region ?size ?type_ ~name ~firewall
    ~forwarding_rule ~healthcheck ~sticky_sessions __resource_id =
  let __resource_type = "digitalocean_loadbalancer" in
  let __resource =
    {
      algorithm;
      disable_lets_encrypt_dns_records;
      droplet_tag;
      enable_backend_keepalive;
      enable_proxy_protocol;
      name;
      redirect_http_to_https;
      region;
      size;
      type_;
      firewall;
      forwarding_rule;
      healthcheck;
      sticky_sessions;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_loadbalancer __resource);
  ()
