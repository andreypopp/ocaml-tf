(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_workers_kv

type t = private {
  account_id : string prop;
  id : string prop;
  key : string prop;
  namespace_id : string prop;
  value : string prop;
}

val cloudflare_workers_kv :
  ?id:string prop ->
  account_id:string prop ->
  key:string prop ->
  namespace_id:string prop ->
  value:string prop ->
  string ->
  t
