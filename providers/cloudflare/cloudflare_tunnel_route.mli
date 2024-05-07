(** Provides a resource, that manages Cloudflare tunnel routes for Zero
Trust. Tunnel routes are used to direct IP traffic through
Cloudflare Tunnels.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_tunnel_route

val cloudflare_tunnel_route :
  ?comment:string prop ->
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  account_id:string prop ->
  network:string prop ->
  tunnel_id:string prop ->
  unit ->
  cloudflare_tunnel_route

val yojson_of_cloudflare_tunnel_route :
  cloudflare_tunnel_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  comment : string prop;
  id : string prop;
  network : string prop;
  tunnel_id : string prop;
  virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  account_id:string prop ->
  network:string prop ->
  tunnel_id:string prop ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  account_id:string prop ->
  network:string prop ->
  tunnel_id:string prop ->
  string ->
  t Tf_core.resource
