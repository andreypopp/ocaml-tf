(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_policy = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  policy : string prop;  (** policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_policy *)

let aws_iam_policy ?description ?id ?name ?name_prefix ?path ?tags
    ?tags_all ~policy () : aws_iam_policy =
  {
    description;
    id;
    name;
    name_prefix;
    path;
    policy;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  policy : string prop;
  policy_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?name ?name_prefix ?path ?tags ?tags_all
    ~policy __id =
  let __type = "aws_iam_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       path = Prop.computed __type __id "path";
       policy = Prop.computed __type __id "policy";
       policy_id = Prop.computed __type __id "policy_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_policy
        (aws_iam_policy ?description ?id ?name ?name_prefix ?path
           ?tags ?tags_all ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?path
    ?tags ?tags_all ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?path ?tags ?tags_all
      ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
