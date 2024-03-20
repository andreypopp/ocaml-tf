(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups = unit [@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (yojson_of_unit : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type aws_cognito_user_groups = {
  user_pool_id : string prop;
  groups : groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_groups) -> ()

let yojson_of_aws_cognito_user_groups =
  (function
   | { user_pool_id = v_user_pool_id; groups = v_groups } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_groups v_groups in
         ("groups", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_groups

[@@@deriving.end]

let groups () = ()

let aws_cognito_user_groups ~user_pool_id ~groups () :
    aws_cognito_user_groups =
  { user_pool_id; groups }

type t = { id : string prop; user_pool_id : string prop }

let make ~user_pool_id ~groups __id =
  let __type = "aws_cognito_user_groups" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_groups
        (aws_cognito_user_groups ~user_pool_id ~groups ());
    attrs = __attrs;
  }

let register ?tf_module ~user_pool_id ~groups __id =
  let (r : _ Tf_core.resource) = make ~user_pool_id ~groups __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
