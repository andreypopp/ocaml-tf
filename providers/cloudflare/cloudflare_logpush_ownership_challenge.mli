(** Provides a resource which manages Cloudflare Logpush ownership
challenges to use in a Logpush Job. On it's own, doesn't do much
however this resource should be used in conjunction to create
Logpush jobs.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_logpush_ownership_challenge

val cloudflare_logpush_ownership_challenge :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  destination_conf:string prop ->
  unit ->
  cloudflare_logpush_ownership_challenge

val yojson_of_cloudflare_logpush_ownership_challenge :
  cloudflare_logpush_ownership_challenge -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  destination_conf : string prop;
  id : string prop;
  ownership_challenge_filename : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  destination_conf:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  destination_conf:string prop ->
  string ->
  t Tf_core.resource
