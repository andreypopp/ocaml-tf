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
  ?droplet_tag:string ->
  ?enable_backend_keepalive:bool ->
  ?enable_proxy_protocol:bool ->
  ?redirect_http_to_https:bool ->
  ?region:string ->
  ?size:string ->
  ?type_:string ->
  name:string ->
  firewall:digitalocean_loadbalancer__firewall list ->
  forwarding_rule:digitalocean_loadbalancer__forwarding_rule list ->
  healthcheck:digitalocean_loadbalancer__healthcheck list ->
  sticky_sessions:digitalocean_loadbalancer__sticky_sessions list ->
  string ->
  unit
