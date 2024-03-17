(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_tunnel

type t = private {
  account_id : string prop;
  cname : string prop;
  config_src : string prop;
  id : string prop;
  name : string prop;
  secret : string prop;
  tunnel_token : string prop;
}

val cloudflare_tunnel :
  ?config_src:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  secret:string prop ->
  string ->
  t
