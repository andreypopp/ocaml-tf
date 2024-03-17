(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_account_password_policy = {
  allow_users_to_change_password : bool option; [@option]
      (** allow_users_to_change_password *)
  minimum_password_length : float option; [@option]
      (** minimum_password_length *)
}
[@@deriving yojson_of]
(** aws_iam_account_password_policy *)

let aws_iam_account_password_policy ?allow_users_to_change_password
    ?minimum_password_length __resource_id =
  let __resource_type = "aws_iam_account_password_policy" in
  let __resource =
    { allow_users_to_change_password; minimum_password_length }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_account_password_policy __resource);
  ()
