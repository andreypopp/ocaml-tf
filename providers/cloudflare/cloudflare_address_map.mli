(** Provides the ability to manage IP addresses that can be used by DNS records when
they are proxied through Cloudflare.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ips

val ips : ip:string prop -> unit -> ips

type memberships

val memberships :
  identifier:string prop -> kind:string prop -> unit -> memberships

type cloudflare_address_map

val cloudflare_address_map :
  ?default_sni:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  enabled:bool prop ->
  ips:ips list ->
  memberships:memberships list ->
  unit ->
  cloudflare_address_map

val yojson_of_cloudflare_address_map : cloudflare_address_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  can_delete : bool prop;
  can_modify_ips : bool prop;
  default_sni : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_sni:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  enabled:bool prop ->
  ips:ips list ->
  memberships:memberships list ->
  string ->
  t

val make :
  ?default_sni:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  enabled:bool prop ->
  ips:ips list ->
  memberships:memberships list ->
  string ->
  t Tf_core.resource
