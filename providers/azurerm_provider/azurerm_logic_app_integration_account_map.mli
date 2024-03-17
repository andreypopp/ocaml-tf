(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_map__timeouts
type azurerm_logic_app_integration_account_map

val azurerm_logic_app_integration_account_map :
  ?id:string ->
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_logic_app_integration_account_map__timeouts ->
  content:string ->
  integration_account_name:string ->
  map_type:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
