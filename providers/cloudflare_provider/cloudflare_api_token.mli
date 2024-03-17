(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_api_token__condition__request_ip
type cloudflare_api_token__condition
type cloudflare_api_token__policy
type cloudflare_api_token

val cloudflare_api_token :
  ?expires_on:string prop ->
  ?id:string prop ->
  ?not_before:string prop ->
  name:string prop ->
  condition:cloudflare_api_token__condition list ->
  policy:cloudflare_api_token__policy list ->
  string ->
  unit
