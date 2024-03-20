(** Provides a resource for managing Cloudflare Pages domains.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_pages_domain

val cloudflare_pages_domain :
  ?id:string prop ->
  account_id:string prop ->
  domain:string prop ->
  project_name:string prop ->
  unit ->
  cloudflare_pages_domain

val yojson_of_cloudflare_pages_domain :
  cloudflare_pages_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  domain : string prop;
  id : string prop;
  project_name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  domain:string prop ->
  project_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  domain:string prop ->
  project_name:string prop ->
  string ->
  t Tf_core.resource
