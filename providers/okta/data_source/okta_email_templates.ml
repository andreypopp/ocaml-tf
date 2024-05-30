(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type email_templates = { links : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : email_templates) -> ()

let yojson_of_email_templates =
  (function
   | { links = v_links; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_links in
         ("links", arg) :: bnds
       in
       `Assoc bnds
    : email_templates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_templates

[@@@deriving.end]

type okta_email_templates = {
  brand_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_templates) -> ()

let yojson_of_okta_email_templates =
  (function
   | { brand_id = v_brand_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : okta_email_templates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_templates

[@@@deriving.end]

let okta_email_templates ?id ~brand_id () : okta_email_templates =
  { brand_id; id }

type t = {
  tf_name : string;
  brand_id : string prop;
  email_templates : email_templates list prop;
  id : string prop;
}

let make ?id ~brand_id __id =
  let __type = "okta_email_templates" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       email_templates = Prop.computed __type __id "email_templates";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_templates
        (okta_email_templates ?id ~brand_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~brand_id __id =
  let (r : _ Tf_core.resource) = make ?id ~brand_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
