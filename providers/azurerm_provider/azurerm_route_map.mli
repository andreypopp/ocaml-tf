(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_map__rule__action__parameter
type azurerm_route_map__rule__action
type azurerm_route_map__rule__match_criterion
type azurerm_route_map__rule
type azurerm_route_map__timeouts
type azurerm_route_map

val azurerm_route_map :
  ?timeouts:azurerm_route_map__timeouts ->
  name:string ->
  virtual_hub_id:string ->
  rule:azurerm_route_map__rule list ->
  string ->
  unit
