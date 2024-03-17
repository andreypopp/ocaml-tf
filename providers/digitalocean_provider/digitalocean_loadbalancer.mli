(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_loadbalancer__firewall
type digitalocean_loadbalancer__forwarding_rule
type digitalocean_loadbalancer__healthcheck
type digitalocean_loadbalancer__sticky_sessions
type digitalocean_loadbalancer

val digitalocean_loadbalancer :
  ?algorithm:string ->
  ?disable_lets_encrypt_dns_records:bool ->
  ?droplet_ids:float list ->
  ?droplet_tag:string ->
  ?enable_backend_keepalive:bool ->
  ?enable_proxy_protocol:bool ->
  ?http_idle_timeout_seconds:float ->
  ?id:string ->
  ?project_id:string ->
  ?redirect_http_to_https:bool ->
  ?region:string ->
  ?size:string ->
  ?size_unit:float ->
  ?type_:string ->
  ?vpc_uuid:string ->
  name:string ->
  firewall:digitalocean_loadbalancer__firewall list ->
  forwarding_rule:digitalocean_loadbalancer__forwarding_rule list ->
  healthcheck:digitalocean_loadbalancer__healthcheck list ->
  sticky_sessions:digitalocean_loadbalancer__sticky_sessions list ->
  string ->
  unit
