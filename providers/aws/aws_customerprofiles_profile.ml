(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type address = {
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
(** address *)

type billing_address = {
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
(** billing_address *)

type mailing_address = {
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
(** mailing_address *)

type shipping_address = {
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
(** shipping_address *)

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
  address : address list;
  billing_address : billing_address list;
  mailing_address : mailing_address list;
  shipping_address : shipping_address list;
}
[@@deriving yojson_of]
(** aws_customerprofiles_profile *)

let address ?address_1 ?address_2 ?address_3 ?address_4 ?city
    ?country ?county ?postal_code ?province ?state () : address =
  {
    address_1;
    address_2;
    address_3;
    address_4;
    city;
    country;
    county;
    postal_code;
    province;
    state;
  }

let billing_address ?address_1 ?address_2 ?address_3 ?address_4 ?city
    ?country ?county ?postal_code ?province ?state () :
    billing_address =
  {
    address_1;
    address_2;
    address_3;
    address_4;
    city;
    country;
    county;
    postal_code;
    province;
    state;
  }

let mailing_address ?address_1 ?address_2 ?address_3 ?address_4 ?city
    ?country ?county ?postal_code ?province ?state () :
    mailing_address =
  {
    address_1;
    address_2;
    address_3;
    address_4;
    city;
    country;
    county;
    postal_code;
    province;
    state;
  }

let shipping_address ?address_1 ?address_2 ?address_3 ?address_4
    ?city ?country ?county ?postal_code ?province ?state () :
    shipping_address =
  {
    address_1;
    address_2;
    address_3;
    address_4;
    city;
    country;
    county;
    postal_code;
    province;
    state;
  }

let aws_customerprofiles_profile ?account_number
    ?additional_information ?attributes ?birth_date
    ?business_email_address ?business_name ?business_phone_number
    ?email_address ?first_name ?gender_string ?home_phone_number ?id
    ?last_name ?middle_name ?mobile_phone_number ?party_type_string
    ?personal_email_address ?phone_number ~domain_name ~address
    ~billing_address ~mailing_address ~shipping_address () :
    aws_customerprofiles_profile =
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

type t = {
  account_number : string prop;
  additional_information : string prop;
  attributes : (string * string) list prop;
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

let make ?account_number ?additional_information ?attributes
    ?birth_date ?business_email_address ?business_name
    ?business_phone_number ?email_address ?first_name ?gender_string
    ?home_phone_number ?id ?last_name ?middle_name
    ?mobile_phone_number ?party_type_string ?personal_email_address
    ?phone_number ~domain_name ~address ~billing_address
    ~mailing_address ~shipping_address __id =
  let __type = "aws_customerprofiles_profile" in
  let __attrs =
    ({
       account_number = Prop.computed __type __id "account_number";
       additional_information =
         Prop.computed __type __id "additional_information";
       attributes = Prop.computed __type __id "attributes";
       birth_date = Prop.computed __type __id "birth_date";
       business_email_address =
         Prop.computed __type __id "business_email_address";
       business_name = Prop.computed __type __id "business_name";
       business_phone_number =
         Prop.computed __type __id "business_phone_number";
       domain_name = Prop.computed __type __id "domain_name";
       email_address = Prop.computed __type __id "email_address";
       first_name = Prop.computed __type __id "first_name";
       gender_string = Prop.computed __type __id "gender_string";
       home_phone_number =
         Prop.computed __type __id "home_phone_number";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       middle_name = Prop.computed __type __id "middle_name";
       mobile_phone_number =
         Prop.computed __type __id "mobile_phone_number";
       party_type_string =
         Prop.computed __type __id "party_type_string";
       personal_email_address =
         Prop.computed __type __id "personal_email_address";
       phone_number = Prop.computed __type __id "phone_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_customerprofiles_profile
        (aws_customerprofiles_profile ?account_number
           ?additional_information ?attributes ?birth_date
           ?business_email_address ?business_name
           ?business_phone_number ?email_address ?first_name
           ?gender_string ?home_phone_number ?id ?last_name
           ?middle_name ?mobile_phone_number ?party_type_string
           ?personal_email_address ?phone_number ~domain_name
           ~address ~billing_address ~mailing_address
           ~shipping_address ());
    attrs = __attrs;
  }

let register ?tf_module ?account_number ?additional_information
    ?attributes ?birth_date ?business_email_address ?business_name
    ?business_phone_number ?email_address ?first_name ?gender_string
    ?home_phone_number ?id ?last_name ?middle_name
    ?mobile_phone_number ?party_type_string ?personal_email_address
    ?phone_number ~domain_name ~address ~billing_address
    ~mailing_address ~shipping_address __id =
  let (r : _ Tf_core.resource) =
    make ?account_number ?additional_information ?attributes
      ?birth_date ?business_email_address ?business_name
      ?business_phone_number ?email_address ?first_name
      ?gender_string ?home_phone_number ?id ?last_name ?middle_name
      ?mobile_phone_number ?party_type_string ?personal_email_address
      ?phone_number ~domain_name ~address ~billing_address
      ~mailing_address ~shipping_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
