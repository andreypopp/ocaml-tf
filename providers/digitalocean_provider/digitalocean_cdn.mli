(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_cdn

val digitalocean_cdn :
  ?certificate_id:string prop ->
  ?certificate_name:string prop ->
  ?custom_domain:string prop ->
  ?id:string prop ->
  ?ttl:float prop ->
  origin:string prop ->
  string ->
  unit
