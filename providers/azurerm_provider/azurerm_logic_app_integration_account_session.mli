(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_session__timeouts
type azurerm_logic_app_integration_account_session

val azurerm_logic_app_integration_account_session :
  ?id:string prop ->
  ?timeouts:azurerm_logic_app_integration_account_session__timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
