(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type all_updates_rule = {
  disable_default_iam_recipients : bool prop option; [@option]
      (** Boolean. When set to true, disables default notifications sent
when a threshold is exceeded. Default recipients are
those with Billing Account Administrators and Billing
Account Users IAM roles for the target account. *)
  monitoring_notification_channels : string prop list option;
      [@option]
      (** The full resource name of a monitoring notification
channel in the form
projects/{project_id}/notificationChannels/{channel_id}.
A maximum of 5 channels are allowed. *)
  pubsub_topic : string prop option; [@option]
      (** The name of the Cloud Pub/Sub topic where budget related
messages will be published, in the form
projects/{project_id}/topics/{topic_id}. Updates are sent
at regular intervals to the topic. *)
  schema_version : string prop option; [@option]
      (** The schema version of the notification. Only 1.0 is
accepted. It represents the JSON schema as defined in
https://cloud.google.com/billing/docs/how-to/budgets#notification_format. *)
}
[@@deriving yojson_of]
(** Defines notifications that are sent on every update to the
billing account's spend, regardless of the thresholds defined
using threshold rules. *)

type amount__specified_amount = {
  currency_code : string prop option; [@option]
      (** The 3-letter currency code defined in ISO 4217. *)
  nanos : float prop option; [@option]
      (** Number of nano (10^-9) units of the amount.
The value must be between -999,999,999 and +999,999,999
inclusive. If units is positive, nanos must be positive or
zero. If units is zero, nanos can be positive, zero, or
negative. If units is negative, nanos must be negative or
zero. For example $-1.75 is represented as units=-1 and
nanos=-750,000,000. *)
  units : string prop option; [@option]
      (** The whole units of the amount. For example if currencyCode
is USD, then 1 unit is one US dollar. *)
}
[@@deriving yojson_of]
(** A specified amount to use as the budget. currencyCode is
optional. If specified, it must match the currency of the
billing account. The currencyCode is provided on output. *)

type amount = {
  last_period_amount : bool prop option; [@option]
      (** Configures a budget amount that is automatically set to 100% of
last period's spend.
Boolean. Set value to true to use. Do not set to false, instead
use the 'specified_amount' block. *)
  specified_amount : amount__specified_amount list;
}
[@@deriving yojson_of]
(** The budgeted amount for each usage period. *)

type budget_filter__custom_period__end_date = {
  day : float prop;
      (** Day of a month. Must be from 1 to 31 and valid for the year and month. *)
  month : float prop;  (** Month of a year. Must be from 1 to 12. *)
  year : float prop;  (** Year of the date. Must be from 1 to 9999. *)
}
[@@deriving yojson_of]
(** Optional. The end date of the time period. Budgets with elapsed end date won't be processed.
If unset, specifies to track all usage incurred since the startDate. *)

type budget_filter__custom_period__start_date = {
  day : float prop;
      (** Day of a month. Must be from 1 to 31 and valid for the year and month. *)
  month : float prop;  (** Month of a year. Must be from 1 to 12. *)
  year : float prop;  (** Year of the date. Must be from 1 to 9999. *)
}
[@@deriving yojson_of]
(** A start date is required. The start date must be after January 1, 2017. *)

type budget_filter__custom_period = {
  end_date : budget_filter__custom_period__end_date list;
  start_date : budget_filter__custom_period__start_date list;
}
[@@deriving yojson_of]
(** Specifies to track usage from any start date (required) to any end date (optional).
This time period is static, it does not recur.

Exactly one of 'calendar_period', 'custom_period' must be provided. *)

type budget_filter = {
  calendar_period : string prop option; [@option]
      (** A CalendarPeriod represents the abstract concept of a recurring time period that has a
canonical start. Grammatically, the start of the current CalendarPeriod.
All calendar times begin at 12 AM US and Canadian Pacific Time (UTC-8).

Exactly one of 'calendar_period', 'custom_period' must be provided. Possible values: [MONTH, QUARTER, YEAR, CALENDAR_PERIOD_UNSPECIFIED] *)
  credit_types : string prop list option; [@option]
      (** Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,
this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See a list of acceptable credit type values.
If creditTypesTreatment is not INCLUDE_SPECIFIED_CREDITS, this field must be empty.

**Note:** If the field has a value in the config and needs to be removed, the field has to be an emtpy array in the config. *)
  credit_types_treatment : string prop option; [@option]
      (** Specifies how credits should be treated when determining spend
for threshold calculations. Default value: INCLUDE_ALL_CREDITS Possible values: [INCLUDE_ALL_CREDITS, EXCLUDE_ALL_CREDITS, INCLUDE_SPECIFIED_CREDITS] *)
  labels : (string * string prop) list option; [@option]
      (** A single label and value pair specifying that usage from only
this set of labeled resources should be included in the budget. *)
  projects : string prop list option; [@option]
      (** A set of projects of the form projects/{project_number},
specifying that usage from only this set of projects should be
included in the budget. If omitted, the report will include
all usage for the billing account, regardless of which project
the usage occurred on. *)
  resource_ancestors : string prop list option; [@option]
      (** A set of folder and organization names of the form folders/{folderId} or organizations/{organizationId},
specifying that usage from only this set of folders and organizations should be included in the budget.
If omitted, the budget includes all usage that the billing account pays for. If the folder or organization
contains projects that are paid for by a different Cloud Billing account, the budget doesn't apply to those projects. *)
  services : string prop list option; [@option]
      (** A set of services of the form services/{service_id},
specifying that usage from only this set of services should be
included in the budget. If omitted, the report will include
usage for all the services. The service names are available
through the Catalog API:
https://cloud.google.com/billing/v1/how-tos/catalog-api. *)
  subaccounts : string prop list option; [@option]
      (** A set of subaccounts of the form billingAccounts/{account_id},
specifying that usage from only this set of subaccounts should
be included in the budget. If a subaccount is set to the name of
the parent account, usage from the parent account will be included.
If the field is omitted, the report will include usage from the parent
account and all subaccounts, if they exist.

**Note:** If the field has a value in the config and needs to be removed, the field has to be an emtpy array in the config. *)
  custom_period : budget_filter__custom_period list;
}
[@@deriving yojson_of]
(** Filters that define which resources are used to compute the actual
spend against the budget. *)

type threshold_rules = {
  spend_basis : string prop option; [@option]
      (** The type of basis used to determine if spend has passed
the threshold. Default value: CURRENT_SPEND Possible values: [CURRENT_SPEND, FORECASTED_SPEND] *)
  threshold_percent : float prop;
      (** Send an alert when this threshold is exceeded. This is a
1.0-based percentage, so 0.5 = 50%. Must be >= 0. *)
}
[@@deriving yojson_of]
(** Rules that trigger alerts (notifications of thresholds being
crossed) when spend exceeds the specified percentages of the
budget. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_billing_budget = {
  billing_account : string prop;
      (** ID of the billing account to set a budget on. *)
  display_name : string prop option; [@option]
      (** User data for display name in UI. Must be <= 60 chars. *)
  id : string prop option; [@option]  (** id *)
  all_updates_rule : all_updates_rule list;
  amount : amount list;
  budget_filter : budget_filter list;
  threshold_rules : threshold_rules list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_billing_budget *)

let all_updates_rule ?disable_default_iam_recipients
    ?monitoring_notification_channels ?pubsub_topic ?schema_version
    () : all_updates_rule =
  {
    disable_default_iam_recipients;
    monitoring_notification_channels;
    pubsub_topic;
    schema_version;
  }

let amount__specified_amount ?currency_code ?nanos ?units () :
    amount__specified_amount =
  { currency_code; nanos; units }

let amount ?last_period_amount ~specified_amount () : amount =
  { last_period_amount; specified_amount }

let budget_filter__custom_period__end_date ~day ~month ~year () :
    budget_filter__custom_period__end_date =
  { day; month; year }

let budget_filter__custom_period__start_date ~day ~month ~year () :
    budget_filter__custom_period__start_date =
  { day; month; year }

let budget_filter__custom_period ~end_date ~start_date () :
    budget_filter__custom_period =
  { end_date; start_date }

let budget_filter ?calendar_period ?credit_types
    ?credit_types_treatment ?labels ?projects ?resource_ancestors
    ?services ?subaccounts ~custom_period () : budget_filter =
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

let google_billing_budget ?display_name ?id ?timeouts
    ~billing_account ~all_updates_rule ~amount ~budget_filter
    ~threshold_rules () : google_billing_budget =
  {
    billing_account;
    display_name;
    id;
    all_updates_rule;
    amount;
    budget_filter;
    threshold_rules;
    timeouts;
  }

type t = {
  billing_account : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?display_name ?id ?timeouts ~billing_account
    ~all_updates_rule ~amount ~budget_filter ~threshold_rules __id =
  let __type = "google_billing_budget" in
  let __attrs =
    ({
       billing_account = Prop.computed __type __id "billing_account";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_billing_budget
        (google_billing_budget ?display_name ?id ?timeouts
           ~billing_account ~all_updates_rule ~amount ~budget_filter
           ~threshold_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts ~billing_account
    ~all_updates_rule ~amount ~budget_filter ~threshold_rules __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~billing_account
      ~all_updates_rule ~amount ~budget_filter ~threshold_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
