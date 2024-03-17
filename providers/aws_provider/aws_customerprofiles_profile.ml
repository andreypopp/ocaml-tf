(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_customerprofiles_profile__address = {
  address_1 : string option; [@option]  (** address_1 *)
  address_2 : string option; [@option]  (** address_2 *)
  address_3 : string option; [@option]  (** address_3 *)
  address_4 : string option; [@option]  (** address_4 *)
  city : string option; [@option]  (** city *)
  country : string option; [@option]  (** country *)
  county : string option; [@option]  (** county *)
  postal_code : string option; [@option]  (** postal_code *)
  province : string option; [@option]  (** province *)
  state : string option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__address *)

type aws_customerprofiles_profile__billing_address = {
  address_1 : string option; [@option]  (** address_1 *)
  address_2 : string option; [@option]  (** address_2 *)
  address_3 : string option; [@option]  (** address_3 *)
  address_4 : string option; [@option]  (** address_4 *)
  city : string option; [@option]  (** city *)
  country : string option; [@option]  (** country *)
  county : string option; [@option]  (** county *)
  postal_code : string option; [@option]  (** postal_code *)
  province : string option; [@option]  (** province *)
  state : string option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__billing_address *)

type aws_customerprofiles_profile__mailing_address = {
  address_1 : string option; [@option]  (** address_1 *)
  address_2 : string option; [@option]  (** address_2 *)
  address_3 : string option; [@option]  (** address_3 *)
  address_4 : string option; [@option]  (** address_4 *)
  city : string option; [@option]  (** city *)
  country : string option; [@option]  (** country *)
  county : string option; [@option]  (** county *)
  postal_code : string option; [@option]  (** postal_code *)
  province : string option; [@option]  (** province *)
  state : string option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__mailing_address *)

type aws_customerprofiles_profile__shipping_address = {
  address_1 : string option; [@option]  (** address_1 *)
  address_2 : string option; [@option]  (** address_2 *)
  address_3 : string option; [@option]  (** address_3 *)
  address_4 : string option; [@option]  (** address_4 *)
  city : string option; [@option]  (** city *)
  country : string option; [@option]  (** country *)
  county : string option; [@option]  (** county *)
  postal_code : string option; [@option]  (** postal_code *)
  province : string option; [@option]  (** province *)
  state : string option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__shipping_address *)

type aws_customerprofiles_profile = {
  account_number : string option; [@option]  (** account_number *)
  additional_information : string option; [@option]
      (** additional_information *)
  attributes : (string * string) list option; [@option]
      (** attributes *)
  birth_date : string option; [@option]  (** birth_date *)
  business_email_address : string option; [@option]
      (** business_email_address *)
  business_name : string option; [@option]  (** business_name *)
  business_phone_number : string option; [@option]
      (** business_phone_number *)
  domain_name : string;  (** domain_name *)
  email_address : string option; [@option]  (** email_address *)
  first_name : string option; [@option]  (** first_name *)
  gender_string : string option; [@option]  (** gender_string *)
  home_phone_number : string option; [@option]
      (** home_phone_number *)
  id : string option; [@option]  (** id *)
  last_name : string option; [@option]  (** last_name *)
  middle_name : string option; [@option]  (** middle_name *)
  mobile_phone_number : string option; [@option]
      (** mobile_phone_number *)
  party_type_string : string option; [@option]
      (** party_type_string *)
  personal_email_address : string option; [@option]
      (** personal_email_address *)
  phone_number : string option; [@option]  (** phone_number *)
  address : aws_customerprofiles_profile__address list;
  billing_address :
    aws_customerprofiles_profile__billing_address list;
  mailing_address :
    aws_customerprofiles_profile__mailing_address list;
  shipping_address :
    aws_customerprofiles_profile__shipping_address list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile *)

let aws_customerprofiles_profile ?account_number
    ?additional_information ?attributes ?birth_date
    ?business_email_address ?business_name ?business_phone_number
    ?email_address ?first_name ?gender_string ?home_phone_number ?id
    ?last_name ?middle_name ?mobile_phone_number ?party_type_string
    ?personal_email_address ?phone_number ~domain_name ~address
    ~billing_address ~mailing_address ~shipping_address __resource_id
    =
  let __resource_type = "aws_customerprofiles_profile" in
  let __resource =
    {
      account_number;
      additional_information;
      attributes;
      birth_date;
      business_email_address;
      business_name;
      business_phone_number;
      domain_name;
      email_address;
      first_name;
      gender_string;
      home_phone_number;
      id;
      last_name;
      middle_name;
      mobile_phone_number;
      party_type_string;
      personal_email_address;
      phone_number;
      address;
      billing_address;
      mailing_address;
      shipping_address;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_customerprofiles_profile __resource);
  ()
