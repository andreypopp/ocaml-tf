(** Provides a Cloudflare Split Tunnel resource. Split tunnels are used to either
include or exclude lists of routes from the WARP client's tunnel.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tunnels

val tunnels :
  ?address:string prop ->
  ?description:string prop ->
  ?host:string prop ->
  unit ->
  tunnels

type cloudflare_split_tunnel

val cloudflare_split_tunnel :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  mode:string prop ->
  tunnels:tunnels list ->
  unit ->
  cloudflare_split_tunnel

val yojson_of_cloudflare_split_tunnel :
  cloudflare_split_tunnel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  policy_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  mode:string prop ->
  tunnels:tunnels list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  mode:string prop ->
  tunnels:tunnels list ->
  string ->
  t Tf_core.resource
