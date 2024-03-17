(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_diagnostic__backend_request__data_masking__headers

type azurerm_api_management_api_diagnostic__backend_request__data_masking__query_params

type azurerm_api_management_api_diagnostic__backend_request__data_masking

type azurerm_api_management_api_diagnostic__backend_request

type azurerm_api_management_api_diagnostic__backend_response__data_masking__headers

type azurerm_api_management_api_diagnostic__backend_response__data_masking__query_params

type azurerm_api_management_api_diagnostic__backend_response__data_masking

type azurerm_api_management_api_diagnostic__backend_response

type azurerm_api_management_api_diagnostic__frontend_request__data_masking__headers

type azurerm_api_management_api_diagnostic__frontend_request__data_masking__query_params

type azurerm_api_management_api_diagnostic__frontend_request__data_masking

type azurerm_api_management_api_diagnostic__frontend_request

type azurerm_api_management_api_diagnostic__frontend_response__data_masking__headers

type azurerm_api_management_api_diagnostic__frontend_response__data_masking__query_params

type azurerm_api_management_api_diagnostic__frontend_response__data_masking

type azurerm_api_management_api_diagnostic__frontend_response
type azurerm_api_management_api_diagnostic__timeouts
type azurerm_api_management_api_diagnostic

type t = private {
  always_log_errors : bool prop;
  api_management_logger_id : string prop;
  api_management_name : string prop;
  api_name : string prop;
  http_correlation_protocol : string prop;
  id : string prop;
  identifier : string prop;
  log_client_ip : bool prop;
  operation_name_format : string prop;
  resource_group_name : string prop;
  sampling_percentage : float prop;
  verbosity : string prop;
}

val azurerm_api_management_api_diagnostic :
  ?always_log_errors:bool prop ->
  ?http_correlation_protocol:string prop ->
  ?id:string prop ->
  ?log_client_ip:bool prop ->
  ?operation_name_format:string prop ->
  ?sampling_percentage:float prop ->
  ?verbosity:string prop ->
  ?timeouts:azurerm_api_management_api_diagnostic__timeouts ->
  api_management_logger_id:string prop ->
  api_management_name:string prop ->
  api_name:string prop ->
  identifier:string prop ->
  resource_group_name:string prop ->
  backend_request:
    azurerm_api_management_api_diagnostic__backend_request list ->
  backend_response:
    azurerm_api_management_api_diagnostic__backend_response list ->
  frontend_request:
    azurerm_api_management_api_diagnostic__frontend_request list ->
  frontend_response:
    azurerm_api_management_api_diagnostic__frontend_response list ->
  string ->
  t
