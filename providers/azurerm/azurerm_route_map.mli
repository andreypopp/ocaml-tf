(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__action__parameter

val rule__action__parameter :
  ?as_path:string prop list ->
  ?community:string prop list ->
  ?route_prefix:string prop list ->
  unit ->
  rule__action__parameter

type rule__action

val rule__action :
  type_:string prop ->
  parameter:rule__action__parameter list ->
  unit ->
  rule__action

type rule__match_criterion

val rule__match_criterion :
  ?as_path:string prop list ->
  ?community:string prop list ->
  ?route_prefix:string prop list ->
  match_condition:string prop ->
  unit ->
  rule__match_criterion

type rule

val rule :
  ?next_step_if_matched:string prop ->
  ?action:rule__action list ->
  ?match_criterion:rule__match_criterion list ->
  name:string prop ->
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

type azurerm_route_map

val azurerm_route_map :
  ?id:string prop ->
  ?rule:rule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  unit ->
  azurerm_route_map

val yojson_of_azurerm_route_map : azurerm_route_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rule:rule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rule:rule list ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t Tf_core.resource
