(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iam_role_policy_attachment = {
  policy_arn : string;  (** policy_arn *)
  role : string;  (** role *)
}
[@@deriving yojson_of]
(** aws_iam_role_policy_attachment *)

let aws_iam_role_policy_attachment ~policy_arn ~role __resource_id =
  let __resource_type = "aws_iam_role_policy_attachment" in
  let __resource = { policy_arn; role } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_role_policy_attachment __resource);
  ()
