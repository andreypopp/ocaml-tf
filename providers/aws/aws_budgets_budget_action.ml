(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_threshold = {
  action_threshold_type : string prop;
  action_threshold_value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_threshold) -> ()

let yojson_of_action_threshold =
  (function
   | {
       action_threshold_type = v_action_threshold_type;
       action_threshold_value = v_action_threshold_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_action_threshold_value
         in
         ("action_threshold_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_threshold_type
         in
         ("action_threshold_type", arg) :: bnds
       in
       `Assoc bnds
    : action_threshold -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_threshold

[@@@deriving.end]

type definition__iam_action_definition = {
  groups : string prop list option; [@option]
  policy_arn : string prop;
  roles : string prop list option; [@option]
  users : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__iam_action_definition) -> ()

let yojson_of_definition__iam_action_definition =
  (function
   | {
       groups = v_groups;
       policy_arn = v_policy_arn;
       roles = v_roles;
       users = v_users;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "roles", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_arn in
         ("policy_arn", arg) :: bnds
       in
       let bnds =
         match v_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : definition__iam_action_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__iam_action_definition

[@@@deriving.end]

type definition__scp_action_definition = {
  policy_id : string prop;
  target_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__scp_action_definition) -> ()

let yojson_of_definition__scp_action_definition =
  (function
   | { policy_id = v_policy_id; target_ids = v_target_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_target_ids
           in
           let bnd = "target_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
       in
       `Assoc bnds
    : definition__scp_action_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__scp_action_definition

[@@@deriving.end]

type definition__ssm_action_definition = {
  action_sub_type : string prop;
  instance_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition__ssm_action_definition) -> ()

let yojson_of_definition__ssm_action_definition =
  (function
   | {
       action_sub_type = v_action_sub_type;
       instance_ids = v_instance_ids;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_instance_ids
           in
           let bnd = "instance_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_sub_type
         in
         ("action_sub_type", arg) :: bnds
       in
       `Assoc bnds
    : definition__ssm_action_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition__ssm_action_definition

[@@@deriving.end]

type definition = {
  iam_action_definition : definition__iam_action_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scp_action_definition : definition__scp_action_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssm_action_definition : definition__ssm_action_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : definition) -> ()

let yojson_of_definition =
  (function
   | {
       iam_action_definition = v_iam_action_definition;
       scp_action_definition = v_scp_action_definition;
       ssm_action_definition = v_ssm_action_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssm_action_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_definition__ssm_action_definition)
               v_ssm_action_definition
           in
           let bnd = "ssm_action_definition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scp_action_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_definition__scp_action_definition)
               v_scp_action_definition
           in
           let bnd = "scp_action_definition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iam_action_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_definition__iam_action_definition)
               v_iam_action_definition
           in
           let bnd = "iam_action_definition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_definition

[@@@deriving.end]

type subscriber = {
  address : string prop;
  subscription_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subscriber) -> ()

let yojson_of_subscriber =
  (function
   | { address = v_address; subscription_type = v_subscription_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_type
         in
         ("subscription_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : subscriber -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subscriber

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_budgets_budget_action = {
  account_id : string prop option; [@option]
  action_type : string prop;
  approval_model : string prop;
  budget_name : string prop;
  execution_role_arn : string prop;
  id : string prop option; [@option]
  notification_type : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  action_threshold : action_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  definition : definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subscriber : subscriber list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_budgets_budget_action) -> ()

let yojson_of_aws_budgets_budget_action =
  (function
   | {
       account_id = v_account_id;
       action_type = v_action_type;
       approval_model = v_approval_model;
       budget_name = v_budget_name;
       execution_role_arn = v_execution_role_arn;
       id = v_id;
       notification_type = v_notification_type;
       tags = v_tags;
       tags_all = v_tags_all;
       action_threshold = v_action_threshold;
       definition = v_definition;
       subscriber = v_subscriber;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subscriber then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subscriber) v_subscriber
           in
           let bnd = "subscriber", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_definition) v_definition
           in
           let bnd = "definition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action_threshold then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action_threshold)
               v_action_threshold
           in
           let bnd = "action_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_type
         in
         ("notification_type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_budget_name in
         ("budget_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_approval_model
         in
         ("approval_model", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_type in
         ("action_type", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_budgets_budget_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_budgets_budget_action

[@@@deriving.end]

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

let definition ?(iam_action_definition = [])
    ?(scp_action_definition = []) ?(ssm_action_definition = []) () :
    definition =
  {
    iam_action_definition;
    scp_action_definition;
    ssm_action_definition;
  }

let subscriber ~address ~subscription_type () : subscriber =
  { address; subscription_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_budgets_budget_action ?account_id ?id ?tags ?tags_all
    ?timeouts ~action_type ~approval_model ~budget_name
    ~execution_role_arn ~notification_type ~action_threshold
    ~definition ~subscriber () : aws_budgets_budget_action =
  {
    account_id;
    action_type;
    approval_model;
    budget_name;
    execution_role_arn;
    id;
    notification_type;
    tags;
    tags_all;
    action_threshold;
    definition;
    subscriber;
    timeouts;
  }

type t = {
  tf_name : string;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?id ?tags ?tags_all ?timeouts ~action_type
    ~approval_model ~budget_name ~execution_role_arn
    ~notification_type ~action_threshold ~definition ~subscriber __id
    =
  let __type = "aws_budgets_budget_action" in
  let __attrs =
    ({
       tf_name = __id;
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
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_budgets_budget_action
        (aws_budgets_budget_action ?account_id ?id ?tags ?tags_all
           ?timeouts ~action_type ~approval_model ~budget_name
           ~execution_role_arn ~notification_type ~action_threshold
           ~definition ~subscriber ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?tags ?tags_all ?timeouts
    ~action_type ~approval_model ~budget_name ~execution_role_arn
    ~notification_type ~action_threshold ~definition ~subscriber __id
    =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?tags ?tags_all ?timeouts ~action_type
      ~approval_model ~budget_name ~execution_role_arn
      ~notification_type ~action_threshold ~definition ~subscriber
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
