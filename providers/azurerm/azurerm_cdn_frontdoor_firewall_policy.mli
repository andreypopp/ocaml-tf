(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_rule__match_condition

val custom_rule__match_condition :
  ?negation_condition:bool prop ->
  ?selector:string prop ->
  ?transforms:string prop list ->
  match_values:string prop list ->
  match_variable:string prop ->
  operator:string prop ->
  unit ->
  custom_rule__match_condition

type custom_rule

val custom_rule :
  ?enabled:bool prop ->
  ?priority:float prop ->
  ?rate_limit_duration_in_minutes:float prop ->
  ?rate_limit_threshold:float prop ->
  ?match_condition:custom_rule__match_condition list ->
  action:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  custom_rule

type managed_rule__exclusion

val managed_rule__exclusion :
  match_variable:string prop ->
  operator:string prop ->
  selector:string prop ->
  unit ->
  managed_rule__exclusion

type managed_rule__override__exclusion

val managed_rule__override__exclusion :
  match_variable:string prop ->
  operator:string prop ->
  selector:string prop ->
  unit ->
  managed_rule__override__exclusion

type managed_rule__override__rule__exclusion

val managed_rule__override__rule__exclusion :
  match_variable:string prop ->
  operator:string prop ->
  selector:string prop ->
  unit ->
  managed_rule__override__rule__exclusion

type managed_rule__override__rule

val managed_rule__override__rule :
  ?enabled:bool prop ->
  ?exclusion:managed_rule__override__rule__exclusion list ->
  action:string prop ->
  rule_id:string prop ->
  unit ->
  managed_rule__override__rule

type managed_rule__override

val managed_rule__override :
  ?exclusion:managed_rule__override__exclusion list ->
  ?rule:managed_rule__override__rule list ->
  rule_group_name:string prop ->
  unit ->
  managed_rule__override

type managed_rule

val managed_rule :
  ?exclusion:managed_rule__exclusion list ->
  ?override:managed_rule__override list ->
  action:string prop ->
  type_:string prop ->
  version:string prop ->
  unit ->
  managed_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_firewall_policy

val azurerm_cdn_frontdoor_firewall_policy :
  ?custom_block_response_body:string prop ->
  ?custom_block_response_status_code:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?request_body_check_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?custom_rule:custom_rule list ->
  ?managed_rule:managed_rule list ->
  ?timeouts:timeouts ->
  mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_firewall_policy

val yojson_of_azurerm_cdn_frontdoor_firewall_policy :
  azurerm_cdn_frontdoor_firewall_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_block_response_body : string prop;
  custom_block_response_status_code : float prop;
  enabled : bool prop;
  frontend_endpoint_ids : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  redirect_url : string prop;
  request_body_check_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_block_response_body:string prop ->
  ?custom_block_response_status_code:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?request_body_check_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?custom_rule:custom_rule list ->
  ?managed_rule:managed_rule list ->
  ?timeouts:timeouts ->
  mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?custom_block_response_body:string prop ->
  ?custom_block_response_status_code:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?request_body_check_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?custom_rule:custom_rule list ->
  ?managed_rule:managed_rule list ->
  ?timeouts:timeouts ->
  mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
