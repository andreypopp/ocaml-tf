(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?force_destroy ?id ?path
    ?permissions_boundary ?tags ?tags_all ~name __resource_id =
  let __resource_type = "aws_iam_user" in
  let __resource =
    aws_iam_user ?force_destroy ?id ?path ?permissions_boundary ?tags
      ?tags_all ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       path = Prop.computed __resource_type __resource_id "path";
       permissions_boundary =
         Prop.computed __resource_type __resource_id
           "permissions_boundary";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       unique_id =
         Prop.computed __resource_type __resource_id "unique_id";
     }
      : t)
  in
  __resource_attributes
