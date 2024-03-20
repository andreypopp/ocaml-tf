(** Provides a Cloudflare Spectrum Application. You can extend the power
of Cloudflare's DDoS, TLS, and IP Firewall to your other TCP-based
services.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns

val dns : name:string prop -> type_:string prop -> unit -> dns

type edge_ips

val edge_ips :
  ?connectivity:string prop ->
  ?ips:string prop list ->
  type_:string prop ->
  unit ->
  edge_ips

type origin_dns

val origin_dns : name:string prop -> unit -> origin_dns

type origin_port_range

val origin_port_range :
  end_:float prop -> start:float prop -> unit -> origin_port_range

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
  dns:dns list ->
  edge_ips:edge_ips list ->
  origin_dns:origin_dns list ->
  origin_port_range:origin_port_range list ->
  unit ->
  cloudflare_spectrum_application

val yojson_of_cloudflare_spectrum_application :
  cloudflare_spectrum_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  argo_smart_routing : bool prop;
  id : string prop;
  ip_firewall : bool prop;
  origin_direct : string list prop;
  origin_port : float prop;
  protocol : string prop;
  proxy_protocol : string prop;
  tls : string prop;
  traffic_type : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  dns:dns list ->
  edge_ips:edge_ips list ->
  origin_dns:origin_dns list ->
  origin_port_range:origin_port_range list ->
  string ->
  t

val make :
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
  dns:dns list ->
  edge_ips:edge_ips list ->
  origin_dns:origin_dns list ->
  origin_port_range:origin_port_range list ->
  string ->
  t Tf_core.resource
