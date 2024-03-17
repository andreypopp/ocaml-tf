(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_teams_proxy_endpoint

type t = private {
  account_id : string prop;
  id : string prop;
  ips : string list prop;
  name : string prop;
  subdomain : string prop;
}

val cloudflare_teams_proxy_endpoint :
  ?id:string prop ->
  account_id:string prop ->
  ips:string prop list ->
  name:string prop ->
  string ->
  t
