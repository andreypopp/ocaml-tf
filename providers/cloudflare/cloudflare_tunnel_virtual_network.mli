(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_tunnel_virtual_network

val cloudflare_tunnel_virtual_network :
  ?comment:string prop ->
  ?id:string prop ->
  ?is_default_network:bool prop ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_tunnel_virtual_network

val yojson_of_cloudflare_tunnel_virtual_network :
  cloudflare_tunnel_virtual_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  comment : string prop;
  id : string prop;
  is_default_network : bool prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  ?is_default_network:bool prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  ?is_default_network:bool prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
