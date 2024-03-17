(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_tunnel_route

val cloudflare_tunnel_route :
  ?comment:string prop ->
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  account_id:string prop ->
  network:string prop ->
  tunnel_id:string prop ->
  string ->
  unit
