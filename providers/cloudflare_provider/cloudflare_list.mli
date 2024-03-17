(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_list__item__value__hostname
type cloudflare_list__item__value__redirect
type cloudflare_list__item__value
type cloudflare_list__item
type cloudflare_list

val cloudflare_list :
  ?description:string ->
  ?id:string ->
  account_id:string ->
  kind:string ->
  name:string ->
  item:cloudflare_list__item list ->
  string ->
  unit
