(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  certificate_authority:string prop ->
  hosts:string prop list ->
  type_:string prop ->
  validation_method:string prop ->
  validity_days:float prop ->
  zone_id:string prop ->
  validation_errors:validation_errors list ->
  validation_records:validation_records list ->
  unit ->
  cloudflare_certificate_pack

val yojson_of_cloudflare_certificate_pack :
  cloudflare_certificate_pack -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  certificate_authority:string prop ->
  hosts:string prop list ->
  type_:string prop ->
  validation_method:string prop ->
  validity_days:float prop ->
  zone_id:string prop ->
  validation_errors:validation_errors list ->
  validation_records:validation_records list ->
  string ->
  t
