(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_workers_kv_namespace

type t = private {
  account_id : string prop;
  id : string prop;
  title : string prop;
}

val cloudflare_workers_kv_namespace :
  ?id:string prop ->
  account_id:string prop ->
  title:string prop ->
  string ->
  t
