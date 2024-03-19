(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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
  unit ->
  digitalocean_record

val yojson_of_digitalocean_record : digitalocean_record -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
