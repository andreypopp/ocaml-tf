(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type address

val address :
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?address_3:string prop ->
  ?address_4:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?county:string prop ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?state:string prop ->
  unit ->
  address

type billing_address

val billing_address :
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?address_3:string prop ->
  ?address_4:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?county:string prop ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?state:string prop ->
  unit ->
  billing_address

type mailing_address

val mailing_address :
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?address_3:string prop ->
  ?address_4:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?county:string prop ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?state:string prop ->
  unit ->
  mailing_address

type shipping_address

val shipping_address :
  ?address_1:string prop ->
  ?address_2:string prop ->
  ?address_3:string prop ->
  ?address_4:string prop ->
  ?city:string prop ->
  ?country:string prop ->
  ?county:string prop ->
  ?postal_code:string prop ->
  ?province:string prop ->
  ?state:string prop ->
  unit ->
  shipping_address

type aws_customerprofiles_profile

val aws_customerprofiles_profile :
  ?account_number:string prop ->
  ?additional_information:string prop ->
  ?attributes:string prop Tf_core.assoc ->
  ?birth_date:string prop ->
  ?business_email_address:string prop ->
  ?business_name:string prop ->
  ?business_phone_number:string prop ->
  ?email_address:string prop ->
  ?first_name:string prop ->
  ?gender_string:string prop ->
  ?home_phone_number:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?middle_name:string prop ->
  ?mobile_phone_number:string prop ->
  ?party_type_string:string prop ->
  ?personal_email_address:string prop ->
  ?phone_number:string prop ->
  ?address:address list ->
  ?billing_address:billing_address list ->
  ?mailing_address:mailing_address list ->
  ?shipping_address:shipping_address list ->
  domain_name:string prop ->
  unit ->
  aws_customerprofiles_profile

val yojson_of_aws_customerprofiles_profile :
  aws_customerprofiles_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_number : string prop;
  additional_information : string prop;
  attributes : string Tf_core.assoc prop;
  birth_date : string prop;
  business_email_address : string prop;
  business_name : string prop;
  business_phone_number : string prop;
  domain_name : string prop;
  email_address : string prop;
  first_name : string prop;
  gender_string : string prop;
  home_phone_number : string prop;
  id : string prop;
  last_name : string prop;
  middle_name : string prop;
  mobile_phone_number : string prop;
  party_type_string : string prop;
  personal_email_address : string prop;
  phone_number : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_number:string prop ->
  ?additional_information:string prop ->
  ?attributes:string prop Tf_core.assoc ->
  ?birth_date:string prop ->
  ?business_email_address:string prop ->
  ?business_name:string prop ->
  ?business_phone_number:string prop ->
  ?email_address:string prop ->
  ?first_name:string prop ->
  ?gender_string:string prop ->
  ?home_phone_number:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?middle_name:string prop ->
  ?mobile_phone_number:string prop ->
  ?party_type_string:string prop ->
  ?personal_email_address:string prop ->
  ?phone_number:string prop ->
  ?address:address list ->
  ?billing_address:billing_address list ->
  ?mailing_address:mailing_address list ->
  ?shipping_address:shipping_address list ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?account_number:string prop ->
  ?additional_information:string prop ->
  ?attributes:string prop Tf_core.assoc ->
  ?birth_date:string prop ->
  ?business_email_address:string prop ->
  ?business_name:string prop ->
  ?business_phone_number:string prop ->
  ?email_address:string prop ->
  ?first_name:string prop ->
  ?gender_string:string prop ->
  ?home_phone_number:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?middle_name:string prop ->
  ?mobile_phone_number:string prop ->
  ?party_type_string:string prop ->
  ?personal_email_address:string prop ->
  ?phone_number:string prop ->
  ?address:address list ->
  ?billing_address:billing_address list ->
  ?mailing_address:mailing_address list ->
  ?shipping_address:shipping_address list ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
