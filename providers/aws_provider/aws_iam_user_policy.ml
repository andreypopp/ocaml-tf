(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_user_policy = {
  policy : string;  (** policy *)
  user : string;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_policy *)

let aws_iam_user_policy ~policy ~user __resource_id =
  let __resource_type = "aws_iam_user_policy" in
  let __resource = { policy; user } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_policy __resource);
  ()
