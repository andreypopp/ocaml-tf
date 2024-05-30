(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type email_customizations = {
  body : string prop;
  id : string prop;
  is_default : bool prop;
  language : string prop;
  links : string prop;
  subject : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : email_customizations) -> ()

let yojson_of_email_customizations =
  (function
   | {
       body = v_body;
       id = v_id;
       is_default = v_is_default;
       language = v_language;
       links = v_links;
       subject = v_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_links in
         ("links", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language in
         ("language", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_default in
         ("is_default", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : email_customizations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_customizations

[@@@deriving.end]

type okta_email_customizations = {
  brand_id : string prop;
  id : string prop option; [@option]
  template_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_customizations) -> ()

let yojson_of_okta_email_customizations =
  (function
   | {
       brand_id = v_brand_id;
       id = v_id;
       template_name = v_template_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template_name in
         ("template_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_email_customizations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_customizations

[@@@deriving.end]

let okta_email_customizations ?id ~brand_id ~template_name () :
    okta_email_customizations =
  { brand_id; id; template_name }

type t = {
  tf_name : string;
  brand_id : string prop;
  email_customizations : email_customizations list prop;
  id : string prop;
  template_name : string prop;
}

let make ?id ~brand_id ~template_name __id =
  let __type = "okta_email_customizations" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       email_customizations =
         Prop.computed __type __id "email_customizations";
       id = Prop.computed __type __id "id";
       template_name = Prop.computed __type __id "template_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_customizations
        (okta_email_customizations ?id ~brand_id ~template_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~brand_id ~template_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~brand_id ~template_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
