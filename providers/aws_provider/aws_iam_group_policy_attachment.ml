(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_group_policy_attachment = {
  group : string;  (** group *)
  policy_arn : string;  (** policy_arn *)
}
[@@deriving yojson_of]
(** aws_iam_group_policy_attachment *)

let aws_iam_group_policy_attachment ~group ~policy_arn __resource_id
    =
  let __resource_type = "aws_iam_group_policy_attachment" in
  let __resource = { group; policy_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_policy_attachment __resource);
  ()
