(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domains

val domains :
  ?certificate_name:string prop ->
  ?is_managed:bool prop ->
  name:string prop ->
  unit ->
  domains

type firewall

val firewall :
  ?allow:string prop list ->
  ?deny:string prop list ->
  unit ->
  firewall

type forwarding_rule

val forwarding_rule :
  ?certificate_id:string prop ->
  ?certificate_name:string prop ->
  ?tls_passthrough:bool prop ->
  entry_port:float prop ->
  entry_protocol:string prop ->
  target_port:float prop ->
  target_protocol:string prop ->
  unit ->
  forwarding_rule

type glb_settings__cdn

val glb_settings__cdn :
  ?is_enabled:bool prop -> unit -> glb_settings__cdn

type glb_settings

val glb_settings :
  ?failover_threshold:float prop ->
  ?region_priorities:float prop Tf_core.assoc ->
  ?cdn:glb_settings__cdn list ->
  target_port:float prop ->
  target_protocol:string prop ->
  unit ->
  glb_settings

type healthcheck

val healthcheck :
  ?check_interval_seconds:float prop ->
  ?healthy_threshold:float prop ->
  ?path:string prop ->
  ?response_timeout_seconds:float prop ->
  ?unhealthy_threshold:float prop ->
  port:float prop ->
  protocol:string prop ->
  unit ->
  healthcheck

type sticky_sessions

val sticky_sessions :
  ?cookie_name:string prop ->
  ?cookie_ttl_seconds:float prop ->
  ?type_:string prop ->
  unit ->
  sticky_sessions

type digitalocean_loadbalancer

val digitalocean_loadbalancer :
  ?algorithm:string prop ->
  ?disable_lets_encrypt_dns_records:bool prop ->
  ?droplet_ids:float prop list ->
  ?droplet_tag:string prop ->
  ?enable_backend_keepalive:bool prop ->
  ?enable_proxy_protocol:bool prop ->
  ?http_idle_timeout_seconds:float prop ->
  ?id:string prop ->
  ?project_id:string prop ->
  ?redirect_http_to_https:bool prop ->
  ?region:string prop ->
  ?size:string prop ->
  ?size_unit:float prop ->
  ?target_load_balancer_ids:string prop list ->
  ?type_:string prop ->
  ?vpc_uuid:string prop ->
  ?glb_settings:glb_settings list ->
  ?healthcheck:healthcheck list ->
  ?sticky_sessions:sticky_sessions list ->
  name:string prop ->
  domains:domains list ->
  firewall:firewall list ->
  forwarding_rule:forwarding_rule list ->
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

val register :
  ?tf_module:tf_module ->
  ?algorithm:string prop ->
  ?disable_lets_encrypt_dns_records:bool prop ->
  ?droplet_ids:float prop list ->
  ?droplet_tag:string prop ->
  ?enable_backend_keepalive:bool prop ->
  ?enable_proxy_protocol:bool prop ->
  ?http_idle_timeout_seconds:float prop ->
  ?id:string prop ->
  ?project_id:string prop ->
  ?redirect_http_to_https:bool prop ->
  ?region:string prop ->
  ?size:string prop ->
  ?size_unit:float prop ->
  ?target_load_balancer_ids:string prop list ->
  ?type_:string prop ->
  ?vpc_uuid:string prop ->
  ?glb_settings:glb_settings list ->
  ?healthcheck:healthcheck list ->
  ?sticky_sessions:sticky_sessions list ->
  name:string prop ->
  domains:domains list ->
  firewall:firewall list ->
  forwarding_rule:forwarding_rule list ->
  string ->
  t

val make :
  ?algorithm:string prop ->
  ?disable_lets_encrypt_dns_records:bool prop ->
  ?droplet_ids:float prop list ->
  ?droplet_tag:string prop ->
  ?enable_backend_keepalive:bool prop ->
  ?enable_proxy_protocol:bool prop ->
  ?http_idle_timeout_seconds:float prop ->
  ?id:string prop ->
  ?project_id:string prop ->
  ?redirect_http_to_https:bool prop ->
  ?region:string prop ->
  ?size:string prop ->
  ?size_unit:float prop ->
  ?target_load_balancer_ids:string prop list ->
  ?type_:string prop ->
  ?vpc_uuid:string prop ->
  ?glb_settings:glb_settings list ->
  ?healthcheck:healthcheck list ->
  ?sticky_sessions:sticky_sessions list ->
  name:string prop ->
  domains:domains list ->
  firewall:firewall list ->
  forwarding_rule:forwarding_rule list ->
  string ->
  t Tf_core.resource
