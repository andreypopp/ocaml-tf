(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_validation_records = {
  expiration : string prop;
  fqdn : string prop;
  record_type : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_validation_records) -> ()

let yojson_of_dns_validation_records =
  (function
   | {
       expiration = v_expiration;
       fqdn = v_fqdn;
       record_type = v_record_type;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_record_type in
         ("record_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expiration in
         ("expiration", arg) :: bnds
       in
       `Assoc bnds
    : dns_validation_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_validation_records

[@@@deriving.end]

type okta_email_domain = {
  brand_id : string prop;
  display_name : string prop;
  domain : string prop;
  id : string prop option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_domain) -> ()

let yojson_of_okta_email_domain =
  (function
   | {
       brand_id = v_brand_id;
       display_name = v_display_name;
       domain = v_domain;
       id = v_id;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_email_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_domain

[@@@deriving.end]

let okta_email_domain ?id ~brand_id ~display_name ~domain ~user_name
    () : okta_email_domain =
  { brand_id; display_name; domain; id; user_name }

type t = {
  tf_name : string;
  brand_id : string prop;
  display_name : string prop;
  dns_validation_records : dns_validation_records list prop;
  domain : string prop;
  id : string prop;
  user_name : string prop;
  validation_status : string prop;
}

let make ?id ~brand_id ~display_name ~domain ~user_name __id =
  let __type = "okta_email_domain" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       display_name = Prop.computed __type __id "display_name";
       dns_validation_records =
         Prop.computed __type __id "dns_validation_records";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       user_name = Prop.computed __type __id "user_name";
       validation_status =
         Prop.computed __type __id "validation_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_domain
        (okta_email_domain ?id ~brand_id ~display_name ~domain
           ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~brand_id ~display_name ~domain
    ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~brand_id ~display_name ~domain ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
