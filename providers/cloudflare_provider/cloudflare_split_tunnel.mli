(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_split_tunnel__tunnels
type cloudflare_split_tunnel

val cloudflare_split_tunnel :
  ?id:string ->
  ?policy_id:string ->
  account_id:string ->
  mode:string ->
  tunnels:cloudflare_split_tunnel__tunnels list ->
  string ->
  unit
