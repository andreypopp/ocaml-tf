(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_policy_attachment = {
  groups : string prop list option; [@option]  (** groups *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_arn : string prop;  (** policy_arn *)
  roles : string prop list option; [@option]  (** roles *)
  users : string prop list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** aws_iam_policy_attachment *)

let aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
    ~policy_arn () : aws_iam_policy_attachment =
  { groups; id; name; policy_arn; roles; users }

type t = {
  groups : string list prop;
  id : string prop;
  name : string prop;
  policy_arn : string prop;
  roles : string list prop;
  users : string list prop;
}

let make ?groups ?id ?roles ?users ~name ~policy_arn __id =
  let __type = "aws_iam_policy_attachment" in
  let __attrs =
    ({
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_arn = Prop.computed __type __id "policy_arn";
       roles = Prop.computed __type __id "roles";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_policy_attachment
        (aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
           ~policy_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?groups ?id ?roles ?users ~name ~policy_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?groups ?id ?roles ?users ~name ~policy_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
