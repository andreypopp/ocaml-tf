(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_diagnostic__backend_request__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_request__data_masking__headers *)

type azurerm_api_management_diagnostic__backend_request__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_request__data_masking__query_params *)

type azurerm_api_management_diagnostic__backend_request__data_masking = {
  headers :
    azurerm_api_management_diagnostic__backend_request__data_masking__headers
    list;
  query_params :
    azurerm_api_management_diagnostic__backend_request__data_masking__query_params
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_request__data_masking *)

type azurerm_api_management_diagnostic__backend_request = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__backend_request__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_request *)

type azurerm_api_management_diagnostic__backend_response__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_response__data_masking__headers *)

type azurerm_api_management_diagnostic__backend_response__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_response__data_masking__query_params *)

type azurerm_api_management_diagnostic__backend_response__data_masking = {
  headers :
    azurerm_api_management_diagnostic__backend_response__data_masking__headers
    list;
  query_params :
    azurerm_api_management_diagnostic__backend_response__data_masking__query_params
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_response__data_masking *)

type azurerm_api_management_diagnostic__backend_response = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__backend_response__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_response *)

type azurerm_api_management_diagnostic__frontend_request__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_request__data_masking__headers *)

type azurerm_api_management_diagnostic__frontend_request__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_request__data_masking__query_params *)

type azurerm_api_management_diagnostic__frontend_request__data_masking = {
  headers :
    azurerm_api_management_diagnostic__frontend_request__data_masking__headers
    list;
  query_params :
    azurerm_api_management_diagnostic__frontend_request__data_masking__query_params
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_request__data_masking *)

type azurerm_api_management_diagnostic__frontend_request = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__frontend_request__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_request *)

type azurerm_api_management_diagnostic__frontend_response__data_masking__headers = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_response__data_masking__headers *)

type azurerm_api_management_diagnostic__frontend_response__data_masking__query_params = {
  mode : string prop;  (** mode *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_response__data_masking__query_params *)

type azurerm_api_management_diagnostic__frontend_response__data_masking = {
  headers :
    azurerm_api_management_diagnostic__frontend_response__data_masking__headers
    list;
  query_params :
    azurerm_api_management_diagnostic__frontend_response__data_masking__query_params
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_response__data_masking *)

type azurerm_api_management_diagnostic__frontend_response = {
  body_bytes : float prop option; [@option]  (** body_bytes *)
  headers_to_log : string prop list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__frontend_response__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_response *)

type azurerm_api_management_diagnostic__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__timeouts *)

type azurerm_api_management_diagnostic = {
  always_log_errors : bool prop option; [@option]
      (** always_log_errors *)
  api_management_logger_id : string prop;
      (** api_management_logger_id *)
  api_management_name : string prop;  (** api_management_name *)
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
  backend_request :
    azurerm_api_management_diagnostic__backend_request list;
  backend_response :
    azurerm_api_management_diagnostic__backend_response list;
  frontend_request :
    azurerm_api_management_diagnostic__frontend_request list;
  frontend_response :
    azurerm_api_management_diagnostic__frontend_response list;
  timeouts : azurerm_api_management_diagnostic__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic *)

type t = {
  always_log_errors : bool prop;
  api_management_logger_id : string prop;
  api_management_name : string prop;
  http_correlation_protocol : string prop;
  id : string prop;
  identifier : string prop;
  log_client_ip : bool prop;
  operation_name_format : string prop;
  resource_group_name : string prop;
  sampling_percentage : float prop;
  verbosity : string prop;
}

let azurerm_api_management_diagnostic ?always_log_errors
    ?http_correlation_protocol ?id ?log_client_ip
    ?operation_name_format ?sampling_percentage ?verbosity ?timeouts
    ~api_management_logger_id ~api_management_name ~identifier
    ~resource_group_name ~backend_request ~backend_response
    ~frontend_request ~frontend_response __resource_id =
  let __resource_type = "azurerm_api_management_diagnostic" in
  let __resource =
    ({
       always_log_errors;
       api_management_logger_id;
       api_management_name;
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
      : azurerm_api_management_diagnostic)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_diagnostic __resource);
  let __resource_attributes =
    ({
       always_log_errors =
         Prop.computed __resource_type __resource_id
           "always_log_errors";
       api_management_logger_id =
         Prop.computed __resource_type __resource_id
           "api_management_logger_id";
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       http_correlation_protocol =
         Prop.computed __resource_type __resource_id
           "http_correlation_protocol";
       id = Prop.computed __resource_type __resource_id "id";
       identifier =
         Prop.computed __resource_type __resource_id "identifier";
       log_client_ip =
         Prop.computed __resource_type __resource_id "log_client_ip";
       operation_name_format =
         Prop.computed __resource_type __resource_id
           "operation_name_format";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sampling_percentage =
         Prop.computed __resource_type __resource_id
           "sampling_percentage";
       verbosity =
         Prop.computed __resource_type __resource_id "verbosity";
     }
      : t)
  in
  __resource_attributes
