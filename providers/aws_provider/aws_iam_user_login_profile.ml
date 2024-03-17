(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_user_login_profile = {
  password_length : float option; [@option]  (** password_length *)
  pgp_key : string option; [@option]  (** pgp_key *)
  user : string;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_login_profile *)

let aws_iam_user_login_profile ?password_length ?pgp_key ~user
    __resource_id =
  let __resource_type = "aws_iam_user_login_profile" in
  let __resource = { password_length; pgp_key; user } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_login_profile __resource);
  ()
