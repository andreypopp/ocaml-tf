(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account__timeouts
type azurerm_logic_app_integration_account

val azurerm_logic_app_integration_account :
  ?id:string ->
  ?integration_service_environment_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_logic_app_integration_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
