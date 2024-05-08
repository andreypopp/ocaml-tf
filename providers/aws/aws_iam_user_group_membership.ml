(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_group_membership = {
  groups : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_user_group_membership) -> ()

let yojson_of_aws_iam_user_group_membership =
  (function
   | { groups = v_groups; id = v_id; user = v_user } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
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
         if [] = v_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_groups
           in
           let bnd = "groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_user_group_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_user_group_membership

[@@@deriving.end]

let aws_iam_user_group_membership ?id ~groups ~user () :
    aws_iam_user_group_membership =
  { groups; id; user }

type t = {
  tf_name : string;
  groups : string list prop;
  id : string prop;
  user : string prop;
}

let make ?id ~groups ~user __id =
  let __type = "aws_iam_user_group_membership" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user_group_membership
        (aws_iam_user_group_membership ?id ~groups ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~groups ~user __id =
  let (r : _ Tf_core.resource) = make ?id ~groups ~user __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
