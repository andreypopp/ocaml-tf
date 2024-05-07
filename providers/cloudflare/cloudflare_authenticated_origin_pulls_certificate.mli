(** Provides a Cloudflare Authenticated Origin Pulls certificate
resource. An uploaded client certificate is required to use Per-Zone
 or Per-Hostname Authenticated Origin Pulls.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type cloudflare_authenticated_origin_pulls_certificate

val cloudflare_authenticated_origin_pulls_certificate :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_authenticated_origin_pulls_certificate

val yojson_of_cloudflare_authenticated_origin_pulls_certificate :
  cloudflare_authenticated_origin_pulls_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  status : string prop;
  type_ : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
