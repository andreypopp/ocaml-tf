(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_account_primary_contact = {
  account_id : string prop option; [@option]
  address_line_1 : string prop;
  address_line_2 : string prop option; [@option]
  address_line_3 : string prop option; [@option]
  city : string prop;
  company_name : string prop option; [@option]
  country_code : string prop;
  district_or_county : string prop option; [@option]
  full_name : string prop;
  id : string prop option; [@option]
  phone_number : string prop;
  postal_code : string prop;
  state_or_region : string prop option; [@option]
  website_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_account_primary_contact) -> ()

let yojson_of_aws_account_primary_contact =
  (function
   | {
       account_id = v_account_id;
       address_line_1 = v_address_line_1;
       address_line_2 = v_address_line_2;
       address_line_3 = v_address_line_3;
       city = v_city;
       company_name = v_company_name;
       country_code = v_country_code;
       district_or_county = v_district_or_county;
       full_name = v_full_name;
       id = v_id;
       phone_number = v_phone_number;
       postal_code = v_postal_code;
       state_or_region = v_state_or_region;
       website_url = v_website_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_website_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "website_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state_or_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state_or_region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_postal_code in
         ("postal_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_full_name in
         ("full_name", arg) :: bnds
       in
       let bnds =
         match v_district_or_county with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "district_or_county", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       let bnds =
         match v_company_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "company_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_city in
         ("city", arg) :: bnds
       in
       let bnds =
         match v_address_line_3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_line_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_2", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_line_1
         in
         ("address_line_1", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_account_primary_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_account_primary_contact

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
