(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_contact = {
  address1 : string prop;
  address2 : string prop option; [@option]
  city : string prop;
  country : string prop;
  email : string prop;
  fax : string prop option; [@option]
  first_name : string prop;
  job_title : string prop option; [@option]
  label : string prop option; [@option]
  last_name : string prop;
  organization_name : string prop option; [@option]
  phone : string prop;
  postal_code : string prop;
  state_province : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_contact) -> ()

let yojson_of_dnsimple_contact =
  (function
   | {
       address1 = v_address1;
       address2 = v_address2;
       city = v_city;
       country = v_country;
       email = v_email;
       fax = v_fax;
       first_name = v_first_name;
       job_title = v_job_title;
       label = v_label;
       last_name = v_last_name;
       organization_name = v_organization_name;
       phone = v_phone;
       postal_code = v_postal_code;
       state_province = v_state_province;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_state_province
         in
         ("state_province", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_postal_code in
         ("postal_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone in
         ("phone", arg) :: bnds
       in
       let bnds =
         match v_organization_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_title", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         match v_fax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country in
         ("country", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_city in
         ("city", arg) :: bnds
       in
       let bnds =
         match v_address2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address2", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address1 in
         ("address1", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_contact

[@@@deriving.end]

let dnsimple_contact ?address2 ?fax ?job_title ?label
    ?organization_name ~address1 ~city ~country ~email ~first_name
    ~last_name ~phone ~postal_code ~state_province () :
    dnsimple_contact =
  {
    address1;
    address2;
    city;
    country;
    email;
    fax;
    first_name;
    job_title;
    label;
    last_name;
    organization_name;
    phone;
    postal_code;
    state_province;
  }

type t = {
  tf_name : string;
  account_id : float prop;
  address1 : string prop;
  address2 : string prop;
  city : string prop;
  country : string prop;
  created_at : string prop;
  email : string prop;
  fax : string prop;
  fax_normalized : string prop;
  first_name : string prop;
  id : float prop;
  job_title : string prop;
  label : string prop;
  last_name : string prop;
  organization_name : string prop;
  phone : string prop;
  phone_normalized : string prop;
  postal_code : string prop;
  state_province : string prop;
  updated_at : string prop;
}

let make ?address2 ?fax ?job_title ?label ?organization_name
    ~address1 ~city ~country ~email ~first_name ~last_name ~phone
    ~postal_code ~state_province __id =
  let __type = "dnsimple_contact" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       address1 = Prop.computed __type __id "address1";
       address2 = Prop.computed __type __id "address2";
       city = Prop.computed __type __id "city";
       country = Prop.computed __type __id "country";
       created_at = Prop.computed __type __id "created_at";
       email = Prop.computed __type __id "email";
       fax = Prop.computed __type __id "fax";
       fax_normalized = Prop.computed __type __id "fax_normalized";
       first_name = Prop.computed __type __id "first_name";
       id = Prop.computed __type __id "id";
       job_title = Prop.computed __type __id "job_title";
       label = Prop.computed __type __id "label";
       last_name = Prop.computed __type __id "last_name";
       organization_name =
         Prop.computed __type __id "organization_name";
       phone = Prop.computed __type __id "phone";
       phone_normalized =
         Prop.computed __type __id "phone_normalized";
       postal_code = Prop.computed __type __id "postal_code";
       state_province = Prop.computed __type __id "state_province";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_contact
        (dnsimple_contact ?address2 ?fax ?job_title ?label
           ?organization_name ~address1 ~city ~country ~email
           ~first_name ~last_name ~phone ~postal_code ~state_province
           ());
    attrs = __attrs;
  }

let register ?tf_module ?address2 ?fax ?job_title ?label
    ?organization_name ~address1 ~city ~country ~email ~first_name
    ~last_name ~phone ~postal_code ~state_province __id =
  let (r : _ Tf_core.resource) =
    make ?address2 ?fax ?job_title ?label ?organization_name
      ~address1 ~city ~country ~email ~first_name ~last_name ~phone
      ~postal_code ~state_province __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
