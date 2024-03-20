(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend_request__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** backend_request__data_masking__headers *)

type backend_request__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** backend_request__data_masking__query_params *)

type backend_request__data_masking = {
  headers : backend_request__data_masking__headers list;
  query_params : backend_request__data_masking__query_params list;
}
[@@deriving yojson_of]
(** backend_request__data_masking *)

type backend_request = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking : backend_request__data_masking list;
}
[@@deriving yojson_of]
(** backend_request *)

type backend_response__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** backend_response__data_masking__headers *)

type backend_response__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** backend_response__data_masking__query_params *)

type backend_response__data_masking = {
  headers : backend_response__data_masking__headers list;
  query_params : backend_response__data_masking__query_params list;
}
[@@deriving yojson_of]
(** backend_response__data_masking *)

type backend_response = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking : backend_response__data_masking list;
}
[@@deriving yojson_of]
(** backend_response *)

type frontend_request__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** frontend_request__data_masking__headers *)

type frontend_request__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** frontend_request__data_masking__query_params *)

type frontend_request__data_masking = {
  headers : frontend_request__data_masking__headers list;
  query_params : frontend_request__data_masking__query_params list;
}
[@@deriving yojson_of]
(** frontend_request__data_masking *)

type frontend_request = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking : frontend_request__data_masking list;
}
[@@deriving yojson_of]
(** frontend_request *)

type frontend_response__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** frontend_response__data_masking__headers *)

type frontend_response__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** frontend_response__data_masking__query_params *)

type frontend_response__data_masking = {
  headers : frontend_response__data_masking__headers list;
  query_params : frontend_response__data_masking__query_params list;
}
[@@deriving yojson_of]
(** frontend_response__data_masking *)

type frontend_response = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking : frontend_response__data_masking list;
}
[@@deriving yojson_of]
(** frontend_response *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_api_diagnostic = {
  always_log_errors : bool prop option; [@option]
      (** always_log_errors *)
  api_management_logger_id : string prop;
      (** api_management_logger_id *)
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  http_correlation_protocol : string prop option; [@option]
      (** http_correlation_protocol *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop;  (** identifier *)
  log_client_ip : bool prop option; [@option]  (** log_client_ip *)
  operation_name_format : string prop option; [@option]
      (** operation_name_format *)
  resource_group_name : string prop;  (** resource_group_name *)
  sampling_percentage : float prop option; [@option]
      (** sampling_percentage *)
  verbosity : string prop option; [@option]  (** verbosity *)
  backend_request : backend_request list;
  backend_response : backend_response list;
  frontend_request : frontend_request list;
  frontend_response : frontend_response list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_diagnostic *)

let backend_request__data_masking__headers ~mode ~value () :
    backend_request__data_masking__headers =
  { mode; value }

let backend_request__data_masking__query_params ~mode ~value () :
    backend_request__data_masking__query_params =
  { mode; value }

let backend_request__data_masking ~headers ~query_params () :
    backend_request__data_masking =
  { headers; query_params }

let backend_request ?body_bytes ?headers_to_log ~data_masking () :
    backend_request =
  { body_bytes; headers_to_log; data_masking }

let backend_response__data_masking__headers ~mode ~value () :
    backend_response__data_masking__headers =
  { mode; value }

let backend_response__data_masking__query_params ~mode ~value () :
    backend_response__data_masking__query_params =
  { mode; value }

let backend_response__data_masking ~headers ~query_params () :
    backend_response__data_masking =
  { headers; query_params }

let backend_response ?body_bytes ?headers_to_log ~data_masking () :
    backend_response =
  { body_bytes; headers_to_log; data_masking }

let frontend_request__data_masking__headers ~mode ~value () :
    frontend_request__data_masking__headers =
  { mode; value }

let frontend_request__data_masking__query_params ~mode ~value () :
    frontend_request__data_masking__query_params =
  { mode; value }

let frontend_request__data_masking ~headers ~query_params () :
    frontend_request__data_masking =
  { headers; query_params }

let frontend_request ?body_bytes ?headers_to_log ~data_masking () :
    frontend_request =
  { body_bytes; headers_to_log; data_masking }

let frontend_response__data_masking__headers ~mode ~value () :
    frontend_response__data_masking__headers =
  { mode; value }

let frontend_response__data_masking__query_params ~mode ~value () :
    frontend_response__data_masking__query_params =
  { mode; value }

let frontend_response__data_masking ~headers ~query_params () :
    frontend_response__data_masking =
  { headers; query_params }

let frontend_response ?body_bytes ?headers_to_log ~data_masking () :
    frontend_response =
  { body_bytes; headers_to_log; data_masking }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_diagnostic ?always_log_errors
    ?http_correlation_protocol ?id ?log_client_ip
    ?operation_name_format ?sampling_percentage ?verbosity ?timeouts
    ~api_management_logger_id ~api_management_name ~api_name
    ~identifier ~resource_group_name ~backend_request
    ~backend_response ~frontend_request ~frontend_response () :
    azurerm_api_management_api_diagnostic =
  {
    always_log_errors;
    api_management_logger_id;
    api_management_name;
    api_name;
    http_correlation_protocol;
    id;
    identifier;
    log_client_ip;
    operation_name_format;
    resource_group_name;
    sampling_percentage;
    verbosity;
    backend_request;
    backend_response;
    frontend_request;
    frontend_response;
    timeouts;
  }

type t = {
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

let make ?always_log_errors ?http_correlation_protocol ?id
    ?log_client_ip ?operation_name_format ?sampling_percentage
    ?verbosity ?timeouts ~api_management_logger_id
    ~api_management_name ~api_name ~identifier ~resource_group_name
    ~backend_request ~backend_response ~frontend_request
    ~frontend_response __id =
  let __type = "azurerm_api_management_api_diagnostic" in
  let __attrs =
    ({
       always_log_errors =
         Prop.computed __type __id "always_log_errors";
       api_management_logger_id =
         Prop.computed __type __id "api_management_logger_id";
       api_management_name =
         Prop.computed __type __id "api_management_name";
       api_name = Prop.computed __type __id "api_name";
       http_correlation_protocol =
         Prop.computed __type __id "http_correlation_protocol";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       log_client_ip = Prop.computed __type __id "log_client_ip";
       operation_name_format =
         Prop.computed __type __id "operation_name_format";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sampling_percentage =
         Prop.computed __type __id "sampling_percentage";
       verbosity = Prop.computed __type __id "verbosity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_diagnostic
        (azurerm_api_management_api_diagnostic ?always_log_errors
           ?http_correlation_protocol ?id ?log_client_ip
           ?operation_name_format ?sampling_percentage ?verbosity
           ?timeouts ~api_management_logger_id ~api_management_name
           ~api_name ~identifier ~resource_group_name
           ~backend_request ~backend_response ~frontend_request
           ~frontend_response ());
    attrs = __attrs;
  }

let register ?tf_module ?always_log_errors ?http_correlation_protocol
    ?id ?log_client_ip ?operation_name_format ?sampling_percentage
    ?verbosity ?timeouts ~api_management_logger_id
    ~api_management_name ~api_name ~identifier ~resource_group_name
    ~backend_request ~backend_response ~frontend_request
    ~frontend_response __id =
  let (r : _ Tf_core.resource) =
    make ?always_log_errors ?http_correlation_protocol ?id
      ?log_client_ip ?operation_name_format ?sampling_percentage
      ?verbosity ?timeouts ~api_management_logger_id
      ~api_management_name ~api_name ~identifier ~resource_group_name
      ~backend_request ~backend_response ~frontend_request
      ~frontend_response __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
