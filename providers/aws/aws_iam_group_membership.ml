(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_group_membership = {
  group : string prop;
  id : string prop option; [@option]
  name : string prop;
  users : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_group_membership) -> ()

let yojson_of_aws_iam_group_membership =
  (function
   | { group = v_group; id = v_id; name = v_name; users = v_users }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_users
         in
         ("users", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_group_membership -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_group_membership

[@@@deriving.end]

let aws_iam_group_membership ?id ~group ~name ~users () :
    aws_iam_group_membership =
  { group; id; name; users }

type t = {
  tf_name : string;
  group : string prop;
  id : string prop;
  name : string prop;
  users : string list prop;
}

let make ?id ~group ~name ~users __id =
  let __type = "aws_iam_group_membership" in
  let __attrs =
    ({
       tf_name = __id;
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_group_membership
        (aws_iam_group_membership ?id ~group ~name ~users ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group ~name ~users __id =
  let (r : _ Tf_core.resource) = make ?id ~group ~name ~users __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
