(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_tunnel_virtual_network

type t = private {
  account_id : string prop;
  comment : string prop;
  id : string prop;
  is_default_network : bool prop;
  name : string prop;
}

val cloudflare_tunnel_virtual_network :
  ?comment:string prop ->
  ?id:string prop ->
  ?is_default_network:bool prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t
