(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule__monthly

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence__schedule

type azurerm_logic_app_integration_account_batch_configuration__release_criteria__recurrence

type azurerm_logic_app_integration_account_batch_configuration__release_criteria

type azurerm_logic_app_integration_account_batch_configuration__timeouts

type azurerm_logic_app_integration_account_batch_configuration

type t = private {
  batch_group_name : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_logic_app_integration_account_batch_configuration :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:
    azurerm_logic_app_integration_account_batch_configuration__timeouts ->
  batch_group_name:string prop ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  release_criteria:
    azurerm_logic_app_integration_account_batch_configuration__release_criteria
    list ->
  string ->
  t
