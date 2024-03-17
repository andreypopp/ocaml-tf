(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_diagnostic__backend_request__data_masking__headers = {
  mode : string;  (** mode *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_request__data_masking__headers *)

type azurerm_api_management_diagnostic__backend_request__data_masking__query_params = {
  mode : string;  (** mode *)
  value : string;  (** value *)
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
  body_bytes : float option; [@option]  (** body_bytes *)
  headers_to_log : string list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__backend_request__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_request *)

type azurerm_api_management_diagnostic__backend_response__data_masking__headers = {
  mode : string;  (** mode *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_response__data_masking__headers *)

type azurerm_api_management_diagnostic__backend_response__data_masking__query_params = {
  mode : string;  (** mode *)
  value : string;  (** value *)
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
  body_bytes : float option; [@option]  (** body_bytes *)
  headers_to_log : string list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__backend_response__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__backend_response *)

type azurerm_api_management_diagnostic__frontend_request__data_masking__headers = {
  mode : string;  (** mode *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_request__data_masking__headers *)

type azurerm_api_management_diagnostic__frontend_request__data_masking__query_params = {
  mode : string;  (** mode *)
  value : string;  (** value *)
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
  body_bytes : float option; [@option]  (** body_bytes *)
  headers_to_log : string list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__frontend_request__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_request *)

type azurerm_api_management_diagnostic__frontend_response__data_masking__headers = {
  mode : string;  (** mode *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_response__data_masking__headers *)

type azurerm_api_management_diagnostic__frontend_response__data_masking__query_params = {
  mode : string;  (** mode *)
  value : string;  (** value *)
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
  body_bytes : float option; [@option]  (** body_bytes *)
  headers_to_log : string list option; [@option]
      (** headers_to_log *)
  data_masking :
    azurerm_api_management_diagnostic__frontend_response__data_masking
    list;
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__frontend_response *)

type azurerm_api_management_diagnostic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_diagnostic__timeouts *)

type azurerm_api_management_diagnostic = {
  api_management_logger_id : string;  (** api_management_logger_id *)
  api_management_name : string;  (** api_management_name *)
  identifier : string;  (** identifier *)
  operation_name_format : string option; [@option]
      (** operation_name_format *)
  resource_group_name : string;  (** resource_group_name *)
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

let azurerm_api_management_diagnostic ?operation_name_format
    ?timeouts ~api_management_logger_id ~api_management_name
    ~identifier ~resource_group_name ~backend_request
    ~backend_response ~frontend_request ~frontend_response
    __resource_id =
  let __resource_type = "azurerm_api_management_diagnostic" in
  let __resource =
    {
      api_management_logger_id;
      api_management_name;
      identifier;
      operation_name_format;
      resource_group_name;
      backend_request;
      backend_response;
      frontend_request;
      frontend_response;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_diagnostic __resource);
  ()
