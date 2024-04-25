(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_control__action

val access_control__action :
  allowed_caller_ip_address_range:string prop list ->
  unit ->
  access_control__action

type access_control__content

val access_control__content :
  allowed_caller_ip_address_range:string prop list ->
  unit ->
  access_control__content

type access_control__trigger__open_authentication_policy__claim

val access_control__trigger__open_authentication_policy__claim :
  name:string prop ->
  value:string prop ->
  unit ->
  access_control__trigger__open_authentication_policy__claim

type access_control__trigger__open_authentication_policy

val access_control__trigger__open_authentication_policy :
  name:string prop ->
  claim:
    access_control__trigger__open_authentication_policy__claim list ->
  unit ->
  access_control__trigger__open_authentication_policy

type access_control__trigger

val access_control__trigger :
  allowed_caller_ip_address_range:string prop list ->
  open_authentication_policy:
    access_control__trigger__open_authentication_policy list ->
  unit ->
  access_control__trigger

type access_control__workflow_management

val access_control__workflow_management :
  allowed_caller_ip_address_range:string prop list ->
  unit ->
  access_control__workflow_management

type access_control

val access_control :
  ?action:access_control__action list ->
  ?content:access_control__content list ->
  ?trigger:access_control__trigger list ->
  ?workflow_management:access_control__workflow_management list ->
  unit ->
  access_control

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_workflow

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
  ?access_control:access_control list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_workflow

val yojson_of_azurerm_logic_app_workflow :
  azurerm_logic_app_workflow -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?integration_service_environment_id:string prop ->
  ?logic_app_integration_account_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?workflow_parameters:(string * string prop) list ->
  ?workflow_schema:string prop ->
  ?workflow_version:string prop ->
  ?access_control:access_control list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?integration_service_environment_id:string prop ->
  ?logic_app_integration_account_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?workflow_parameters:(string * string prop) list ->
  ?workflow_schema:string prop ->
  ?workflow_version:string prop ->
  ?access_control:access_control list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
