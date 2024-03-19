(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_teams_proxy_endpoint

val cloudflare_teams_proxy_endpoint :
  ?id:string prop ->
  account_id:string prop ->
  ips:string prop list ->
  name:string prop ->
  unit ->
  cloudflare_teams_proxy_endpoint

val yojson_of_cloudflare_teams_proxy_endpoint :
  cloudflare_teams_proxy_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  ips : string list prop;
  name : string prop;
  subdomain : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  ips:string prop list ->
  name:string prop ->
  string ->
  t
