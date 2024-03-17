(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_certificate_pack__validation_errors
type cloudflare_certificate_pack__validation_records
type cloudflare_certificate_pack

val cloudflare_certificate_pack :
  ?cloudflare_branding:bool ->
  ?wait_for_active_status:bool ->
  certificate_authority:string ->
  hosts:string list ->
  type_:string ->
  validation_method:string ->
  validity_days:float ->
  zone_id:string ->
  validation_errors:
    cloudflare_certificate_pack__validation_errors list ->
  validation_records:
    cloudflare_certificate_pack__validation_records list ->
  string ->
  unit
