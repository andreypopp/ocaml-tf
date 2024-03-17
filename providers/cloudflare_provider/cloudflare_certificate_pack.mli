(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_certificate_pack__validation_errors
type cloudflare_certificate_pack__validation_records
type cloudflare_certificate_pack

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
  validation_errors:
    cloudflare_certificate_pack__validation_errors list ->
  validation_records:
    cloudflare_certificate_pack__validation_records list ->
  string ->
  t
