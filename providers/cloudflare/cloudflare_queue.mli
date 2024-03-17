(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_queue

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
}

val cloudflare_queue :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t
