(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_record

val digitalocean_record :
  ?id:string prop ->
  domain:string prop ->
  name:string prop ->
  unit ->
  digitalocean_record

val yojson_of_digitalocean_record : digitalocean_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data : string prop;
  domain : string prop;
  flags : float prop;
  id : string prop;
  name : string prop;
  port : float prop;
  priority : float prop;
  tag : string prop;
  ttl : float prop;
  type_ : string prop;
  weight : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  domain:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  domain:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
