(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_group_policy_attachment = {
  group : string prop;  (** group *)
  id : string prop option; [@option]  (** id *)
  policy_arn : string prop;  (** policy_arn *)
}
[@@deriving yojson_of]
(** aws_iam_group_policy_attachment *)

let aws_iam_group_policy_attachment ?id ~group ~policy_arn
    __resource_id =
  let __resource_type = "aws_iam_group_policy_attachment" in
  let __resource = { group; id; policy_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_group_policy_attachment __resource);
  ()
