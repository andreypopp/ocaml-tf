(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_email_customization = {
  brand_id : string prop;
  customization_id : string prop;
  template_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_customization) -> ()

let yojson_of_okta_email_customization =
  (function
   | {
       brand_id = v_brand_id;
       customization_id = v_customization_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_customization_id
         in
         ("customization_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_email_customization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_customization

[@@@deriving.end]

let okta_email_customization ~brand_id ~customization_id
    ~template_name () : okta_email_customization =
  { brand_id; customization_id; template_name }

type t = {
  tf_name : string;
  body : string prop;
  brand_id : string prop;
  customization_id : string prop;
  id : string prop;
  is_default : bool prop;
  language : string prop;
  links : string prop;
  subject : string prop;
  template_name : string prop;
}

let make ~brand_id ~customization_id ~template_name __id =
  let __type = "okta_email_customization" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       brand_id = Prop.computed __type __id "brand_id";
       customization_id =
         Prop.computed __type __id "customization_id";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       language = Prop.computed __type __id "language";
       links = Prop.computed __type __id "links";
       subject = Prop.computed __type __id "subject";
       template_name = Prop.computed __type __id "template_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_customization
        (okta_email_customization ~brand_id ~customization_id
           ~template_name ());
    attrs = __attrs;
  }

let register ?tf_module ~brand_id ~customization_id ~template_name
    __id =
  let (r : _ Tf_core.resource) =
    make ~brand_id ~customization_id ~template_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
