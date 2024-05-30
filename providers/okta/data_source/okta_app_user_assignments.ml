(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_user_assignments = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_user_assignments) -> ()

let yojson_of_okta_app_user_assignments =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_user_assignments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_user_assignments

[@@@deriving.end]

let okta_app_user_assignments ~id () : okta_app_user_assignments =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  users : string list prop;
}

let make ~id __id =
  let __type = "okta_app_user_assignments" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_user_assignments
        (okta_app_user_assignments ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
