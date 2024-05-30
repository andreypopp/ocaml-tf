(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_org_configuration = {
  address_1 : string prop option; [@option]
  address_2 : string prop option; [@option]
  billing_contact_user : string prop option; [@option]
  city : string prop option; [@option]
  company_name : string prop;
  country : string prop option; [@option]
  end_user_support_help_url : string prop option; [@option]
  id : string prop option; [@option]
  logo : string prop option; [@option]
  opt_out_communication_emails : bool prop option; [@option]
  phone_number : string prop option; [@option]
  postal_code : string prop option; [@option]
  state : string prop option; [@option]
  support_phone_number : string prop option; [@option]
  technical_contact_user : string prop option; [@option]
  website : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_org_configuration) -> ()

let yojson_of_okta_org_configuration =
  (function
   | {
       address_1 = v_address_1;
       address_2 = v_address_2;
       billing_contact_user = v_billing_contact_user;
       city = v_city;
       company_name = v_company_name;
       country = v_country;
       end_user_support_help_url = v_end_user_support_help_url;
       id = v_id;
       logo = v_logo;
       opt_out_communication_emails = v_opt_out_communication_emails;
       phone_number = v_phone_number;
       postal_code = v_postal_code;
       state = v_state;
       support_phone_number = v_support_phone_number;
       technical_contact_user = v_technical_contact_user;
       website = v_website;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_website with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "website", arg in
             bnd :: bnds
       in
       let bnds =
         match v_technical_contact_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "technical_contact_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_support_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_phone_number", arg in
             bnd :: bnds
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
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
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
         match v_opt_out_communication_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "opt_out_communication_emails", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo", arg in
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
         match v_end_user_support_help_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_user_support_help_url", arg in
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
         let arg = yojson_of_prop yojson_of_string v_company_name in
         ("company_name", arg) :: bnds
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
         match v_billing_contact_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_contact_user", arg in
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
    : okta_org_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_org_configuration

[@@@deriving.end]

let okta_org_configuration ?address_1 ?address_2
    ?billing_contact_user ?city ?country ?end_user_support_help_url
    ?id ?logo ?opt_out_communication_emails ?phone_number
    ?postal_code ?state ?support_phone_number ?technical_contact_user
    ?website ~company_name () : okta_org_configuration =
  {
    address_1;
    address_2;
    billing_contact_user;
    city;
    company_name;
    country;
    end_user_support_help_url;
    id;
    logo;
    opt_out_communication_emails;
    phone_number;
    postal_code;
    state;
    support_phone_number;
    technical_contact_user;
    website;
  }

type t = {
  tf_name : string;
  address_1 : string prop;
  address_2 : string prop;
  billing_contact_user : string prop;
  city : string prop;
  company_name : string prop;
  country : string prop;
  end_user_support_help_url : string prop;
  expires_at : string prop;
  id : string prop;
  logo : string prop;
  opt_out_communication_emails : bool prop;
  phone_number : string prop;
  postal_code : string prop;
  state : string prop;
  subdomain : string prop;
  support_phone_number : string prop;
  technical_contact_user : string prop;
  website : string prop;
}

let make ?address_1 ?address_2 ?billing_contact_user ?city ?country
    ?end_user_support_help_url ?id ?logo
    ?opt_out_communication_emails ?phone_number ?postal_code ?state
    ?support_phone_number ?technical_contact_user ?website
    ~company_name __id =
  let __type = "okta_org_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       address_1 = Prop.computed __type __id "address_1";
       address_2 = Prop.computed __type __id "address_2";
       billing_contact_user =
         Prop.computed __type __id "billing_contact_user";
       city = Prop.computed __type __id "city";
       company_name = Prop.computed __type __id "company_name";
       country = Prop.computed __type __id "country";
       end_user_support_help_url =
         Prop.computed __type __id "end_user_support_help_url";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       logo = Prop.computed __type __id "logo";
       opt_out_communication_emails =
         Prop.computed __type __id "opt_out_communication_emails";
       phone_number = Prop.computed __type __id "phone_number";
       postal_code = Prop.computed __type __id "postal_code";
       state = Prop.computed __type __id "state";
       subdomain = Prop.computed __type __id "subdomain";
       support_phone_number =
         Prop.computed __type __id "support_phone_number";
       technical_contact_user =
         Prop.computed __type __id "technical_contact_user";
       website = Prop.computed __type __id "website";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_org_configuration
        (okta_org_configuration ?address_1 ?address_2
           ?billing_contact_user ?city ?country
           ?end_user_support_help_url ?id ?logo
           ?opt_out_communication_emails ?phone_number ?postal_code
           ?state ?support_phone_number ?technical_contact_user
           ?website ~company_name ());
    attrs = __attrs;
  }

let register ?tf_module ?address_1 ?address_2 ?billing_contact_user
    ?city ?country ?end_user_support_help_url ?id ?logo
    ?opt_out_communication_emails ?phone_number ?postal_code ?state
    ?support_phone_number ?technical_contact_user ?website
    ~company_name __id =
  let (r : _ Tf_core.resource) =
    make ?address_1 ?address_2 ?billing_contact_user ?city ?country
      ?end_user_support_help_url ?id ?logo
      ?opt_out_communication_emails ?phone_number ?postal_code ?state
      ?support_phone_number ?technical_contact_user ?website
      ~company_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
