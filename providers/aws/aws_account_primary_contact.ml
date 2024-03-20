(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_account_primary_contact = {
  account_id : string prop option; [@option]  (** account_id *)
  address_line_1 : string prop;  (** address_line_1 *)
  address_line_2 : string prop option; [@option]
      (** address_line_2 *)
  address_line_3 : string prop option; [@option]
      (** address_line_3 *)
  city : string prop;  (** city *)
  company_name : string prop option; [@option]  (** company_name *)
  country_code : string prop;  (** country_code *)
  district_or_county : string prop option; [@option]
      (** district_or_county *)
  full_name : string prop;  (** full_name *)
  id : string prop option; [@option]  (** id *)
  phone_number : string prop;  (** phone_number *)
  postal_code : string prop;  (** postal_code *)
  state_or_region : string prop option; [@option]
      (** state_or_region *)
  website_url : string prop option; [@option]  (** website_url *)
}
[@@deriving yojson_of]
(** aws_account_primary_contact *)

let aws_account_primary_contact ?account_id ?address_line_2
    ?address_line_3 ?company_name ?district_or_county ?id
    ?state_or_region ?website_url ~address_line_1 ~city ~country_code
    ~full_name ~phone_number ~postal_code () :
    aws_account_primary_contact =
  {
    account_id;
    address_line_1;
    address_line_2;
    address_line_3;
    city;
    company_name;
    country_code;
    district_or_county;
    full_name;
    id;
    phone_number;
    postal_code;
    state_or_region;
    website_url;
  }

type t = {
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

let make ?account_id ?address_line_2 ?address_line_3 ?company_name
    ?district_or_county ?id ?state_or_region ?website_url
    ~address_line_1 ~city ~country_code ~full_name ~phone_number
    ~postal_code __id =
  let __type = "aws_account_primary_contact" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       address_line_1 = Prop.computed __type __id "address_line_1";
       address_line_2 = Prop.computed __type __id "address_line_2";
       address_line_3 = Prop.computed __type __id "address_line_3";
       city = Prop.computed __type __id "city";
       company_name = Prop.computed __type __id "company_name";
       country_code = Prop.computed __type __id "country_code";
       district_or_county =
         Prop.computed __type __id "district_or_county";
       full_name = Prop.computed __type __id "full_name";
       id = Prop.computed __type __id "id";
       phone_number = Prop.computed __type __id "phone_number";
       postal_code = Prop.computed __type __id "postal_code";
       state_or_region = Prop.computed __type __id "state_or_region";
       website_url = Prop.computed __type __id "website_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_account_primary_contact
        (aws_account_primary_contact ?account_id ?address_line_2
           ?address_line_3 ?company_name ?district_or_county ?id
           ?state_or_region ?website_url ~address_line_1 ~city
           ~country_code ~full_name ~phone_number ~postal_code ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?address_line_2 ?address_line_3
    ?company_name ?district_or_county ?id ?state_or_region
    ?website_url ~address_line_1 ~city ~country_code ~full_name
    ~phone_number ~postal_code __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?address_line_2 ?address_line_3 ?company_name
      ?district_or_county ?id ?state_or_region ?website_url
      ~address_line_1 ~city ~country_code ~full_name ~phone_number
      ~postal_code __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
