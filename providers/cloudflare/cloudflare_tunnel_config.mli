(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type config__ingress_rule__origin_request__access

val config__ingress_rule__origin_request__access :
  ?aud_tag:string prop list ->
  ?required:bool prop ->
  ?team_name:string prop ->
  unit ->
  config__ingress_rule__origin_request__access

type config__ingress_rule__origin_request__ip_rules

val config__ingress_rule__origin_request__ip_rules :
  ?allow:bool prop ->
  ?ports:float prop list ->
  ?prefix:string prop ->
  unit ->
  config__ingress_rule__origin_request__ip_rules

type config__ingress_rule__origin_request

val config__ingress_rule__origin_request :
  ?bastion_mode:bool prop ->
  ?ca_pool:string prop ->
  ?connect_timeout:string prop ->
  ?disable_chunked_encoding:bool prop ->
  ?http2_origin:bool prop ->
  ?http_host_header:string prop ->
  ?keep_alive_connections:float prop ->
  ?keep_alive_timeout:string prop ->
  ?no_happy_eyeballs:bool prop ->
  ?no_tls_verify:bool prop ->
  ?origin_server_name:string prop ->
  ?proxy_address:string prop ->
  ?proxy_port:float prop ->
  ?proxy_type:string prop ->
  ?tcp_keep_alive:string prop ->
  ?tls_timeout:string prop ->
  access:config__ingress_rule__origin_request__access list ->
  ip_rules:config__ingress_rule__origin_request__ip_rules list ->
  unit ->
  config__ingress_rule__origin_request

type config__ingress_rule

val config__ingress_rule :
  ?hostname:string prop ->
  ?path:string prop ->
  service:string prop ->
  origin_request:config__ingress_rule__origin_request list ->
  unit ->
  config__ingress_rule

type config__origin_request__access

val config__origin_request__access :
  ?aud_tag:string prop list ->
  ?required:bool prop ->
  ?team_name:string prop ->
  unit ->
  config__origin_request__access

type config__origin_request__ip_rules

val config__origin_request__ip_rules :
  ?allow:bool prop ->
  ?ports:float prop list ->
  ?prefix:string prop ->
  unit ->
  config__origin_request__ip_rules

type config__origin_request

val config__origin_request :
  ?bastion_mode:bool prop ->
  ?ca_pool:string prop ->
  ?connect_timeout:string prop ->
  ?disable_chunked_encoding:bool prop ->
  ?http2_origin:bool prop ->
  ?http_host_header:string prop ->
  ?keep_alive_connections:float prop ->
  ?keep_alive_timeout:string prop ->
  ?no_happy_eyeballs:bool prop ->
  ?no_tls_verify:bool prop ->
  ?origin_server_name:string prop ->
  ?proxy_address:string prop ->
  ?proxy_port:float prop ->
  ?proxy_type:string prop ->
  ?tcp_keep_alive:string prop ->
  ?tls_timeout:string prop ->
  access:config__origin_request__access list ->
  ip_rules:config__origin_request__ip_rules list ->
  unit ->
  config__origin_request

type config__warp_routing

val config__warp_routing :
  ?enabled:bool prop -> unit -> config__warp_routing

type config

val config :
  ingress_rule:config__ingress_rule list ->
  origin_request:config__origin_request list ->
  warp_routing:config__warp_routing list ->
  unit ->
  config

type cloudflare_tunnel_config

val cloudflare_tunnel_config :
  ?id:string prop ->
  account_id:string prop ->
  tunnel_id:string prop ->
  config:config list ->
  unit ->
  cloudflare_tunnel_config

val yojson_of_cloudflare_tunnel_config :
  cloudflare_tunnel_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  tunnel_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  tunnel_id:string prop ->
  config:config list ->
  string ->
  t
