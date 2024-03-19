(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
