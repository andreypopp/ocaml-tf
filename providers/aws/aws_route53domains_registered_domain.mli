(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type admin_contact

val admin_contact :
  ?address_line_1:string prop ->
  ?address_line_2:string prop ->
  ?city:string prop ->
  ?contact_type:string prop ->
  ?country_code:string prop ->
  ?email:string prop ->
  ?extra_params:(string * string prop) list ->
  ?fax:string prop ->
  ?first_name:string prop ->
  ?last_name:string prop ->
  ?organization_name:string prop ->
  ?phone_number:string prop ->
  ?state:string prop ->
  ?zip_code:string prop ->
  unit ->
  admin_contact

type billing_contact

val billing_contact :
  ?address_line_1:string prop ->
  ?address_line_2:string prop ->
  ?city:string prop ->
  ?contact_type:string prop ->
  ?country_code:string prop ->
  ?email:string prop ->
  ?extra_params:(string * string prop) list ->
  ?fax:string prop ->
  ?first_name:string prop ->
  ?last_name:string prop ->
  ?organization_name:string prop ->
  ?phone_number:string prop ->
  ?state:string prop ->
  ?zip_code:string prop ->
  unit ->
  billing_contact

type name_server

val name_server :
  ?glue_ips:string prop list ->
  name:string prop ->
  unit ->
  name_server

type registrant_contact

val registrant_contact :
  ?address_line_1:string prop ->
  ?address_line_2:string prop ->
  ?city:string prop ->
  ?contact_type:string prop ->
  ?country_code:string prop ->
  ?email:string prop ->
  ?extra_params:(string * string prop) list ->
  ?fax:string prop ->
  ?first_name:string prop ->
  ?last_name:string prop ->
  ?organization_name:string prop ->
  ?phone_number:string prop ->
  ?state:string prop ->
  ?zip_code:string prop ->
  unit ->
  registrant_contact

type tech_contact

val tech_contact :
  ?address_line_1:string prop ->
  ?address_line_2:string prop ->
  ?city:string prop ->
  ?contact_type:string prop ->
  ?country_code:string prop ->
  ?email:string prop ->
  ?extra_params:(string * string prop) list ->
  ?fax:string prop ->
  ?first_name:string prop ->
  ?last_name:string prop ->
  ?organization_name:string prop ->
  ?phone_number:string prop ->
  ?state:string prop ->
  ?zip_code:string prop ->
  unit ->
  tech_contact

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_route53domains_registered_domain

val aws_route53domains_registered_domain :
  ?admin_privacy:bool prop ->
  ?auto_renew:bool prop ->
  ?billing_privacy:bool prop ->
  ?id:string prop ->
  ?registrant_privacy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tech_privacy:bool prop ->
  ?transfer_lock:bool prop ->
  ?admin_contact:admin_contact list ->
  ?billing_contact:billing_contact list ->
  ?name_server:name_server list ->
  ?registrant_contact:registrant_contact list ->
  ?tech_contact:tech_contact list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  unit ->
  aws_route53domains_registered_domain

val yojson_of_aws_route53domains_registered_domain :
  aws_route53domains_registered_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  abuse_contact_email : string prop;
  abuse_contact_phone : string prop;
  admin_privacy : bool prop;
  auto_renew : bool prop;
  billing_privacy : bool prop;
  creation_date : string prop;
  domain_name : string prop;
  expiration_date : string prop;
  id : string prop;
  registrant_privacy : bool prop;
  registrar_name : string prop;
  registrar_url : string prop;
  reseller : string prop;
  status_list : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tech_privacy : bool prop;
  transfer_lock : bool prop;
  updated_date : string prop;
  whois_server : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_privacy:bool prop ->
  ?auto_renew:bool prop ->
  ?billing_privacy:bool prop ->
  ?id:string prop ->
  ?registrant_privacy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tech_privacy:bool prop ->
  ?transfer_lock:bool prop ->
  ?admin_contact:admin_contact list ->
  ?billing_contact:billing_contact list ->
  ?name_server:name_server list ->
  ?registrant_contact:registrant_contact list ->
  ?tech_contact:tech_contact list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?admin_privacy:bool prop ->
  ?auto_renew:bool prop ->
  ?billing_privacy:bool prop ->
  ?id:string prop ->
  ?registrant_privacy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tech_privacy:bool prop ->
  ?transfer_lock:bool prop ->
  ?admin_contact:admin_contact list ->
  ?billing_contact:billing_contact list ->
  ?name_server:name_server list ->
  ?registrant_contact:registrant_contact list ->
  ?tech_contact:tech_contact list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
