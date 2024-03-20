(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_access_identity_provider

val cloudflare_access_identity_provider :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_access_identity_provider

val yojson_of_cloudflare_access_identity_provider :
  cloudflare_access_identity_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
