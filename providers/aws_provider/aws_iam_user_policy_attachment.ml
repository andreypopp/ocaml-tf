(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_user_policy_attachment *)

let aws_iam_user_policy_attachment ?id ~policy_arn ~user
    __resource_id =
  let __resource_type = "aws_iam_user_policy_attachment" in
  let __resource = { id; policy_arn; user } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_policy_attachment __resource);
  ()
