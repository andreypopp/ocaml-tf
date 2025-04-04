(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_user) -> ()

let yojson_of_aws_iam_user =
  (function
   | { id = v_id; tags = v_tags; user_name = v_user_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
    : aws_iam_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_user

[@@@deriving.end]

let aws_iam_user ?id ?tags ~user_name () : aws_iam_user =
  { id; tags; user_name }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  path : string prop;
  permissions_boundary : string prop;
  tags : string Tf_core.assoc prop;
  user_id : string prop;
  user_name : string prop;
}

let make ?id ?tags ~user_name __id =
  let __type = "aws_iam_user" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       path = Prop.computed __type __id "path";
       permissions_boundary =
         Prop.computed __type __id "permissions_boundary";
       tags = Prop.computed __type __id "tags";
       user_id = Prop.computed __type __id "user_id";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user (aws_iam_user ?id ?tags ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~user_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~user_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
