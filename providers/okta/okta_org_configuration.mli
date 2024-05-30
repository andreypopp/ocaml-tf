(** Manages org settings, logo, support and communication.
		
~> **IMPORTANT:** You must specify all Org Setting properties when you update an org's profile. Any property not specified in the script will be deleted. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_org_configuration

val okta_org_configuration :
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?billing_contact_user:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?end_user_support_help_url:string prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?opt_out_communication_emails:bool prop ->
  ?phone_number:string prop ->
  ?postal_code:string prop ->
  ?state:string prop ->
  ?support_phone_number:string prop ->
  ?technical_contact_user:string prop ->
  ?website:string prop ->
  company_name:string prop ->
  unit ->
  okta_org_configuration

val yojson_of_okta_org_configuration : okta_org_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_1 : string prop;
  address_2 : string prop;
  billing_contact_user : string prop;
  city : string prop;
  company_name : string prop;
  country : string prop;
  end_user_support_help_url : string prop;
  expires_at : string prop;
  id : string prop;
  logo : string prop;
  opt_out_communication_emails : bool prop;
  phone_number : string prop;
  postal_code : string prop;
  state : string prop;
  subdomain : string prop;
  support_phone_number : string prop;
  technical_contact_user : string prop;
  website : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?billing_contact_user:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?end_user_support_help_url:string prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?opt_out_communication_emails:bool prop ->
  ?phone_number:string prop ->
  ?postal_code:string prop ->
  ?state:string prop ->
  ?support_phone_number:string prop ->
  ?technical_contact_user:string prop ->
  ?website:string prop ->
  company_name:string prop ->
  string ->
  t

val make :
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?billing_contact_user:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?end_user_support_help_url:string prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?opt_out_communication_emails:bool prop ->
  ?phone_number:string prop ->
  ?postal_code:string prop ->
  ?state:string prop ->
  ?support_phone_number:string prop ->
  ?technical_contact_user:string prop ->
  ?website:string prop ->
  company_name:string prop ->
  string ->
  t Tf_core.resource
