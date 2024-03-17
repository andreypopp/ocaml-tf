(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_worker_domain

type t = private {
  account_id : string prop;
  environment : string prop;
  hostname : string prop;
  id : string prop;
  service : string prop;
  zone_id : string prop;
}

val cloudflare_worker_domain :
  ?environment:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  hostname:string prop ->
  service:string prop ->
  zone_id:string prop ->
  string ->
  t
