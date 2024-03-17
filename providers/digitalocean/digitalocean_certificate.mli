(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_certificate

type t = private {
  certificate_chain : string prop;
  domains : string list prop;
  id : string prop;
  leaf_certificate : string prop;
  name : string prop;
  not_after : string prop;
  private_key : string prop;
  sha1_fingerprint : string prop;
  state : string prop;
  type_ : string prop;
  uuid : string prop;
}

val digitalocean_certificate :
  ?certificate_chain:string prop ->
  ?domains:string prop list ->
  ?id:string prop ->
  ?leaf_certificate:string prop ->
  ?private_key:string prop ->
  ?type_:string prop ->
  name:string prop ->
  string ->
  t
