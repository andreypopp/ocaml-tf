(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user = {
  force_destroy : bool prop option; [@option]
      (** Delete user even if it has non-Terraform-managed IAM access keys, login profile or MFA devices *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  permissions_boundary : string prop option; [@option]
      (** permissions_boundary *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_user *)

let aws_iam_user ?force_destroy ?id ?path ?permissions_boundary ?tags
    ?tags_all ~name () : aws_iam_user =
  {
    force_destroy;
    id;
    name;
    path;
    permissions_boundary;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  path : string prop;
  permissions_boundary : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

let make ?force_destroy ?id ?path ?permissions_boundary ?tags
    ?tags_all ~name __id =
  let __type = "aws_iam_user" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       permissions_boundary =
         Prop.computed __type __id "permissions_boundary";
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
      yojson_of_aws_iam_user
        (aws_iam_user ?force_destroy ?id ?path ?permissions_boundary
           ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?path
    ?permissions_boundary ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?path ?permissions_boundary ?tags
      ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
