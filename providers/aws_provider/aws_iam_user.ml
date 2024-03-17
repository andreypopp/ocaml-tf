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
    ?tags_all ~name __resource_id =
  let __resource_type = "aws_iam_user" in
  let __resource =
    {
      force_destroy;
      id;
      name;
      path;
      permissions_boundary;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user __resource);
  ()
