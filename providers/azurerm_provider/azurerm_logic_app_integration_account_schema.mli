(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_schema__timeouts
type azurerm_logic_app_integration_account_schema

val azurerm_logic_app_integration_account_schema :
  ?file_name:string prop ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:azurerm_logic_app_integration_account_schema__timeouts ->
  content:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
