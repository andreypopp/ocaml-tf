(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_ssh_key

type t = private {
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
}

val digitalocean_ssh_key :
  ?id:string prop ->
  name:string prop ->
  public_key:string prop ->
  string ->
  t
