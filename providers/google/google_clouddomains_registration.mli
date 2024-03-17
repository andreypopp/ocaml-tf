(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddomains_registration__contact_settings__admin_contact__postal_address

type google_clouddomains_registration__contact_settings__admin_contact

type google_clouddomains_registration__contact_settings__registrant_contact__postal_address

type google_clouddomains_registration__contact_settings__registrant_contact

type google_clouddomains_registration__contact_settings__technical_contact__postal_address

type google_clouddomains_registration__contact_settings__technical_contact

type google_clouddomains_registration__contact_settings

type google_clouddomains_registration__dns_settings__custom_dns__ds_records

type google_clouddomains_registration__dns_settings__custom_dns
type google_clouddomains_registration__dns_settings__glue_records
type google_clouddomains_registration__dns_settings
type google_clouddomains_registration__management_settings
type google_clouddomains_registration__timeouts
type google_clouddomains_registration__yearly_price
type google_clouddomains_registration

type t = private {
  contact_notices : string list prop;
  create_time : string prop;
  domain_name : string prop;
  domain_notices : string list prop;
  effective_labels : (string * string) list prop;
  expire_time : string prop;
  id : string prop;
  issues : string list prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  register_failure_reason : string prop;
  state : string prop;
  supported_privacy : string list prop;
  terraform_labels : (string * string) list prop;
}

val google_clouddomains_registration :
  ?contact_notices:string prop list ->
  ?domain_notices:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_clouddomains_registration__timeouts ->
  domain_name:string prop ->
  location:string prop ->
  contact_settings:
    google_clouddomains_registration__contact_settings list ->
  dns_settings:google_clouddomains_registration__dns_settings list ->
  management_settings:
    google_clouddomains_registration__management_settings list ->
  yearly_price:google_clouddomains_registration__yearly_price list ->
  string ->
  t
