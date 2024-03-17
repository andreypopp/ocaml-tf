(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_login_profile = {
  id : string option; [@option]  (** id *)
  password_length : float option; [@option]  (** password_length *)
  password_reset_required : bool option; [@option]
      (** password_reset_required *)
  pgp_key : string option; [@option]  (** pgp_key *)
  user : string;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_login_profile *)

let aws_iam_user_login_profile ?id ?password_length
    ?password_reset_required ?pgp_key ~user __resource_id =
  let __resource_type = "aws_iam_user_login_profile" in
  let __resource =
    { id; password_length; password_reset_required; pgp_key; user }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_login_profile __resource);
  ()
