(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_customerprofiles_profile__address
type aws_customerprofiles_profile__billing_address
type aws_customerprofiles_profile__mailing_address
type aws_customerprofiles_profile__shipping_address
type aws_customerprofiles_profile

val aws_customerprofiles_profile :
  ?account_number:string prop ->
  ?additional_information:string prop ->
  ?attributes:(string * string prop) list ->
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
  domain_name:string prop ->
  address:aws_customerprofiles_profile__address list ->
  billing_address:aws_customerprofiles_profile__billing_address list ->
  mailing_address:aws_customerprofiles_profile__mailing_address list ->
  shipping_address:
    aws_customerprofiles_profile__shipping_address list ->
  string ->
  unit
