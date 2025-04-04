(** Provides a Cloudflare Certificate Pack resource that is used to
provision managed TLS certificates.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type validation_errors

val validation_errors : unit -> validation_errors

type validation_records

val validation_records :
  ?cname_name:string prop ->
  ?cname_target:string prop ->
  ?emails:string prop list ->
  ?http_body:string prop ->
  ?http_url:string prop ->
  ?txt_name:string prop ->
  ?txt_value:string prop ->
  unit ->
  validation_records

type cloudflare_certificate_pack

val cloudflare_certificate_pack :
  ?cloudflare_branding:bool prop ->
  ?id:string prop ->
  ?wait_for_active_status:bool prop ->
  ?validation_errors:validation_errors list ->
  ?validation_records:validation_records list ->
  certificate_authority:string prop ->
  hosts:string prop list ->
  type_:string prop ->
  validation_method:string prop ->
  validity_days:float prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_certificate_pack

val yojson_of_cloudflare_certificate_pack :
  cloudflare_certificate_pack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_authority : string prop;
  cloudflare_branding : bool prop;
  hosts : string list prop;
  id : string prop;
  type_ : string prop;
  validation_method : string prop;
  validity_days : float prop;
  wait_for_active_status : bool prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cloudflare_branding:bool prop ->
  ?id:string prop ->
  ?wait_for_active_status:bool prop ->
  ?validation_errors:validation_errors list ->
  ?validation_records:validation_records list ->
  certificate_authority:string prop ->
  hosts:string prop list ->
  type_:string prop ->
  validation_method:string prop ->
  validity_days:float prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?cloudflare_branding:bool prop ->
  ?id:string prop ->
  ?wait_for_active_status:bool prop ->
  ?validation_errors:validation_errors list ->
  ?validation_records:validation_records list ->
  certificate_authority:string prop ->
  hosts:string prop list ->
  type_:string prop ->
  validation_method:string prop ->
  validity_days:float prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
