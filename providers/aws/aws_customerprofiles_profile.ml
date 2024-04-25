(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type address = {
  address_1 : string prop option; [@option]
  address_2 : string prop option; [@option]
  address_3 : string prop option; [@option]
  address_4 : string prop option; [@option]
  city : string prop option; [@option]
  country : string prop option; [@option]
  county : string prop option; [@option]
  postal_code : string prop option; [@option]
  province : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : address) -> ()

let yojson_of_address =
  (function
   | {
       address_1 = v_address_1;
       address_2 = v_address_2;
       address_3 = v_address_3;
       address_4 = v_address_4;
       city = v_city;
       country = v_country;
       county = v_county;
       postal_code = v_postal_code;
       province = v_province;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_province with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "province", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_county with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "county", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       let bnds =
         match v_city with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "city", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_address

[@@@deriving.end]

type billing_address = {
  address_1 : string prop option; [@option]
  address_2 : string prop option; [@option]
  address_3 : string prop option; [@option]
  address_4 : string prop option; [@option]
  city : string prop option; [@option]
  country : string prop option; [@option]
  county : string prop option; [@option]
  postal_code : string prop option; [@option]
  province : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : billing_address) -> ()

let yojson_of_billing_address =
  (function
   | {
       address_1 = v_address_1;
       address_2 = v_address_2;
       address_3 = v_address_3;
       address_4 = v_address_4;
       city = v_city;
       country = v_country;
       county = v_county;
       postal_code = v_postal_code;
       province = v_province;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_province with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "province", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_county with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "county", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       let bnds =
         match v_city with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "city", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : billing_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_billing_address

[@@@deriving.end]

type mailing_address = {
  address_1 : string prop option; [@option]
  address_2 : string prop option; [@option]
  address_3 : string prop option; [@option]
  address_4 : string prop option; [@option]
  city : string prop option; [@option]
  country : string prop option; [@option]
  county : string prop option; [@option]
  postal_code : string prop option; [@option]
  province : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mailing_address) -> ()

let yojson_of_mailing_address =
  (function
   | {
       address_1 = v_address_1;
       address_2 = v_address_2;
       address_3 = v_address_3;
       address_4 = v_address_4;
       city = v_city;
       country = v_country;
       county = v_county;
       postal_code = v_postal_code;
       province = v_province;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_province with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "province", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_county with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "county", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       let bnds =
         match v_city with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "city", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mailing_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mailing_address

[@@@deriving.end]

type shipping_address = {
  address_1 : string prop option; [@option]
  address_2 : string prop option; [@option]
  address_3 : string prop option; [@option]
  address_4 : string prop option; [@option]
  city : string prop option; [@option]
  country : string prop option; [@option]
  county : string prop option; [@option]
  postal_code : string prop option; [@option]
  province : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shipping_address) -> ()

let yojson_of_shipping_address =
  (function
   | {
       address_1 = v_address_1;
       address_2 = v_address_2;
       address_3 = v_address_3;
       address_4 = v_address_4;
       city = v_city;
       country = v_country;
       county = v_county;
       postal_code = v_postal_code;
       province = v_province;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_province with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "province", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_county with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "county", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       let bnds =
         match v_city with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "city", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : shipping_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shipping_address

[@@@deriving.end]

type aws_customerprofiles_profile = {
  account_number : string prop option; [@option]
  additional_information : string prop option; [@option]
  attributes : (string * string prop) list option; [@option]
  birth_date : string prop option; [@option]
  business_email_address : string prop option; [@option]
  business_name : string prop option; [@option]
  business_phone_number : string prop option; [@option]
  domain_name : string prop;
  email_address : string prop option; [@option]
  first_name : string prop option; [@option]
  gender_string : string prop option; [@option]
  home_phone_number : string prop option; [@option]
  id : string prop option; [@option]
  last_name : string prop option; [@option]
  middle_name : string prop option; [@option]
  mobile_phone_number : string prop option; [@option]
  party_type_string : string prop option; [@option]
  personal_email_address : string prop option; [@option]
  phone_number : string prop option; [@option]
  address : address list;
  billing_address : billing_address list;
  mailing_address : mailing_address list;
  shipping_address : shipping_address list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_customerprofiles_profile) -> ()

let yojson_of_aws_customerprofiles_profile =
  (function
   | {
       account_number = v_account_number;
       additional_information = v_additional_information;
       attributes = v_attributes;
       birth_date = v_birth_date;
       business_email_address = v_business_email_address;
       business_name = v_business_name;
       business_phone_number = v_business_phone_number;
       domain_name = v_domain_name;
       email_address = v_email_address;
       first_name = v_first_name;
       gender_string = v_gender_string;
       home_phone_number = v_home_phone_number;
       id = v_id;
       last_name = v_last_name;
       middle_name = v_middle_name;
       mobile_phone_number = v_mobile_phone_number;
       party_type_string = v_party_type_string;
       personal_email_address = v_personal_email_address;
       phone_number = v_phone_number;
       address = v_address;
       billing_address = v_billing_address;
       mailing_address = v_mailing_address;
       shipping_address = v_shipping_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_shipping_address
             v_shipping_address
         in
         ("shipping_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_mailing_address v_mailing_address
         in
         ("mailing_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_billing_address v_billing_address
         in
         ("billing_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_address v_address in
         ("address", arg) :: bnds
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_personal_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "personal_email_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_party_type_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "party_type_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mobile_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mobile_phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_middle_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "middle_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_home_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "home_phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gender_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gender_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_business_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "business_phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_business_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "business_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_business_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "business_email_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_birth_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "birth_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_information with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_information", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_number", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_customerprofiles_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_customerprofiles_profile

[@@@deriving.end]

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
    ?personal_email_address ?phone_number ?(address = [])
    ?(billing_address = []) ?(mailing_address = [])
    ?(shipping_address = []) ~domain_name () :
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
    ?phone_number ?(address = []) ?(billing_address = [])
    ?(mailing_address = []) ?(shipping_address = []) ~domain_name
    __id =
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
           ?personal_email_address ?phone_number ~address
           ~billing_address ~mailing_address ~shipping_address
           ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_number ?additional_information
    ?attributes ?birth_date ?business_email_address ?business_name
    ?business_phone_number ?email_address ?first_name ?gender_string
    ?home_phone_number ?id ?last_name ?middle_name
    ?mobile_phone_number ?party_type_string ?personal_email_address
    ?phone_number ?(address = []) ?(billing_address = [])
    ?(mailing_address = []) ?(shipping_address = []) ~domain_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_number ?additional_information ?attributes
      ?birth_date ?business_email_address ?business_name
      ?business_phone_number ?email_address ?first_name
      ?gender_string ?home_phone_number ?id ?last_name ?middle_name
      ?mobile_phone_number ?party_type_string ?personal_email_address
      ?phone_number ~address ~billing_address ~mailing_address
      ~shipping_address ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
