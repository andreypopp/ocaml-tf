(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence

type azurerm_logic_app_integration_account_batch_configuration__release_criteria

type azurerm_logic_app_integration_account_batch_configuration__timeouts

type azurerm_logic_app_integration_account_batch_configuration

val azurerm_logic_app_integration_account_batch_configuration :
  ?id:string ->
  ?metadata:(string * string) list ->
  ?timeouts:
    azurerm_logic_app_integration_account_batch_configuration__timeouts ->
  batch_group_name:string ->
  integration_account_name:string ->
  name:string ->
  resource_group_name:string ->
  release_criteria:
    azurerm_logic_app_integration_account_batch_configuration__release_criteria
    list ->
  string ->
  unit
