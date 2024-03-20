(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_policy_attachment *)

let aws_iam_user_policy_attachment ?id ~policy_arn ~user () :
    aws_iam_user_policy_attachment =
  { id; policy_arn; user }

type t = {
  id : string prop;
  policy_arn : string prop;
  user : string prop;
}

let make ?id ~policy_arn ~user __id =
  let __type = "aws_iam_user_policy_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy_arn = Prop.computed __type __id "policy_arn";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user_policy_attachment
        (aws_iam_user_policy_attachment ?id ~policy_arn ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_arn ~user __id =
  let (r : _ Tf_core.resource) = make ?id ~policy_arn ~user __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
