(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_role_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  policy : string prop;  (** policy *)
  role : string prop;  (** role *)
}
[@@deriving yojson_of]
(** aws_iam_role_policy *)

let aws_iam_role_policy ?id ?name ?name_prefix ~policy ~role () :
    aws_iam_role_policy =
  { id; name; name_prefix; policy; role }

type t = {
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  role : string prop;
}

let make ?id ?name ?name_prefix ~policy ~role __id =
  let __type = "aws_iam_role_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       policy = Prop.computed __type __id "policy";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_role_policy
        (aws_iam_role_policy ?id ?name ?name_prefix ~policy ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ~policy ~role __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ~policy ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
