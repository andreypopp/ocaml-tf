(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_certificate

val digitalocean_certificate :
  ?certificate_chain:string prop ->
  ?domains:string prop list ->
  ?id:string prop ->
  ?leaf_certificate:string prop ->
  ?private_key:string prop ->
  ?type_:string prop ->
  name:string prop ->
  string ->
  unit
