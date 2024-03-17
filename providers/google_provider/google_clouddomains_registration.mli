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

val google_clouddomains_registration :
  ?contact_notices:string list ->
  ?domain_notices:string list ->
  ?labels:(string * string) list ->
  ?timeouts:google_clouddomains_registration__timeouts ->
  domain_name:string ->
  location:string ->
  contact_settings:
    google_clouddomains_registration__contact_settings list ->
  dns_settings:google_clouddomains_registration__dns_settings list ->
  management_settings:
    google_clouddomains_registration__management_settings list ->
  yearly_price:google_clouddomains_registration__yearly_price list ->
  string ->
  unit
