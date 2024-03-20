(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_in_group = {
  group_name : string prop;
  id : string prop option; [@option]
  user_pool_id : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_in_group) -> ()

let yojson_of_aws_cognito_user_in_group =
  (function
   | {
       group_name = v_group_name;
       id = v_id;
       user_pool_id = v_user_pool_id;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_in_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_in_group

[@@@deriving.end]

let aws_cognito_user_in_group ?id ~group_name ~user_pool_id ~username
    () : aws_cognito_user_in_group =
  { group_name; id; user_pool_id; username }

type t = {
  group_name : string prop;
  id : string prop;
  user_pool_id : string prop;
  username : string prop;
}

let make ?id ~group_name ~user_pool_id ~username __id =
  let __type = "aws_cognito_user_in_group" in
  let __attrs =
    ({
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_in_group
        (aws_cognito_user_in_group ?id ~group_name ~user_pool_id
           ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_name ~user_pool_id ~username __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~group_name ~user_pool_id ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
