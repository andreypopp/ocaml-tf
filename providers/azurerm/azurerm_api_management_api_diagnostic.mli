(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backend_request__data_masking__headers

val backend_request__data_masking__headers :
  mode:string prop ->
  value:string prop ->
  unit ->
  backend_request__data_masking__headers

type backend_request__data_masking__query_params

val backend_request__data_masking__query_params :
  mode:string prop ->
  value:string prop ->
  unit ->
  backend_request__data_masking__query_params

type backend_request__data_masking

val backend_request__data_masking :
  ?headers:backend_request__data_masking__headers list ->
  ?query_params:backend_request__data_masking__query_params list ->
  unit ->
  backend_request__data_masking

type backend_request

val backend_request :
  ?body_bytes:float prop ->
  ?headers_to_log:string prop list ->
  ?data_masking:backend_request__data_masking list ->
  unit ->
  backend_request

type backend_response__data_masking__headers

val backend_response__data_masking__headers :
  mode:string prop ->
  value:string prop ->
  unit ->
  backend_response__data_masking__headers

type backend_response__data_masking__query_params

val backend_response__data_masking__query_params :
  mode:string prop ->
  value:string prop ->
  unit ->
  backend_response__data_masking__query_params

type backend_response__data_masking

val backend_response__data_masking :
  ?headers:backend_response__data_masking__headers list ->
  ?query_params:backend_response__data_masking__query_params list ->
  unit ->
  backend_response__data_masking

type backend_response

val backend_response :
  ?body_bytes:float prop ->
  ?headers_to_log:string prop list ->
  ?data_masking:backend_response__data_masking list ->
  unit ->
  backend_response

type frontend_request__data_masking__headers

val frontend_request__data_masking__headers :
  mode:string prop ->
  value:string prop ->
  unit ->
  frontend_request__data_masking__headers

type frontend_request__data_masking__query_params

val frontend_request__data_masking__query_params :
  mode:string prop ->
  value:string prop ->
  unit ->
  frontend_request__data_masking__query_params

type frontend_request__data_masking

val frontend_request__data_masking :
  ?headers:frontend_request__data_masking__headers list ->
  ?query_params:frontend_request__data_masking__query_params list ->
  unit ->
  frontend_request__data_masking

type frontend_request

val frontend_request :
  ?body_bytes:float prop ->
  ?headers_to_log:string prop list ->
  ?data_masking:frontend_request__data_masking list ->
  unit ->
  frontend_request

type frontend_response__data_masking__headers

val frontend_response__data_masking__headers :
  mode:string prop ->
  value:string prop ->
  unit ->
  frontend_response__data_masking__headers

type frontend_response__data_masking__query_params

val frontend_response__data_masking__query_params :
  mode:string prop ->
  value:string prop ->
  unit ->
  frontend_response__data_masking__query_params

type frontend_response__data_masking

val frontend_response__data_masking :
  ?headers:frontend_response__data_masking__headers list ->
  ?query_params:frontend_response__data_masking__query_params list ->
  unit ->
  frontend_response__data_masking

type frontend_response

val frontend_response :
  ?body_bytes:float prop ->
  ?headers_to_log:string prop list ->
  ?data_masking:frontend_response__data_masking list ->
  unit ->
  frontend_response

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_api_diagnostic

val azurerm_api_management_api_diagnostic :
  ?always_log_errors:bool prop ->
  ?http_correlation_protocol:string prop ->
  ?id:string prop ->
  ?log_client_ip:bool prop ->
  ?operation_name_format:string prop ->
  ?sampling_percentage:float prop ->
  ?verbosity:string prop ->
  ?backend_request:backend_request list ->
  ?backend_response:backend_response list ->
  ?frontend_request:frontend_request list ->
  ?frontend_response:frontend_response list ->
  ?timeouts:timeouts ->
  api_management_logger_id:string prop ->
  api_management_name:string prop ->
  api_name:string prop ->
  identifier:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_api_diagnostic

val yojson_of_azurerm_api_management_api_diagnostic :
  azurerm_api_management_api_diagnostic -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?always_log_errors:bool prop ->
  ?http_correlation_protocol:string prop ->
  ?id:string prop ->
  ?log_client_ip:bool prop ->
  ?operation_name_format:string prop ->
  ?sampling_percentage:float prop ->
  ?verbosity:string prop ->
  ?backend_request:backend_request list ->
  ?backend_response:backend_response list ->
  ?frontend_request:frontend_request list ->
  ?frontend_response:frontend_response list ->
  ?timeouts:timeouts ->
  api_management_logger_id:string prop ->
  api_management_name:string prop ->
  api_name:string prop ->
  identifier:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?always_log_errors:bool prop ->
  ?http_correlation_protocol:string prop ->
  ?id:string prop ->
  ?log_client_ip:bool prop ->
  ?operation_name_format:string prop ->
  ?sampling_percentage:float prop ->
  ?verbosity:string prop ->
  ?backend_request:backend_request list ->
  ?backend_response:backend_response list ->
  ?frontend_request:frontend_request list ->
  ?frontend_response:frontend_response list ->
  ?timeouts:timeouts ->
  api_management_logger_id:string prop ->
  api_management_name:string prop ->
  api_name:string prop ->
  identifier:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
