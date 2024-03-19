(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type digitalocean_cdn

val digitalocean_cdn :
  ?certificate_id:string prop ->
  ?certificate_name:string prop ->
  ?custom_domain:string prop ->
  ?id:string prop ->
  ?ttl:float prop ->
  origin:string prop ->
  unit ->
  digitalocean_cdn

val yojson_of_digitalocean_cdn : digitalocean_cdn -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_id : string prop;
  certificate_name : string prop;
  created_at : string prop;
  custom_domain : string prop;
  endpoint : string prop;
  id : string prop;
  origin : string prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_id:string prop ->
  ?certificate_name:string prop ->
  ?custom_domain:string prop ->
  ?id:string prop ->
  ?ttl:float prop ->
  origin:string prop ->
  string ->
  t
