(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_domain

type t = private {
  id : string prop;
  ip_address : string prop;
  name : string prop;
  ttl : float prop;
  urn : string prop;
}

val digitalocean_domain :
  ?id:string prop ->
  ?ip_address:string prop ->
  name:string prop ->
  string ->
  t
