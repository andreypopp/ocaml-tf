(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_group_policy_attachment = {
  group : string prop;  (** group *)
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
}
[@@deriving yojson_of]
(** aws_iam_group_policy_attachment *)

let aws_iam_group_policy_attachment ?id ~group ~policy_arn () :
    aws_iam_group_policy_attachment =
  { group; id; policy_arn }

type t = {
  group : string prop;
  id : string prop;
  policy_arn : string prop;
}

let make ?id ~group ~policy_arn __id =
  let __type = "aws_iam_group_policy_attachment" in
  let __attrs =
    ({
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       policy_arn = Prop.computed __type __id "policy_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_group_policy_attachment
        (aws_iam_group_policy_attachment ?id ~group ~policy_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group ~policy_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~group ~policy_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
