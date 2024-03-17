(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_record

type t = private {
  domain : string prop;
  flags : float prop;
  fqdn : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  priority : float prop;
  tag : string prop;
  ttl : float prop;
  type_ : string prop;
  value : string prop;
  weight : float prop;
}

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
  t
