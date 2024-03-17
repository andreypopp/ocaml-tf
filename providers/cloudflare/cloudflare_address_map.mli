(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_address_map__ips
type cloudflare_address_map__memberships
type cloudflare_address_map

type t = private {
  account_id : string prop;
  can_delete : bool prop;
  can_modify_ips : bool prop;
  default_sni : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
}

val cloudflare_address_map :
  ?default_sni:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  enabled:bool prop ->
  ips:cloudflare_address_map__ips list ->
  memberships:cloudflare_address_map__memberships list ->
  string ->
  t
