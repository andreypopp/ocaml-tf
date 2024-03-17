(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_group_membership = {
  groups : string list;  (** groups *)
  id : string option; [@option]  (** id *)
  user : string;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_group_membership *)

let aws_iam_user_group_membership ?id ~groups ~user __resource_id =
  let __resource_type = "aws_iam_user_group_membership" in
  let __resource = { groups; id; user } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_group_membership __resource);
  ()
