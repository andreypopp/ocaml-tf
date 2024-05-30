(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type brands = {
  custom_privacy_policy_url : string prop;
  id : string prop;
  links : string prop;
  name : string prop;
  remove_powered_by_okta : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : brands) -> ()

let yojson_of_brands =
  (function
   | {
       custom_privacy_policy_url = v_custom_privacy_policy_url;
       id = v_id;
       links = v_links;
       name = v_name;
       remove_powered_by_okta = v_remove_powered_by_okta;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_remove_powered_by_okta
         in
         ("remove_powered_by_okta", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_links in
         ("links", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_privacy_policy_url
         in
         ("custom_privacy_policy_url", arg) :: bnds
       in
       `Assoc bnds
    : brands -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_brands

[@@@deriving.end]

type okta_brands = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_brands) -> ()

let yojson_of_okta_brands =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : okta_brands -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_brands

[@@@deriving.end]

let okta_brands ?id () : okta_brands = { id }

type t = {
  tf_name : string;
  brands : brands list prop;
  id : string prop;
}

let make ?id __id =
  let __type = "okta_brands" in
  let __attrs =
    ({
       tf_name = __id;
       brands = Prop.computed __type __id "brands";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_brands (okta_brands ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
