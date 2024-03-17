(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_user = {
  force_destroy : bool option; [@option]
      (** Delete user even if it has non-Terraform-managed IAM access keys, login profile or MFA devices *)
  name : string;  (** name *)
  path : string option; [@option]  (** path *)
  permissions_boundary : string option; [@option]
      (** permissions_boundary *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_iam_user *)

let aws_iam_user ?force_destroy ?path ?permissions_boundary ?tags
    ~name __resource_id =
  let __resource_type = "aws_iam_user" in
  let __resource =
    { force_destroy; name; path; permissions_boundary; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user __resource);
  ()
