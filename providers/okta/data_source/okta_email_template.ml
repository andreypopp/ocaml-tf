(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_email_template = {
  brand_id : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_template) -> ()

let yojson_of_okta_email_template =
  (function
   | { brand_id = v_brand_id; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : okta_email_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_template

[@@@deriving.end]

let okta_email_template ?id ~brand_id ~name () : okta_email_template
    =
  { brand_id; id; name }

type t = {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  links : string prop;
  name : string prop;
}

let make ?id ~brand_id ~name __id =
  let __type = "okta_email_template" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       id = Prop.computed __type __id "id";
       links = Prop.computed __type __id "links";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_template
        (okta_email_template ?id ~brand_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~brand_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~brand_id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
