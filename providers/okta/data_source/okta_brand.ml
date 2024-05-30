(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_brand = { brand_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_brand) -> ()

let yojson_of_okta_brand =
  (function
   | { brand_id = v_brand_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_brand -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_brand

[@@@deriving.end]

let okta_brand ~brand_id () : okta_brand = { brand_id }

type t = {
  tf_name : string;
  brand_id : string prop;
  custom_privacy_policy_url : string prop;
  id : string prop;
  links : string prop;
  name : string prop;
  remove_powered_by_okta : bool prop;
}

let make ~brand_id __id =
  let __type = "okta_brand" in
  let __attrs =
    ({
       tf_name = __id;
       brand_id = Prop.computed __type __id "brand_id";
       custom_privacy_policy_url =
         Prop.computed __type __id "custom_privacy_policy_url";
       id = Prop.computed __type __id "id";
       links = Prop.computed __type __id "links";
       name = Prop.computed __type __id "name";
       remove_powered_by_okta =
         Prop.computed __type __id "remove_powered_by_okta";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_brand (okta_brand ~brand_id ());
    attrs = __attrs;
  }

let register ?tf_module ~brand_id __id =
  let (r : _ Tf_core.resource) = make ~brand_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
