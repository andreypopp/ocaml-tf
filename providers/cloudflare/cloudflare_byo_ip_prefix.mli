(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_byo_ip_prefix

type t = private {
  account_id : string prop;
  advertisement : string prop;
  description : string prop;
  id : string prop;
  prefix_id : string prop;
}

val cloudflare_byo_ip_prefix :
  ?advertisement:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  prefix_id:string prop ->
  string ->
  t
