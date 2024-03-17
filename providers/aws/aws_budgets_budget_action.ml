(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_budgets_budget_action__action_threshold = {
  action_threshold_type : string prop;  (** action_threshold_type *)
  action_threshold_value : float prop;  (** action_threshold_value *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__action_threshold *)

type aws_budgets_budget_action__definition__iam_action_definition = {
  groups : string prop list option; [@option]  (** groups *)
  policy_arn : string prop;  (** policy_arn *)
  roles : string prop list option; [@option]  (** roles *)
  users : string prop list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__definition__iam_action_definition *)

type aws_budgets_budget_action__definition__scp_action_definition = {
  policy_id : string prop;  (** policy_id *)
  target_ids : string prop list;  (** target_ids *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__definition__scp_action_definition *)

type aws_budgets_budget_action__definition__ssm_action_definition = {
  action_sub_type : string prop;  (** action_sub_type *)
  instance_ids : string prop list;  (** instance_ids *)
  region : string prop;  (** region *)
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
  address : string prop;  (** address *)
  subscription_type : string prop;  (** subscription_type *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__subscriber *)

type aws_budgets_budget_action__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_budgets_budget_action__timeouts *)

type aws_budgets_budget_action = {
  account_id : string prop option; [@option]  (** account_id *)
  action_type : string prop;  (** action_type *)
  approval_model : string prop;  (** approval_model *)
  budget_name : string prop;  (** budget_name *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  notification_type : string prop;  (** notification_type *)
  action_threshold :
    aws_budgets_budget_action__action_threshold list;
  definition : aws_budgets_budget_action__definition list;
  subscriber : aws_budgets_budget_action__subscriber list;
  timeouts : aws_budgets_budget_action__timeouts option;
}
[@@deriving yojson_of]
(** aws_budgets_budget_action *)

type t = {
  account_id : string prop;
  action_id : string prop;
  action_type : string prop;
  approval_model : string prop;
  arn : string prop;
  budget_name : string prop;
  execution_role_arn : string prop;
  id : string prop;
  notification_type : string prop;
  status : string prop;
}

let aws_budgets_budget_action ?account_id ?id ?timeouts ~action_type
    ~approval_model ~budget_name ~execution_role_arn
    ~notification_type ~action_threshold ~definition ~subscriber
    __resource_id =
  let __resource_type = "aws_budgets_budget_action" in
  let __resource =
    ({
       account_id;
       action_type;
       approval_model;
       budget_name;
       execution_role_arn;
       id;
       notification_type;
       action_threshold;
       definition;
       subscriber;
       timeouts;
     }
      : aws_budgets_budget_action)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_budgets_budget_action __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       action_id =
         Prop.computed __resource_type __resource_id "action_id";
       action_type =
         Prop.computed __resource_type __resource_id "action_type";
       approval_model =
         Prop.computed __resource_type __resource_id "approval_model";
       arn = Prop.computed __resource_type __resource_id "arn";
       budget_name =
         Prop.computed __resource_type __resource_id "budget_name";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       notification_type =
         Prop.computed __resource_type __resource_id
           "notification_type";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
