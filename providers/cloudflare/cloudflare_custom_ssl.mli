(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_ssl_options

val custom_ssl_options :
  ?bundle_method:string prop ->
  ?certificate:string prop ->
  ?geo_restrictions:string prop ->
  ?private_key:string prop ->
  ?type_:string prop ->
  unit ->
  custom_ssl_options

type custom_ssl_priority

val custom_ssl_priority :
  ?id:string prop ->
  ?priority:float prop ->
  unit ->
  custom_ssl_priority

type cloudflare_custom_ssl

val cloudflare_custom_ssl :
  ?id:string prop ->
  zone_id:string prop ->
  custom_ssl_options:custom_ssl_options list ->
  custom_ssl_priority:custom_ssl_priority list ->
  unit ->
  cloudflare_custom_ssl

val yojson_of_cloudflare_custom_ssl : cloudflare_custom_ssl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  expires_on : string prop;
  hosts : string list prop;
  id : string prop;
  issuer : string prop;
  modified_on : string prop;
  priority : float prop;
  signature : string prop;
  status : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  zone_id:string prop ->
  custom_ssl_options:custom_ssl_options list ->
  custom_ssl_priority:custom_ssl_priority list ->
  string ->
  t

val make :
  ?id:string prop ->
  zone_id:string prop ->
  custom_ssl_options:custom_ssl_options list ->
  custom_ssl_priority:custom_ssl_priority list ->
  string ->
  t Tf_core.resource
