(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_certificate

val digitalocean_certificate :
  ?certificate_chain:string ->
  ?domains:string list ->
  ?leaf_certificate:string ->
  ?private_key:string ->
  ?type_:string ->
  name:string ->
  string ->
  unit
