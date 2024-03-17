(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_r2_bucket

type t = private {
  account_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
}

val cloudflare_r2_bucket :
  ?location:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t
