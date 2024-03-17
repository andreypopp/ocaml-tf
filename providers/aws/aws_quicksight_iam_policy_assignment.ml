(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_iam_policy_assignment__identities = {
  group : string prop list option; [@option]  (** group *)
  user : string prop list option; [@option]  (** user *)
}
[@@deriving yojson_of]
(** aws_quicksight_iam_policy_assignment__identities *)

type aws_quicksight_iam_policy_assignment = {
  assignment_name : string prop;  (** assignment_name *)
  assignment_status : string prop;  (** assignment_status *)
  aws_account_id : string prop option; [@option]
      (** aws_account_id *)
  namespace : string prop option; [@option]  (** namespace *)
  policy_arn : string prop option; [@option]  (** policy_arn *)
  identities : aws_quicksight_iam_policy_assignment__identities list;
}
[@@deriving yojson_of]
(** aws_quicksight_iam_policy_assignment *)

type t = {
  assignment_id : string prop;
  assignment_name : string prop;
  assignment_status : string prop;
  aws_account_id : string prop;
  id : string prop;
  namespace : string prop;
  policy_arn : string prop;
}

let aws_quicksight_iam_policy_assignment ?aws_account_id ?namespace
    ?policy_arn ~assignment_name ~assignment_status ~identities
    __resource_id =
  let __resource_type = "aws_quicksight_iam_policy_assignment" in
  let __resource =
    ({
       assignment_name;
       assignment_status;
       aws_account_id;
       namespace;
       policy_arn;
       identities;
     }
      : aws_quicksight_iam_policy_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_iam_policy_assignment __resource);
  let __resource_attributes =
    ({
       assignment_id =
         Prop.computed __resource_type __resource_id "assignment_id";
       assignment_name =
         Prop.computed __resource_type __resource_id
           "assignment_name";
       assignment_status =
         Prop.computed __resource_type __resource_id
           "assignment_status";
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       namespace =
         Prop.computed __resource_type __resource_id "namespace";
       policy_arn =
         Prop.computed __resource_type __resource_id "policy_arn";
     }
      : t)
  in
  __resource_attributes
