(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_group_membership = {
  groups : string prop list;  (** groups *)
  id : string prop option; [@option]  (** id *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_group_membership *)

let aws_iam_user_group_membership ?id ~groups ~user () :
    aws_iam_user_group_membership =
  { groups; id; user }

type t = {
  groups : string list prop;
  id : string prop;
  user : string prop;
}

let make ?id ~groups ~user __id =
  let __type = "aws_iam_user_group_membership" in
  let __attrs =
    ({
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
