(** Tunnel exposes applications running on your local web server on any
network with an internet connection without manually adding DNS
records or configuring a firewall or router.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_tunnel

val cloudflare_tunnel :
  ?config_src:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  secret:string prop ->
  unit ->
  cloudflare_tunnel

val yojson_of_cloudflare_tunnel : cloudflare_tunnel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  cname : string prop;
  config_src : string prop;
  id : string prop;
  name : string prop;
  secret : string prop;
  tunnel_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?config_src:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  secret:string prop ->
  string ->
  t

val make :
  ?config_src:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  secret:string prop ->
  string ->
  t Tf_core.resource
