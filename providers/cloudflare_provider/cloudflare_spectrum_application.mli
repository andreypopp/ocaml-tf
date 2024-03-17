(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_spectrum_application__dns
type cloudflare_spectrum_application__edge_ips
type cloudflare_spectrum_application__origin_dns
type cloudflare_spectrum_application__origin_port_range
type cloudflare_spectrum_application

val cloudflare_spectrum_application :
  ?argo_smart_routing:bool prop ->
  ?id:string prop ->
  ?ip_firewall:bool prop ->
  ?origin_direct:string prop list ->
  ?origin_port:float prop ->
  ?proxy_protocol:string prop ->
  ?tls:string prop ->
  ?traffic_type:string prop ->
  protocol:string prop ->
  zone_id:string prop ->
  dns:cloudflare_spectrum_application__dns list ->
  edge_ips:cloudflare_spectrum_application__edge_ips list ->
  origin_dns:cloudflare_spectrum_application__origin_dns list ->
  origin_port_range:
    cloudflare_spectrum_application__origin_port_range list ->
  string ->
  unit
