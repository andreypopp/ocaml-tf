(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_customerprofiles_profile__address
type aws_customerprofiles_profile__billing_address
type aws_customerprofiles_profile__mailing_address
type aws_customerprofiles_profile__shipping_address
type aws_customerprofiles_profile

val aws_customerprofiles_profile :
  ?account_number:string ->
  ?additional_information:string ->
  ?attributes:(string * string) list ->
  ?birth_date:string ->
  ?business_email_address:string ->
  ?business_name:string ->
  ?business_phone_number:string ->
  ?email_address:string ->
  ?first_name:string ->
  ?gender_string:string ->
  ?home_phone_number:string ->
  ?id:string ->
  ?last_name:string ->
  ?middle_name:string ->
  ?mobile_phone_number:string ->
  ?party_type_string:string ->
  ?personal_email_address:string ->
  ?phone_number:string ->
  domain_name:string ->
  address:aws_customerprofiles_profile__address list ->
  billing_address:aws_customerprofiles_profile__billing_address list ->
  mailing_address:aws_customerprofiles_profile__mailing_address list ->
  shipping_address:
    aws_customerprofiles_profile__shipping_address list ->
  string ->
  unit
