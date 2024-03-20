(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_threshold = {
  action_threshold_type : string prop;  (** action_threshold_type *)
  action_threshold_value : float prop;  (** action_threshold_value *)
}
[@@deriving yojson_of]
(** action_threshold *)

type definition__iam_action_definition = {
  groups : string prop list option; [@option]  (** groups *)
  policy_arn : string prop;  (** policy_arn *)
  roles : string prop list option; [@option]  (** roles *)
  users : string prop list option; [@option]  (** users *)
}
[@@deriving yojson_of]
(** definition__iam_action_definition *)

type definition__scp_action_definition = {
  policy_id : string prop;  (** policy_id *)
  target_ids : string prop list;  (** target_ids *)
}
[@@deriving yojson_of]
(** definition__scp_action_definition *)

type definition__ssm_action_definition = {
  action_sub_type : string prop;  (** action_sub_type *)
  instance_ids : string prop list;  (** instance_ids *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** definition__ssm_action_definition *)

type definition = {
  iam_action_definition : definition__iam_action_definition list;
  scp_action_definition : definition__scp_action_definition list;
  ssm_action_definition : definition__ssm_action_definition list;
}
[@@deriving yojson_of]
(** definition *)

type subscriber = {
  address : string prop;  (** address *)
  subscription_type : string prop;  (** subscription_type *)
}
[@@deriving yojson_of]
(** subscriber *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_budgets_budget_action = {
  account_id : string prop option; [@option]  (** account_id *)
  action_type : string prop;  (** action_type *)
  approval_model : string prop;  (** approval_model *)
  budget_name : string prop;  (** budget_name *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  notification_type : string prop;  (** notification_type *)
  action_threshold : action_threshold list;
  definition : definition list;
  subscriber : subscriber list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_budgets_budget_action *)

let action_threshold ~action_threshold_type ~action_threshold_value
    () : action_threshold =
  { action_threshold_type; action_threshold_value }

let definition__iam_action_definition ?groups ?roles ?users
    ~policy_arn () : definition__iam_action_definition =
  { groups; policy_arn; roles; users }

let definition__scp_action_definition ~policy_id ~target_ids () :
    definition__scp_action_definition =
  { policy_id; target_ids }

let definition__ssm_action_definition ~action_sub_type ~instance_ids
    ~region () : definition__ssm_action_definition =
  { action_sub_type; instance_ids; region }

let definition ~iam_action_definition ~scp_action_definition
    ~ssm_action_definition () : definition =
  {
    iam_action_definition;
    scp_action_definition;
    ssm_action_definition;
  }

let subscriber ~address ~subscription_type () : subscriber =
  { address; subscription_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_budgets_budget_action ?account_id ?id ?timeouts ~action_type
    ~approval_model ~budget_name ~execution_role_arn
    ~notification_type ~action_threshold ~definition ~subscriber () :
    aws_budgets_budget_action =
  {
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

let make ?account_id ?id ?timeouts ~action_type ~approval_model
    ~budget_name ~execution_role_arn ~notification_type
    ~action_threshold ~definition ~subscriber __id =
  let __type = "aws_budgets_budget_action" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       action_id = Prop.computed __type __id "action_id";
       action_type = Prop.computed __type __id "action_type";
       approval_model = Prop.computed __type __id "approval_model";
       arn = Prop.computed __type __id "arn";
       budget_name = Prop.computed __type __id "budget_name";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_budgets_budget_action
        (aws_budgets_budget_action ?account_id ?id ?timeouts
           ~action_type ~approval_model ~budget_name
           ~execution_role_arn ~notification_type ~action_threshold
           ~definition ~subscriber ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts ~action_type
    ~approval_model ~budget_name ~execution_role_arn
    ~notification_type ~action_threshold ~definition ~subscriber __id
    =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~action_type ~approval_model
      ~budget_name ~execution_role_arn ~notification_type
      ~action_threshold ~definition ~subscriber __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
