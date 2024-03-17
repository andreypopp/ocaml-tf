(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user = {
  force_destroy : bool option; [@option]
      (** Delete user even if it has non-Terraform-managed IAM access keys, login profile or MFA devices *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
  permissions_boundary : string option; [@option]
      (** permissions_boundary *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
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
