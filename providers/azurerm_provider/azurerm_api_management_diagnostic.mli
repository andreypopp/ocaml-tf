(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_diagnostic__backend_request__data_masking__headers

type azurerm_api_management_diagnostic__backend_request__data_masking__query_params

type azurerm_api_management_diagnostic__backend_request__data_masking
type azurerm_api_management_diagnostic__backend_request

type azurerm_api_management_diagnostic__backend_response__data_masking__headers

type azurerm_api_management_diagnostic__backend_response__data_masking__query_params

type azurerm_api_management_diagnostic__backend_response__data_masking
type azurerm_api_management_diagnostic__backend_response

type azurerm_api_management_diagnostic__frontend_request__data_masking__headers

type azurerm_api_management_diagnostic__frontend_request__data_masking__query_params

type azurerm_api_management_diagnostic__frontend_request__data_masking
type azurerm_api_management_diagnostic__frontend_request

type azurerm_api_management_diagnostic__frontend_response__data_masking__headers

type azurerm_api_management_diagnostic__frontend_response__data_masking__query_params

type azurerm_api_management_diagnostic__frontend_response__data_masking

type azurerm_api_management_diagnostic__frontend_response
type azurerm_api_management_diagnostic__timeouts
type azurerm_api_management_diagnostic

val azurerm_api_management_diagnostic :
  ?always_log_errors:bool ->
  ?http_correlation_protocol:string ->
  ?id:string ->
  ?log_client_ip:bool ->
  ?operation_name_format:string ->
  ?sampling_percentage:float ->
  ?verbosity:string ->
  ?timeouts:azurerm_api_management_diagnostic__timeouts ->
  api_management_logger_id:string ->
  api_management_name:string ->
  identifier:string ->
  resource_group_name:string ->
  backend_request:
    azurerm_api_management_diagnostic__backend_request list ->
  backend_response:
    azurerm_api_management_diagnostic__backend_response list ->
  frontend_request:
    azurerm_api_management_diagnostic__frontend_request list ->
  frontend_response:
    azurerm_api_management_diagnostic__frontend_response list ->
  string ->
  unit
