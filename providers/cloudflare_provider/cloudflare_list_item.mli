(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_list_item__hostname
type cloudflare_list_item__redirect
type cloudflare_list_item

val cloudflare_list_item :
  ?asn:float ->
  ?comment:string ->
  ?ip:string ->
  account_id:string ->
  list_id:string ->
  hostname:cloudflare_list_item__hostname list ->
  redirect:cloudflare_list_item__redirect list ->
  string ->
  unit
