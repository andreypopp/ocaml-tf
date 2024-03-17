(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_split_tunnel__tunnels
type cloudflare_split_tunnel

val cloudflare_split_tunnel :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  mode:string prop ->
  tunnels:cloudflare_split_tunnel__tunnels list ->
  string ->
  unit
