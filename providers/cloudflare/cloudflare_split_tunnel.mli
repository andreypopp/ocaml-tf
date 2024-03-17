(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_split_tunnel__tunnels
type cloudflare_split_tunnel

type t = private {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  policy_id : string prop;
}

val cloudflare_split_tunnel :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  mode:string prop ->
  tunnels:cloudflare_split_tunnel__tunnels list ->
  string ->
  t
