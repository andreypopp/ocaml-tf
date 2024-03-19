(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_account_primary_contact

val aws_account_primary_contact :
  ?account_id:string prop ->
  ?address_line_2:string prop ->
  ?address_line_3:string prop ->
  ?company_name:string prop ->
  ?district_or_county:string prop ->
  ?id:string prop ->
  ?state_or_region:string prop ->
  ?website_url:string prop ->
  address_line_1:string prop ->
  city:string prop ->
  country_code:string prop ->
  full_name:string prop ->
  phone_number:string prop ->
  postal_code:string prop ->
  unit ->
  aws_account_primary_contact

val yojson_of_aws_account_primary_contact :
  aws_account_primary_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  address_line_1 : string prop;
  address_line_2 : string prop;
  address_line_3 : string prop;
  city : string prop;
  company_name : string prop;
  country_code : string prop;
  district_or_county : string prop;
  full_name : string prop;
  id : string prop;
  phone_number : string prop;
  postal_code : string prop;
  state_or_region : string prop;
  website_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?address_line_2:string prop ->
  ?address_line_3:string prop ->
  ?company_name:string prop ->
  ?district_or_county:string prop ->
  ?id:string prop ->
  ?state_or_region:string prop ->
  ?website_url:string prop ->
  address_line_1:string prop ->
  city:string prop ->
  country_code:string prop ->
  full_name:string prop ->
  phone_number:string prop ->
  postal_code:string prop ->
  string ->
  t
