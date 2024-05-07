(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type contact_settings__admin_contact__postal_address

val contact_settings__admin_contact__postal_address :
  ?address_lines:string prop list ->
  ?administrative_area:string prop ->
  ?locality:string prop ->
  ?organization:string prop ->
  ?postal_code:string prop ->
  ?recipients:string prop list ->
  region_code:string prop ->
  unit ->
  contact_settings__admin_contact__postal_address

type contact_settings__admin_contact

val contact_settings__admin_contact :
  ?fax_number:string prop ->
  email:string prop ->
  phone_number:string prop ->
  postal_address:contact_settings__admin_contact__postal_address list ->
  unit ->
  contact_settings__admin_contact

type contact_settings__registrant_contact__postal_address

val contact_settings__registrant_contact__postal_address :
  ?address_lines:string prop list ->
  ?administrative_area:string prop ->
  ?locality:string prop ->
  ?organization:string prop ->
  ?postal_code:string prop ->
  ?recipients:string prop list ->
  region_code:string prop ->
  unit ->
  contact_settings__registrant_contact__postal_address

type contact_settings__registrant_contact

val contact_settings__registrant_contact :
  ?fax_number:string prop ->
  email:string prop ->
  phone_number:string prop ->
  postal_address:
    contact_settings__registrant_contact__postal_address list ->
  unit ->
  contact_settings__registrant_contact

type contact_settings__technical_contact__postal_address

val contact_settings__technical_contact__postal_address :
  ?address_lines:string prop list ->
  ?administrative_area:string prop ->
  ?locality:string prop ->
  ?organization:string prop ->
  ?postal_code:string prop ->
  ?recipients:string prop list ->
  region_code:string prop ->
  unit ->
  contact_settings__technical_contact__postal_address

type contact_settings__technical_contact

val contact_settings__technical_contact :
  ?fax_number:string prop ->
  email:string prop ->
  phone_number:string prop ->
  postal_address:
    contact_settings__technical_contact__postal_address list ->
  unit ->
  contact_settings__technical_contact

type contact_settings

val contact_settings :
  privacy:string prop ->
  admin_contact:contact_settings__admin_contact list ->
  registrant_contact:contact_settings__registrant_contact list ->
  technical_contact:contact_settings__technical_contact list ->
  unit ->
  contact_settings

type dns_settings__custom_dns__ds_records

val dns_settings__custom_dns__ds_records :
  ?algorithm:string prop ->
  ?digest:string prop ->
  ?digest_type:string prop ->
  ?key_tag:float prop ->
  unit ->
  dns_settings__custom_dns__ds_records

type dns_settings__custom_dns

val dns_settings__custom_dns :
  ?ds_records:dns_settings__custom_dns__ds_records list ->
  name_servers:string prop list ->
  unit ->
  dns_settings__custom_dns

type dns_settings__glue_records

val dns_settings__glue_records :
  ?ipv4_addresses:string prop list ->
  ?ipv6_addresses:string prop list ->
  host_name:string prop ->
  unit ->
  dns_settings__glue_records

type dns_settings

val dns_settings :
  ?custom_dns:dns_settings__custom_dns list ->
  ?glue_records:dns_settings__glue_records list ->
  unit ->
  dns_settings

type management_settings

val management_settings :
  ?preferred_renewal_method:string prop ->
  ?transfer_lock_state:string prop ->
  unit ->
  management_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type yearly_price

val yearly_price :
  ?currency_code:string prop ->
  ?units:string prop ->
  unit ->
  yearly_price

type google_clouddomains_registration

val google_clouddomains_registration :
  ?contact_notices:string prop list ->
  ?domain_notices:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?dns_settings:dns_settings list ->
  ?management_settings:management_settings list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  location:string prop ->
  contact_settings:contact_settings list ->
  yearly_price:yearly_price list ->
  unit ->
  google_clouddomains_registration

val yojson_of_google_clouddomains_registration :
  google_clouddomains_registration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?contact_notices:string prop list ->
  ?domain_notices:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?dns_settings:dns_settings list ->
  ?management_settings:management_settings list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  location:string prop ->
  contact_settings:contact_settings list ->
  yearly_price:yearly_price list ->
  string ->
  t

val make :
  ?contact_notices:string prop list ->
  ?domain_notices:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?dns_settings:dns_settings list ->
  ?management_settings:management_settings list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  location:string prop ->
  contact_settings:contact_settings list ->
  yearly_price:yearly_price list ->
  string ->
  t Tf_core.resource
