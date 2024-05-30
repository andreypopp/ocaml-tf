(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_user_profile_mapping_source = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_profile_mapping_source) -> ()

let yojson_of_okta_user_profile_mapping_source =
  (yojson_of_unit
    : okta_user_profile_mapping_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_profile_mapping_source

[@@@deriving.end]

let okta_user_profile_mapping_source () = ()

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make __id =
  let __type = "okta_user_profile_mapping_source" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_profile_mapping_source
        (okta_user_profile_mapping_source ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
