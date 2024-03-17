(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_address_map__ips
type cloudflare_address_map__memberships
type cloudflare_address_map

val cloudflare_address_map :
  ?default_sni:string ->
  ?description:string ->
  ?id:string ->
  account_id:string ->
  enabled:bool ->
  ips:cloudflare_address_map__ips list ->
  memberships:cloudflare_address_map__memberships list ->
  string ->
  unit
