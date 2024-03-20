(** Provides a resource to manage URL Normalization Settings.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_url_normalization_settings

val cloudflare_url_normalization_settings :
  ?id:string prop ->
  scope:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_url_normalization_settings

val yojson_of_cloudflare_url_normalization_settings :
  cloudflare_url_normalization_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  scope : string prop;
  type_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  scope:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  scope:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
