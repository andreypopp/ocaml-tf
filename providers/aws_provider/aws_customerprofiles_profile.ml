(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_customerprofiles_profile__address = {
  address_1 : string prop option; [@option]  (** address_1 *)
  address_2 : string prop option; [@option]  (** address_2 *)
  address_3 : string prop option; [@option]  (** address_3 *)
  address_4 : string prop option; [@option]  (** address_4 *)
  city : string prop option; [@option]  (** city *)
  country : string prop option; [@option]  (** country *)
  county : string prop option; [@option]  (** county *)
  postal_code : string prop option; [@option]  (** postal_code *)
  province : string prop option; [@option]  (** province *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__address *)

type aws_customerprofiles_profile__billing_address = {
  address_1 : string prop option; [@option]  (** address_1 *)
  address_2 : string prop option; [@option]  (** address_2 *)
  address_3 : string prop option; [@option]  (** address_3 *)
  address_4 : string prop option; [@option]  (** address_4 *)
  city : string prop option; [@option]  (** city *)
  country : string prop option; [@option]  (** country *)
  county : string prop option; [@option]  (** county *)
  postal_code : string prop option; [@option]  (** postal_code *)
  province : string prop option; [@option]  (** province *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__billing_address *)

type aws_customerprofiles_profile__mailing_address = {
  address_1 : string prop option; [@option]  (** address_1 *)
  address_2 : string prop option; [@option]  (** address_2 *)
  address_3 : string prop option; [@option]  (** address_3 *)
  address_4 : string prop option; [@option]  (** address_4 *)
  city : string prop option; [@option]  (** city *)
  country : string prop option; [@option]  (** country *)
  county : string prop option; [@option]  (** county *)
  postal_code : string prop option; [@option]  (** postal_code *)
  province : string prop option; [@option]  (** province *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__mailing_address *)

type aws_customerprofiles_profile__shipping_address = {
  address_1 : string prop option; [@option]  (** address_1 *)
  address_2 : string prop option; [@option]  (** address_2 *)
  address_3 : string prop option; [@option]  (** address_3 *)
  address_4 : string prop option; [@option]  (** address_4 *)
  city : string prop option; [@option]  (** city *)
  country : string prop option; [@option]  (** country *)
  county : string prop option; [@option]  (** county *)
  postal_code : string prop option; [@option]  (** postal_code *)
  province : string prop option; [@option]  (** province *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile__shipping_address *)

type aws_customerprofiles_profile = {
  account_number : string prop option; [@option]
      (** account_number *)
  additional_information : string prop option; [@option]
      (** additional_information *)
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  birth_date : string prop option; [@option]  (** birth_date *)
  business_email_address : string prop option; [@option]
      (** business_email_address *)
  business_name : string prop option; [@option]  (** business_name *)
  business_phone_number : string prop option; [@option]
      (** business_phone_number *)
  domain_name : string prop;  (** domain_name *)
  email_address : string prop option; [@option]  (** email_address *)
  first_name : string prop option; [@option]  (** first_name *)
  gender_string : string prop option; [@option]  (** gender_string *)
  home_phone_number : string prop option; [@option]
      (** home_phone_number *)
  id : string prop option; [@option]  (** id *)
  last_name : string prop option; [@option]  (** last_name *)
  middle_name : string prop option; [@option]  (** middle_name *)
  mobile_phone_number : string prop option; [@option]
      (** mobile_phone_number *)
  party_type_string : string prop option; [@option]
      (** party_type_string *)
  personal_email_address : string prop option; [@option]
      (** personal_email_address *)
  phone_number : string prop option; [@option]  (** phone_number *)
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
