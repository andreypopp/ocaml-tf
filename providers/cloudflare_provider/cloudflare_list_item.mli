(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_list_item__hostname
type cloudflare_list_item__redirect
type cloudflare_list_item

type t = private {
  account_id : string prop;
  asn : float prop;
  comment : string prop;
  id : string prop;
  ip : string prop;
  list_id : string prop;
}

val cloudflare_list_item :
  ?asn:float prop ->
  ?comment:string prop ->
  ?ip:string prop ->
  account_id:string prop ->
  list_id:string prop ->
  hostname:cloudflare_list_item__hostname list ->
  redirect:cloudflare_list_item__redirect list ->
  string ->
  t
