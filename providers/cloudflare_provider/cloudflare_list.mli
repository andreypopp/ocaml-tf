(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_list__item__value__hostname
type cloudflare_list__item__value__redirect
type cloudflare_list__item__value
type cloudflare_list__item
type cloudflare_list

val cloudflare_list :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  kind:string prop ->
  name:string prop ->
  item:cloudflare_list__item list ->
  string ->
  unit
