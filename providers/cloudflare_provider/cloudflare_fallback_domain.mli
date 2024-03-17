(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_fallback_domain__domains
type cloudflare_fallback_domain

type t = private {
  account_id : string prop;
  id : string prop;
  policy_id : string prop;
}

val cloudflare_fallback_domain :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  domains:cloudflare_fallback_domain__domains list ->
  string ->
  t
