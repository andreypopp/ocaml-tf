(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_application_firewall_policy__custom_rules__match_conditions__match_variables = {
  selector : string prop option; [@option]  (** selector *)
  variable_name : string prop;  (** variable_name *)
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__custom_rules__match_conditions__match_variables *)

type azurerm_web_application_firewall_policy__custom_rules__match_conditions = {
  match_values : string prop list option; [@option]
      (** match_values *)
  negation_condition : bool prop option; [@option]
      (** negation_condition *)
  operator : string prop;  (** operator *)
  transforms : string prop list option; [@option]  (** transforms *)
  match_variables :
    azurerm_web_application_firewall_policy__custom_rules__match_conditions__match_variables
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__custom_rules__match_conditions *)

type azurerm_web_application_firewall_policy__custom_rules = {
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
  match_conditions :
    azurerm_web_application_firewall_policy__custom_rules__match_conditions
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__custom_rules *)

type azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set__rule_group = {
  excluded_rules : string prop list option; [@option]
      (** excluded_rules *)
  rule_group_name : string prop;  (** rule_group_name *)
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set__rule_group *)

type azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  version : string prop option; [@option]  (** version *)
  rule_group :
    azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set__rule_group
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set *)

type azurerm_web_application_firewall_policy__managed_rules__exclusion = {
  match_variable : string prop;  (** match_variable *)
  selector : string prop;  (** selector *)
  selector_match_operator : string prop;
      (** selector_match_operator *)
  excluded_rule_set :
    azurerm_web_application_firewall_policy__managed_rules__exclusion__excluded_rule_set
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules__exclusion *)

type azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override__rule = {
  action : string prop option; [@option]  (** action *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override__rule *)

type azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override = {
  disabled_rules : string prop list option; [@option]
      (** disabled_rules *)
  rule_group_name : string prop;  (** rule_group_name *)
  rule :
    azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override *)

type azurerm_web_application_firewall_policy__managed_rules__managed_rule_set = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  version : string prop;  (** version *)
  rule_group_override :
    azurerm_web_application_firewall_policy__managed_rules__managed_rule_set__rule_group_override
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules__managed_rule_set *)

type azurerm_web_application_firewall_policy__managed_rules = {
  exclusion :
    azurerm_web_application_firewall_policy__managed_rules__exclusion
    list;
  managed_rule_set :
    azurerm_web_application_firewall_policy__managed_rules__managed_rule_set
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__managed_rules *)

type azurerm_web_application_firewall_policy__policy_settings__log_scrubbing__rule = {
  enabled : bool prop option; [@option]  (** enabled *)
  match_variable : string prop;  (** match_variable *)
  selector : string prop option; [@option]
      (** When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to. *)
  selector_match_operator : string prop option; [@option]
      (** selector_match_operator *)
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__policy_settings__log_scrubbing__rule *)

type azurerm_web_application_firewall_policy__policy_settings__log_scrubbing = {
  enabled : bool prop option; [@option]  (** enabled *)
  rule :
    azurerm_web_application_firewall_policy__policy_settings__log_scrubbing__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__policy_settings__log_scrubbing *)

type azurerm_web_application_firewall_policy__policy_settings = {
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
  log_scrubbing :
    azurerm_web_application_firewall_policy__policy_settings__log_scrubbing
    list;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__policy_settings *)

type azurerm_web_application_firewall_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy__timeouts *)

type azurerm_web_application_firewall_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  custom_rules :
    azurerm_web_application_firewall_policy__custom_rules list;
  managed_rules :
    azurerm_web_application_firewall_policy__managed_rules list;
  policy_settings :
    azurerm_web_application_firewall_policy__policy_settings list;
  timeouts : azurerm_web_application_firewall_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_application_firewall_policy *)

let azurerm_web_application_firewall_policy ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~custom_rules ~managed_rules
    ~policy_settings __resource_id =
  let __resource_type = "azurerm_web_application_firewall_policy" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_application_firewall_policy __resource);
  ()
