(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_access_policy_assignment = {
  app_id : string prop;
  policy_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_access_policy_assignment) -> ()

let yojson_of_okta_app_access_policy_assignment =
  (function
   | { app_id = v_app_id; policy_id = v_policy_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_access_policy_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_access_policy_assignment

[@@@deriving.end]

let okta_app_access_policy_assignment ~app_id ~policy_id () :
    okta_app_access_policy_assignment =
  { app_id; policy_id }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  policy_id : string prop;
}

let make ~app_id ~policy_id __id =
  let __type = "okta_app_access_policy_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_access_policy_assignment
        (okta_app_access_policy_assignment ~app_id ~policy_id ());
    attrs = __attrs;
  }

let register ?tf_module ~app_id ~policy_id __id =
  let (r : _ Tf_core.resource) = make ~app_id ~policy_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
