(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type all_updates_rule = {
  disable_default_iam_recipients : bool prop option; [@option]
  enable_project_level_recipients : bool prop option; [@option]
  monitoring_notification_channels : string prop list option;
      [@option]
  pubsub_topic : string prop option; [@option]
  schema_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : all_updates_rule) -> ()

let yojson_of_all_updates_rule =
  (function
   | {
       disable_default_iam_recipients =
         v_disable_default_iam_recipients;
       enable_project_level_recipients =
         v_enable_project_level_recipients;
       monitoring_notification_channels =
         v_monitoring_notification_channels;
       pubsub_topic = v_pubsub_topic;
       schema_version = v_schema_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schema_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pubsub_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pubsub_topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring_notification_channels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "monitoring_notification_channels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_project_level_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_project_level_recipients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_default_iam_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_default_iam_recipients", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : all_updates_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_all_updates_rule

[@@@deriving.end]

type amount__specified_amount = {
  currency_code : string prop option; [@option]
  nanos : float prop option; [@option]
  units : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : amount__specified_amount) -> ()

let yojson_of_amount__specified_amount =
  (function
   | {
       currency_code = v_currency_code;
       nanos = v_nanos;
       units = v_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_currency_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "currency_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : amount__specified_amount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_amount__specified_amount

[@@@deriving.end]

type amount = {
  last_period_amount : bool prop option; [@option]
  specified_amount : amount__specified_amount list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : amount) -> ()

let yojson_of_amount =
  (function
   | {
       last_period_amount = v_last_period_amount;
       specified_amount = v_specified_amount;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_specified_amount then bnds
         else
           let arg =
             (yojson_of_list yojson_of_amount__specified_amount)
               v_specified_amount
           in
           let bnd = "specified_amount", arg in
           bnd :: bnds
       in
       let bnds =
         match v_last_period_amount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "last_period_amount", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : amount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_amount

[@@@deriving.end]

type budget_filter__custom_period__end_date = {
  day : float prop;
  month : float prop;
  year : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : budget_filter__custom_period__end_date) -> ()

let yojson_of_budget_filter__custom_period__end_date =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_year in
         ("year", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_month in
         ("month", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : budget_filter__custom_period__end_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_budget_filter__custom_period__end_date

[@@@deriving.end]

type budget_filter__custom_period__start_date = {
  day : float prop;
  month : float prop;
  year : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : budget_filter__custom_period__start_date) -> ()

let yojson_of_budget_filter__custom_period__start_date =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_year in
         ("year", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_month in
         ("month", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : budget_filter__custom_period__start_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_budget_filter__custom_period__start_date

[@@@deriving.end]

type budget_filter__custom_period = {
  end_date : budget_filter__custom_period__end_date list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  start_date : budget_filter__custom_period__start_date list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : budget_filter__custom_period) -> ()

let yojson_of_budget_filter__custom_period =
  (function
   | { end_date = v_end_date; start_date = v_start_date } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_start_date then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_budget_filter__custom_period__start_date)
               v_start_date
           in
           let bnd = "start_date", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_end_date then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_budget_filter__custom_period__end_date)
               v_end_date
           in
           let bnd = "end_date", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : budget_filter__custom_period ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_budget_filter__custom_period

[@@@deriving.end]

type budget_filter = {
  calendar_period : string prop option; [@option]
  credit_types : string prop list option; [@option]
  credit_types_treatment : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  projects : string prop list option; [@option]
  resource_ancestors : string prop list option; [@option]
  services : string prop list option; [@option]
  subaccounts : string prop list option; [@option]
  custom_period : budget_filter__custom_period list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : budget_filter) -> ()

let yojson_of_budget_filter =
  (function
   | {
       calendar_period = v_calendar_period;
       credit_types = v_credit_types;
       credit_types_treatment = v_credit_types_treatment;
       labels = v_labels;
       projects = v_projects;
       resource_ancestors = v_resource_ancestors;
       services = v_services;
       subaccounts = v_subaccounts;
       custom_period = v_custom_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_period then bnds
         else
           let arg =
             (yojson_of_list yojson_of_budget_filter__custom_period)
               v_custom_period
           in
           let bnd = "custom_period", arg in
           bnd :: bnds
       in
       let bnds =
         match v_subaccounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subaccounts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "services", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_ancestors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_ancestors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_projects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "projects", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credit_types_treatment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credit_types_treatment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credit_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "credit_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_calendar_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "calendar_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : budget_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_budget_filter

[@@@deriving.end]

type threshold_rules = {
  spend_basis : string prop option; [@option]
  threshold_percent : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threshold_rules) -> ()

let yojson_of_threshold_rules =
  (function
   | {
       spend_basis = v_spend_basis;
       threshold_percent = v_threshold_percent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_threshold_percent
         in
         ("threshold_percent", arg) :: bnds
       in
       let bnds =
         match v_spend_basis with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spend_basis", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : threshold_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threshold_rules

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

type google_billing_budget = {
  billing_account : string prop;
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  ownership_scope : string prop option; [@option]
  all_updates_rule : all_updates_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  amount : amount list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  budget_filter : budget_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  threshold_rules : threshold_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_billing_budget) -> ()

let yojson_of_google_billing_budget =
  (function
   | {
       billing_account = v_billing_account;
       display_name = v_display_name;
       id = v_id;
       ownership_scope = v_ownership_scope;
       all_updates_rule = v_all_updates_rule;
       amount = v_amount;
       budget_filter = v_budget_filter;
       threshold_rules = v_threshold_rules;
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
         if Stdlib.( = ) [] v_threshold_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_threshold_rules)
               v_threshold_rules
           in
           let bnd = "threshold_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_budget_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_budget_filter) v_budget_filter
           in
           let bnd = "budget_filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_amount then bnds
         else
           let arg = (yojson_of_list yojson_of_amount) v_amount in
           let bnd = "amount", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_all_updates_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_all_updates_rule)
               v_all_updates_rule
           in
           let bnd = "all_updates_rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ownership_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ownership_scope", arg in
             bnd :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_billing_account
         in
         ("billing_account", arg) :: bnds
       in
       `Assoc bnds
    : google_billing_budget -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_billing_budget

[@@@deriving.end]

let all_updates_rule ?disable_default_iam_recipients
    ?enable_project_level_recipients
    ?monitoring_notification_channels ?pubsub_topic ?schema_version
    () : all_updates_rule =
  {
    disable_default_iam_recipients;
    enable_project_level_recipients;
    monitoring_notification_channels;
    pubsub_topic;
    schema_version;
  }

let amount__specified_amount ?currency_code ?nanos ?units () :
    amount__specified_amount =
  { currency_code; nanos; units }

let amount ?last_period_amount ?(specified_amount = []) () : amount =
  { last_period_amount; specified_amount }

let budget_filter__custom_period__end_date ~day ~month ~year () :
    budget_filter__custom_period__end_date =
  { day; month; year }

let budget_filter__custom_period__start_date ~day ~month ~year () :
    budget_filter__custom_period__start_date =
  { day; month; year }

let budget_filter__custom_period ?(end_date = []) ~start_date () :
    budget_filter__custom_period =
  { end_date; start_date }

let budget_filter ?calendar_period ?credit_types
    ?credit_types_treatment ?labels ?projects ?resource_ancestors
    ?services ?subaccounts ?(custom_period = []) () : budget_filter =
  {
    calendar_period;
    credit_types;
    credit_types_treatment;
    labels;
    projects;
    resource_ancestors;
    services;
    subaccounts;
    custom_period;
  }

let threshold_rules ?spend_basis ~threshold_percent () :
    threshold_rules =
  { spend_basis; threshold_percent }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_billing_budget ?display_name ?id ?ownership_scope
    ?(all_updates_rule = []) ?(budget_filter = [])
    ?(threshold_rules = []) ?timeouts ~billing_account ~amount () :
    google_billing_budget =
  {
    billing_account;
    display_name;
    id;
    ownership_scope;
    all_updates_rule;
    amount;
    budget_filter;
    threshold_rules;
    timeouts;
  }

type t = {
  tf_name : string;
  billing_account : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  ownership_scope : string prop;
}

let make ?display_name ?id ?ownership_scope ?(all_updates_rule = [])
    ?(budget_filter = []) ?(threshold_rules = []) ?timeouts
    ~billing_account ~amount __id =
  let __type = "google_billing_budget" in
  let __attrs =
    ({
       tf_name = __id;
       billing_account = Prop.computed __type __id "billing_account";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       ownership_scope = Prop.computed __type __id "ownership_scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_billing_budget
        (google_billing_budget ?display_name ?id ?ownership_scope
           ~all_updates_rule ~budget_filter ~threshold_rules
           ?timeouts ~billing_account ~amount ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?ownership_scope
    ?(all_updates_rule = []) ?(budget_filter = [])
    ?(threshold_rules = []) ?timeouts ~billing_account ~amount __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?ownership_scope ~all_updates_rule
      ~budget_filter ~threshold_rules ?timeouts ~billing_account
      ~amount __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
