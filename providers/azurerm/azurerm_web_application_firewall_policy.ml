(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_rules__match_conditions__match_variables = {
  selector : string prop option; [@option]  (** selector *)
  variable_name : string prop;  (** variable_name *)
}
[@@deriving yojson_of]
(** custom_rules__match_conditions__match_variables *)

type custom_rules__match_conditions = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negation_condition : bool prop option; [@option]
      (** negation_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
  match_variables :
    custom_rules__match_conditions__match_variables list;
}
[@@deriving yojson_of]
(** custom_rules__match_conditions *)

type custom_rules = {
  action : string prop;  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  group_rate_limit_by : string prop option; [@option]
      (** group_rate_limit_by *)
  name : string prop option; [@option]  (** name *)
  priority : float prop;  (** priority *)
  rate_limit_duration : string prop option; [@option]
      (** rate_limit_duration *)
  rate_limit_threshold : float prop option; [@option]
      (** rate_limit_threshold *)
  rule_type : string prop;  (** rule_type *)
  match_conditions : custom_rules__match_conditions list;
}
[@@deriving yojson_of]
(** custom_rules *)

type managed_rules__exclusion__excluded_rule_set__rule_group = {
  excluded_rules : string prop list option; [@option]
      (** excluded_rules *)
  rule_group_name : string prop;  (** rule_group_name *)
}
[@@deriving yojson_of]
(** managed_rules__exclusion__excluded_rule_set__rule_group *)

type managed_rules__exclusion__excluded_rule_set = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  version : string prop option; [@option]  (** version *)
  rule_group :
    managed_rules__exclusion__excluded_rule_set__rule_group list;
}
[@@deriving yojson_of]
(** managed_rules__exclusion__excluded_rule_set *)

type managed_rules__exclusion = {
  match_variable : string prop;  (** match_variable *)
  selector : string prop;  (** selector *)
  selector_match_operator : string prop;
      (** selector_match_operator *)
  excluded_rule_set :
    managed_rules__exclusion__excluded_rule_set list;
}
[@@deriving yojson_of]
(** managed_rules__exclusion *)

type managed_rules__managed_rule_set__rule_group_override__rule = {
  action : string prop option; [@option]  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** managed_rules__managed_rule_set__rule_group_override__rule *)

type managed_rules__managed_rule_set__rule_group_override = {
  disabled_rules : string prop list option; [@option]
      (** disabled_rules *)
  rule_group_name : string prop;  (** rule_group_name *)
  rule :
    managed_rules__managed_rule_set__rule_group_override__rule list;
}
[@@deriving yojson_of]
(** managed_rules__managed_rule_set__rule_group_override *)

type managed_rules__managed_rule_set = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  version : string prop;  (** version *)
  rule_group_override :
    managed_rules__managed_rule_set__rule_group_override list;
}
[@@deriving yojson_of]
(** managed_rules__managed_rule_set *)

type managed_rules = {
  exclusion : managed_rules__exclusion list;
  managed_rule_set : managed_rules__managed_rule_set list;
}
[@@deriving yojson_of]
(** managed_rules *)

type policy_settings__log_scrubbing__rule = {
  enabled : bool prop option; [@option]  (** enabled *)
  match_variable : string prop;  (** match_variable *)
  selector : string prop option; [@option]
      (** When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to. *)
  selector_match_operator : string prop option; [@option]
      (** selector_match_operator *)
}
[@@deriving yojson_of]
(** policy_settings__log_scrubbing__rule *)

type policy_settings__log_scrubbing = {
  enabled : bool prop option; [@option]  (** enabled *)
  rule : policy_settings__log_scrubbing__rule list;
}
[@@deriving yojson_of]
(** policy_settings__log_scrubbing *)

type policy_settings = {
  enabled : bool prop option; [@option]  (** enabled *)
  file_upload_limit_in_mb : float prop option; [@option]
      (** file_upload_limit_in_mb *)
  max_request_body_size_in_kb : float prop option; [@option]
      (** max_request_body_size_in_kb *)
  mode : string prop option; [@option]  (** mode *)
  request_body_check : bool prop option; [@option]
      (** request_body_check *)
  request_body_inspect_limit_in_kb : float prop option; [@option]
      (** request_body_inspect_limit_in_kb *)
  log_scrubbing : policy_settings__log_scrubbing list;
}
[@@deriving yojson_of]
(** policy_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_web_application_firewall_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  custom_rules : custom_rules list;
  managed_rules : managed_rules list;
  policy_settings : policy_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy *)

let custom_rules__match_conditions__match_variables ?selector
    ~variable_name () :
    custom_rules__match_conditions__match_variables =
  { selector; variable_name }

let custom_rules__match_conditions ?match_values ?negation_condition
    ?transforms ~operator ~match_variables () :
    custom_rules__match_conditions =
  {
    match_values;
    negation_condition;
    operator;
    transforms;
    match_variables;
  }

let custom_rules ?enabled ?group_rate_limit_by ?name
    ?rate_limit_duration ?rate_limit_threshold ~action ~priority
    ~rule_type ~match_conditions () : custom_rules =
  {
    action;
    enabled;
    group_rate_limit_by;
    name;
    priority;
    rate_limit_duration;
    rate_limit_threshold;
    rule_type;
    match_conditions;
  }

let managed_rules__exclusion__excluded_rule_set__rule_group
    ?excluded_rules ~rule_group_name () :
    managed_rules__exclusion__excluded_rule_set__rule_group =
  { excluded_rules; rule_group_name }

let managed_rules__exclusion__excluded_rule_set ?type_ ?version
    ~rule_group () : managed_rules__exclusion__excluded_rule_set =
  { type_; version; rule_group }

let managed_rules__exclusion ~match_variable ~selector
    ~selector_match_operator ~excluded_rule_set () :
    managed_rules__exclusion =
  {
    match_variable;
    selector;
    selector_match_operator;
    excluded_rule_set;
  }

let managed_rules__managed_rule_set__rule_group_override__rule
    ?action ?enabled ~id () :
    managed_rules__managed_rule_set__rule_group_override__rule =
  { action; enabled; id }

let managed_rules__managed_rule_set__rule_group_override
    ?disabled_rules ~rule_group_name ~rule () :
    managed_rules__managed_rule_set__rule_group_override =
  { disabled_rules; rule_group_name; rule }

let managed_rules__managed_rule_set ?type_ ~version
    ~rule_group_override () : managed_rules__managed_rule_set =
  { type_; version; rule_group_override }

let managed_rules ~exclusion ~managed_rule_set () : managed_rules =
  { exclusion; managed_rule_set }

let policy_settings__log_scrubbing__rule ?enabled ?selector
    ?selector_match_operator ~match_variable () :
    policy_settings__log_scrubbing__rule =
  { enabled; match_variable; selector; selector_match_operator }

let policy_settings__log_scrubbing ?enabled ~rule () :
    policy_settings__log_scrubbing =
  { enabled; rule }

let policy_settings ?enabled ?file_upload_limit_in_mb
    ?max_request_body_size_in_kb ?mode ?request_body_check
    ?request_body_inspect_limit_in_kb ~log_scrubbing () :
    policy_settings =
  {
    enabled;
    file_upload_limit_in_mb;
    max_request_body_size_in_kb;
    mode;
    request_body_check;
    request_body_inspect_limit_in_kb;
    log_scrubbing;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_web_application_firewall_policy ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~custom_rules ~managed_rules
    ~policy_settings () : azurerm_web_application_firewall_policy =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    custom_rules;
    managed_rules;
    policy_settings;
    timeouts;
  }

type t = {
  http_listener_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  path_based_rule_ids : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~custom_rules ~managed_rules
    ~policy_settings __resource_id =
  let __resource_type = "azurerm_web_application_firewall_policy" in
  let __resource =
    azurerm_web_application_firewall_policy ?id ?tags ?timeouts
      ~location ~name ~resource_group_name ~custom_rules
      ~managed_rules ~policy_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_application_firewall_policy __resource);
  let __resource_attributes =
    ({
       http_listener_ids =
         Prop.computed __resource_type __resource_id
           "http_listener_ids";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       path_based_rule_ids =
         Prop.computed __resource_type __resource_id
           "path_based_rule_ids";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
