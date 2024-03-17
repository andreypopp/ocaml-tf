(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_workflow__access_control__action
type azurerm_logic_app_workflow__access_control__content

type azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim

type azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy

type azurerm_logic_app_workflow__access_control__trigger
type azurerm_logic_app_workflow__access_control__workflow_management
type azurerm_logic_app_workflow__access_control
type azurerm_logic_app_workflow__identity
type azurerm_logic_app_workflow__timeouts
type azurerm_logic_app_workflow

val azurerm_logic_app_workflow :
  ?enabled:bool ->
  ?integration_service_environment_id:string ->
  ?logic_app_integration_account_id:string ->
  ?parameters:(string * string) list ->
  ?tags:(string * string) list ->
  ?workflow_parameters:(string * string) list ->
  ?workflow_schema:string ->
  ?workflow_version:string ->
  ?timeouts:azurerm_logic_app_workflow__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  access_control:azurerm_logic_app_workflow__access_control list ->
  identity:azurerm_logic_app_workflow__identity list ->
  string ->
  unit
