(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_budgets_budget_action__action_threshold = {
  action_threshold_type : string;  (** action_threshold_type *)
  action_threshold_value : float;  (** action_threshold_value *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__action_threshold *)

type aws_budgets_budget_action__definition__iam_action_definition = {
  groups : string list option; [@option]  (** groups *)
  policy_arn : string;  (** policy_arn *)
  roles : string list option; [@option]  (** roles *)
  users : string list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__definition__iam_action_definition *)

type aws_budgets_budget_action__definition__scp_action_definition = {
  policy_id : string;  (** policy_id *)
  target_ids : string list;  (** target_ids *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__definition__scp_action_definition *)

type aws_budgets_budget_action__definition__ssm_action_definition = {
  action_sub_type : string;  (** action_sub_type *)
  instance_ids : string list;  (** instance_ids *)
  region : string;  (** region *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__definition__ssm_action_definition *)

type aws_budgets_budget_action__definition = {
  iam_action_definition :
    aws_budgets_budget_action__definition__iam_action_definition list;
  scp_action_definition :
    aws_budgets_budget_action__definition__scp_action_definition list;
  ssm_action_definition :
    aws_budgets_budget_action__definition__ssm_action_definition list;
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__definition *)

type aws_budgets_budget_action__subscriber = {
  address : string;  (** address *)
  subscription_type : string;  (** subscription_type *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__subscriber *)

type aws_budgets_budget_action__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__timeouts *)

type aws_budgets_budget_action = {
  action_type : string;  (** action_type *)
  approval_model : string;  (** approval_model *)
  budget_name : string;  (** budget_name *)
  execution_role_arn : string;  (** execution_role_arn *)
  notification_type : string;  (** notification_type *)
  action_threshold :
    aws_budgets_budget_action__action_threshold list;
  definition : aws_budgets_budget_action__definition list;
  subscriber : aws_budgets_budget_action__subscriber list;
  timeouts : aws_budgets_budget_action__timeouts option;
}
[@@deriving yojson_of]
(** aws_budgets_budget_action *)

let aws_budgets_budget_action ?timeouts ~action_type ~approval_model
    ~budget_name ~execution_role_arn ~notification_type
    ~action_threshold ~definition ~subscriber __resource_id =
  let __resource_type = "aws_budgets_budget_action" in
  let __resource =
    {
      action_type;
      approval_model;
      budget_name;
      execution_role_arn;
      notification_type;
      action_threshold;
      definition;
      subscriber;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_budgets_budget_action __resource);
  ()
