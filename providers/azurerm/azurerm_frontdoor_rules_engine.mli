(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type rule__action__request_header

val rule__action__request_header :
  ?header_action_type:string prop ->
  ?header_name:string prop ->
  ?value:string prop ->
  unit ->
  rule__action__request_header

type rule__action__response_header

val rule__action__response_header :
  ?header_action_type:string prop ->
  ?header_name:string prop ->
  ?value:string prop ->
  unit ->
  rule__action__response_header

type rule__action

val rule__action :
  request_header:rule__action__request_header list ->
  response_header:rule__action__response_header list ->
  unit ->
  rule__action

type rule__match_condition

val rule__match_condition :
  ?negate_condition:bool prop ->
  ?selector:string prop ->
  ?transform:string prop list ->
  ?value:string prop list ->
  ?variable:string prop ->
  operator:string prop ->
  unit ->
  rule__match_condition

type rule

val rule :
  name:string prop ->
  priority:float prop ->
  action:rule__action list ->
  match_condition:rule__match_condition list ->
  unit ->
  rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_frontdoor_rules_engine

val azurerm_frontdoor_rules_engine :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  frontdoor_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  rule:rule list ->
  unit ->
  azurerm_frontdoor_rules_engine

val yojson_of_azurerm_frontdoor_rules_engine :
  azurerm_frontdoor_rules_engine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  frontdoor_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  frontdoor_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  rule:rule list ->
  string ->
  t
