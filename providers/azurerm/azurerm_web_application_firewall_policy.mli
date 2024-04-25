(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_rules__match_conditions__match_variables

val custom_rules__match_conditions__match_variables :
  ?selector:string prop ->
  variable_name:string prop ->
  unit ->
  custom_rules__match_conditions__match_variables

type custom_rules__match_conditions

val custom_rules__match_conditions :
  ?match_values:string prop list ->
  ?negation_condition:bool prop ->
  ?transforms:string prop list ->
  operator:string prop ->
  match_variables:
    custom_rules__match_conditions__match_variables list ->
  unit ->
  custom_rules__match_conditions

type custom_rules

val custom_rules :
  ?enabled:bool prop ->
  ?group_rate_limit_by:string prop ->
  ?name:string prop ->
  ?rate_limit_duration:string prop ->
  ?rate_limit_threshold:float prop ->
  action:string prop ->
  priority:float prop ->
  rule_type:string prop ->
  match_conditions:custom_rules__match_conditions list ->
  unit ->
  custom_rules

type managed_rules__exclusion__excluded_rule_set__rule_group

val managed_rules__exclusion__excluded_rule_set__rule_group :
  ?excluded_rules:string prop list ->
  rule_group_name:string prop ->
  unit ->
  managed_rules__exclusion__excluded_rule_set__rule_group

type managed_rules__exclusion__excluded_rule_set

val managed_rules__exclusion__excluded_rule_set :
  ?type_:string prop ->
  ?version:string prop ->
  ?rule_group:
    managed_rules__exclusion__excluded_rule_set__rule_group list ->
  unit ->
  managed_rules__exclusion__excluded_rule_set

type managed_rules__exclusion

val managed_rules__exclusion :
  ?excluded_rule_set:managed_rules__exclusion__excluded_rule_set list ->
  match_variable:string prop ->
  selector:string prop ->
  selector_match_operator:string prop ->
  unit ->
  managed_rules__exclusion

type managed_rules__managed_rule_set__rule_group_override__rule

val managed_rules__managed_rule_set__rule_group_override__rule :
  ?action:string prop ->
  ?enabled:bool prop ->
  id:string prop ->
  unit ->
  managed_rules__managed_rule_set__rule_group_override__rule

type managed_rules__managed_rule_set__rule_group_override

val managed_rules__managed_rule_set__rule_group_override :
  ?disabled_rules:string prop list ->
  ?rule:
    managed_rules__managed_rule_set__rule_group_override__rule list ->
  rule_group_name:string prop ->
  unit ->
  managed_rules__managed_rule_set__rule_group_override

type managed_rules__managed_rule_set

val managed_rules__managed_rule_set :
  ?type_:string prop ->
  ?rule_group_override:
    managed_rules__managed_rule_set__rule_group_override list ->
  version:string prop ->
  unit ->
  managed_rules__managed_rule_set

type managed_rules

val managed_rules :
  ?exclusion:managed_rules__exclusion list ->
  managed_rule_set:managed_rules__managed_rule_set list ->
  unit ->
  managed_rules

type policy_settings__log_scrubbing__rule

val policy_settings__log_scrubbing__rule :
  ?enabled:bool prop ->
  ?selector:string prop ->
  ?selector_match_operator:string prop ->
  match_variable:string prop ->
  unit ->
  policy_settings__log_scrubbing__rule

type policy_settings__log_scrubbing

val policy_settings__log_scrubbing :
  ?enabled:bool prop ->
  ?rule:policy_settings__log_scrubbing__rule list ->
  unit ->
  policy_settings__log_scrubbing

type policy_settings

val policy_settings :
  ?enabled:bool prop ->
  ?file_upload_limit_in_mb:float prop ->
  ?max_request_body_size_in_kb:float prop ->
  ?mode:string prop ->
  ?request_body_check:bool prop ->
  ?request_body_inspect_limit_in_kb:float prop ->
  ?log_scrubbing:policy_settings__log_scrubbing list ->
  unit ->
  policy_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_web_application_firewall_policy

val azurerm_web_application_firewall_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?custom_rules:custom_rules list ->
  ?policy_settings:policy_settings list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  managed_rules:managed_rules list ->
  unit ->
  azurerm_web_application_firewall_policy

val yojson_of_azurerm_web_application_firewall_policy :
  azurerm_web_application_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  http_listener_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  path_based_rule_ids : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?custom_rules:custom_rules list ->
  ?policy_settings:policy_settings list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  managed_rules:managed_rules list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?custom_rules:custom_rules list ->
  ?policy_settings:policy_settings list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  managed_rules:managed_rules list ->
  string ->
  t Tf_core.resource
