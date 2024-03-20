(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** aws_iam_group *)

let aws_iam_group ?id ?path ~name () : aws_iam_group =
  { id; name; path }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  unique_id : string prop;
}

let make ?id ?path ~name __id =
  let __type = "aws_iam_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_iam_group (aws_iam_group ?id ?path ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?path ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?path ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
