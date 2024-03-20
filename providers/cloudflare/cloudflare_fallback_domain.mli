(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type domains

val domains :
  ?description:string prop ->
  ?dns_server:string prop list ->
  ?suffix:string prop ->
  unit ->
  domains

type cloudflare_fallback_domain

val cloudflare_fallback_domain :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  domains:domains list ->
  unit ->
  cloudflare_fallback_domain

val yojson_of_cloudflare_fallback_domain :
  cloudflare_fallback_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  policy_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  domains:domains list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?policy_id:string prop ->
  account_id:string prop ->
  domains:domains list ->
  string ->
  t Tf_core.resource
