(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups = {
  description : string prop;
  group_name : string prop;
  precedence : float prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (function
   | {
       description = v_description;
       group_name = v_group_name;
       precedence = v_precedence;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_precedence in
         ("precedence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type aws_cognito_user_groups = { user_pool_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_groups) -> ()

let yojson_of_aws_cognito_user_groups =
  (function
   | { user_pool_id = v_user_pool_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_groups

[@@@deriving.end]

let aws_cognito_user_groups ~user_pool_id () :
    aws_cognito_user_groups =
  { user_pool_id }

type t = {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
  user_pool_id : string prop;
}

let make ~user_pool_id __id =
  let __type = "aws_cognito_user_groups" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
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
        (aws_cognito_user_groups ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ~user_pool_id __id =
  let (r : _ Tf_core.resource) = make ~user_pool_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
