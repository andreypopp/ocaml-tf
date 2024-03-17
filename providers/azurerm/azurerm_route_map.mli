(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_map__rule__action__parameter
type azurerm_route_map__rule__action
type azurerm_route_map__rule__match_criterion
type azurerm_route_map__rule
type azurerm_route_map__timeouts
type azurerm_route_map

type t = private {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val azurerm_route_map :
  ?id:string prop ->
  ?timeouts:azurerm_route_map__timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  rule:azurerm_route_map__rule list ->
  string ->
  t
