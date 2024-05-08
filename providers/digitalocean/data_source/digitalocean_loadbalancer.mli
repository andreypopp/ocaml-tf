(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type firewall = {
  allow : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow *)
  deny : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** deny *)
}

type forwarding_rule = {
  certificate_id : string prop;  (** certificate_id *)
  certificate_name : string prop;  (** certificate_name *)
  entry_port : float prop;  (** entry_port *)
  entry_protocol : string prop;  (** entry_protocol *)
  target_port : float prop;  (** target_port *)
  target_protocol : string prop;  (** target_protocol *)
  tls_passthrough : bool prop;  (** tls_passthrough *)
}

type healthcheck = {
  check_interval_seconds : float prop;  (** check_interval_seconds *)
  healthy_threshold : float prop;  (** healthy_threshold *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  response_timeout_seconds : float prop;
      (** response_timeout_seconds *)
  unhealthy_threshold : float prop;  (** unhealthy_threshold *)
}

type sticky_sessions = {
  cookie_name : string prop;  (** cookie_name *)
  cookie_ttl_seconds : float prop;  (** cookie_ttl_seconds *)
  type_ : string prop; [@key "type"]  (** type *)
}

type digitalocean_loadbalancer

val digitalocean_loadbalancer :
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  digitalocean_loadbalancer

val yojson_of_digitalocean_loadbalancer :
  digitalocean_loadbalancer -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  string ->
  t Tf_core.resource
