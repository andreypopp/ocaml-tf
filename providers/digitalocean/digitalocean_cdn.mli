(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_cdn

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

val digitalocean_cdn :
  ?certificate_id:string prop ->
  ?certificate_name:string prop ->
  ?custom_domain:string prop ->
  ?id:string prop ->
  ?ttl:float prop ->
  origin:string prop ->
  string ->
  t
