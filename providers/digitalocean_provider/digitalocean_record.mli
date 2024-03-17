(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_record

val digitalocean_record :
  ?flags:float prop ->
  ?id:string prop ->
  ?port:float prop ->
  ?priority:float prop ->
  ?tag:string prop ->
  ?ttl:float prop ->
  ?weight:float prop ->
  domain:string prop ->
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  string ->
  unit
