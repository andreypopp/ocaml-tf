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

type t = private {
  access_endpoint : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  enabled : bool prop;
  id : string prop;
  integration_service_environment_id : string prop;
  location : string prop;
  logic_app_integration_account_id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
  workflow_parameters : (string * string) list prop;
  workflow_schema : string prop;
  workflow_version : string prop;
}

val azurerm_logic_app_workflow :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?integration_service_environment_id:string prop ->
  ?logic_app_integration_account_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?workflow_parameters:(string * string prop) list ->
  ?workflow_schema:string prop ->
  ?workflow_version:string prop ->
  ?timeouts:azurerm_logic_app_workflow__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  access_control:azurerm_logic_app_workflow__access_control list ->
  identity:azurerm_logic_app_workflow__identity list ->
  string ->
  t
