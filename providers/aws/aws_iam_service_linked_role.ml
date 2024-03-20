(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_service_linked_role = {
  aws_service_name : string prop;  (** aws_service_name *)
  custom_suffix : string prop option; [@option]  (** custom_suffix *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_service_linked_role *)

let aws_iam_service_linked_role ?custom_suffix ?description ?id ?tags
    ?tags_all ~aws_service_name () : aws_iam_service_linked_role =
  {
    aws_service_name;
    custom_suffix;
    description;
    id;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  aws_service_name : string prop;
  create_date : string prop;
  custom_suffix : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

let make ?custom_suffix ?description ?id ?tags ?tags_all
    ~aws_service_name __id =
  let __type = "aws_iam_service_linked_role" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_service_name =
         Prop.computed __type __id "aws_service_name";
       create_date = Prop.computed __type __id "create_date";
       custom_suffix = Prop.computed __type __id "custom_suffix";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_service_linked_role
        (aws_iam_service_linked_role ?custom_suffix ?description ?id
           ?tags ?tags_all ~aws_service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_suffix ?description ?id ?tags
    ?tags_all ~aws_service_name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_suffix ?description ?id ?tags ?tags_all
      ~aws_service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
