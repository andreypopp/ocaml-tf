(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_tunnel_config__config__ingress_rule__origin_request__access

type cloudflare_tunnel_config__config__ingress_rule__origin_request__ip_rules

type cloudflare_tunnel_config__config__ingress_rule__origin_request
type cloudflare_tunnel_config__config__ingress_rule
type cloudflare_tunnel_config__config__origin_request__access
type cloudflare_tunnel_config__config__origin_request__ip_rules
type cloudflare_tunnel_config__config__origin_request
type cloudflare_tunnel_config__config__warp_routing
type cloudflare_tunnel_config__config
type cloudflare_tunnel_config

val cloudflare_tunnel_config :
  ?id:string ->
  account_id:string ->
  tunnel_id:string ->
  config:cloudflare_tunnel_config__config list ->
  string ->
  unit
