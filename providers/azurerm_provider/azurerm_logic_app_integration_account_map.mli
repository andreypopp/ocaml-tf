(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_map__timeouts
type azurerm_logic_app_integration_account_map

val azurerm_logic_app_integration_account_map :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_logic_app_integration_account_map__timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  map_type:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
