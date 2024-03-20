(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_group_membership = {
  group : string prop;  (** group *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  users : string prop list;  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_group_membership *)

let aws_iam_group_membership ?id ~group ~name ~users () :
    aws_iam_group_membership =
  { group; id; name; users }

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  users : string list prop;
}

let make ?id ~group ~name ~users __id =
  let __type = "aws_iam_group_membership" in
  let __attrs =
    ({
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
