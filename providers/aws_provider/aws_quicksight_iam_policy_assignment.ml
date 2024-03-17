(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_iam_policy_assignment__identities = {
  group: string list option; [@option] (** group *)
  user: string list option; [@option] (** user *)
} [@@deriving yojson_of]
(** aws_quicksight_iam_policy_assignment__identities *)

type aws_quicksight_iam_policy_assignment = {
  assignment_name: string;  (** assignment_name *)
  assignment_status: string;  (** assignment_status *)
  policy_arn: string option; [@option] (** policy_arn *)
  identities: aws_quicksight_iam_policy_assignment__identities list;
} [@@deriving yojson_of]
(** aws_quicksight_iam_policy_assignment *)

let aws_quicksight_iam_policy_assignment ?policy_arn  ~assignment_name ~assignment_status ~identities __resource_id =
  let __resource_type = "aws_quicksight_iam_policy_assignment" in
  let __resource = {
    assignment_name;
    assignment_status;
    policy_arn;
    identities;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_iam_policy_assignment __resource);
  ()
  ;;

