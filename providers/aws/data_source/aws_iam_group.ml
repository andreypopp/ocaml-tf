(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type users = {
  arn : string prop;
  path : string prop;
  user_id : string prop;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : users) -> ()

let yojson_of_users =
  (function
   | {
       arn = v_arn;
       path = v_path;
       user_id = v_user_id;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_users

[@@@deriving.end]

type aws_iam_group = {
  group_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_group) -> ()

let yojson_of_aws_iam_group =
  (function
   | { group_name = v_group_name; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_group

[@@@deriving.end]

let aws_iam_group ?id ~group_name () : aws_iam_group =
  { group_name; id }

type t = {
  tf_name : string;
  arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  path : string prop;
  users : users list prop;
}

let make ?id ~group_name __id =
  let __type = "aws_iam_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       path = Prop.computed __type __id "path";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_iam_group (aws_iam_group ?id ~group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_name __id =
  let (r : _ Tf_core.resource) = make ?id ~group_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
