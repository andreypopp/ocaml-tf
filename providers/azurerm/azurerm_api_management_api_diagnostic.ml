(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend_request__data_masking__headers = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_request__data_masking__headers) -> ()

let yojson_of_backend_request__data_masking__headers =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : backend_request__data_masking__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_request__data_masking__headers

[@@@deriving.end]

type backend_request__data_masking__query_params = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_request__data_masking__query_params) -> ()

let yojson_of_backend_request__data_masking__query_params =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : backend_request__data_masking__query_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_request__data_masking__query_params

[@@@deriving.end]

type backend_request__data_masking = {
  headers : backend_request__data_masking__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_params : backend_request__data_masking__query_params list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_request__data_masking) -> ()

let yojson_of_backend_request__data_masking =
  (function
   | { headers = v_headers; query_params = v_query_params } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_params then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backend_request__data_masking__query_params)
               v_query_params
           in
           let bnd = "query_params", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backend_request__data_masking__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backend_request__data_masking ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_request__data_masking

[@@@deriving.end]

type backend_request = {
  body_bytes : float prop option; [@option]
  headers_to_log : string prop list option; [@option]
  data_masking : backend_request__data_masking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_request) -> ()

let yojson_of_backend_request =
  (function
   | {
       body_bytes = v_body_bytes;
       headers_to_log = v_headers_to_log;
       data_masking = v_data_masking;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_masking then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_request__data_masking)
               v_data_masking
           in
           let bnd = "data_masking", arg in
           bnd :: bnds
       in
       let bnds =
         match v_headers_to_log with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers_to_log", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "body_bytes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_request

[@@@deriving.end]

type backend_response__data_masking__headers = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_response__data_masking__headers) -> ()

let yojson_of_backend_response__data_masking__headers =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : backend_response__data_masking__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_response__data_masking__headers

[@@@deriving.end]

type backend_response__data_masking__query_params = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_response__data_masking__query_params) -> ()

let yojson_of_backend_response__data_masking__query_params =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : backend_response__data_masking__query_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_response__data_masking__query_params

[@@@deriving.end]

type backend_response__data_masking = {
  headers : backend_response__data_masking__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_params : backend_response__data_masking__query_params list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_response__data_masking) -> ()

let yojson_of_backend_response__data_masking =
  (function
   | { headers = v_headers; query_params = v_query_params } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_params then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backend_response__data_masking__query_params)
               v_query_params
           in
           let bnd = "query_params", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backend_response__data_masking__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backend_response__data_masking ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_response__data_masking

[@@@deriving.end]

type backend_response = {
  body_bytes : float prop option; [@option]
  headers_to_log : string prop list option; [@option]
  data_masking : backend_response__data_masking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend_response) -> ()

let yojson_of_backend_response =
  (function
   | {
       body_bytes = v_body_bytes;
       headers_to_log = v_headers_to_log;
       data_masking = v_data_masking;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_masking then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_response__data_masking)
               v_data_masking
           in
           let bnd = "data_masking", arg in
           bnd :: bnds
       in
       let bnds =
         match v_headers_to_log with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers_to_log", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "body_bytes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend_response

[@@@deriving.end]

type frontend_request__data_masking__headers = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_request__data_masking__headers) -> ()

let yojson_of_frontend_request__data_masking__headers =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : frontend_request__data_masking__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_request__data_masking__headers

[@@@deriving.end]

type frontend_request__data_masking__query_params = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_request__data_masking__query_params) -> ()

let yojson_of_frontend_request__data_masking__query_params =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : frontend_request__data_masking__query_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_request__data_masking__query_params

[@@@deriving.end]

type frontend_request__data_masking = {
  headers : frontend_request__data_masking__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_params : frontend_request__data_masking__query_params list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_request__data_masking) -> ()

let yojson_of_frontend_request__data_masking =
  (function
   | { headers = v_headers; query_params = v_query_params } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_params then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_frontend_request__data_masking__query_params)
               v_query_params
           in
           let bnd = "query_params", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_frontend_request__data_masking__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : frontend_request__data_masking ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_request__data_masking

[@@@deriving.end]

type frontend_request = {
  body_bytes : float prop option; [@option]
  headers_to_log : string prop list option; [@option]
  data_masking : frontend_request__data_masking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_request) -> ()

let yojson_of_frontend_request =
  (function
   | {
       body_bytes = v_body_bytes;
       headers_to_log = v_headers_to_log;
       data_masking = v_data_masking;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_masking then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_request__data_masking)
               v_data_masking
           in
           let bnd = "data_masking", arg in
           bnd :: bnds
       in
       let bnds =
         match v_headers_to_log with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers_to_log", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "body_bytes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : frontend_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_request

[@@@deriving.end]

type frontend_response__data_masking__headers = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_response__data_masking__headers) -> ()

let yojson_of_frontend_response__data_masking__headers =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : frontend_response__data_masking__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_response__data_masking__headers

[@@@deriving.end]

type frontend_response__data_masking__query_params = {
  mode : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_response__data_masking__query_params) -> ()

let yojson_of_frontend_response__data_masking__query_params =
  (function
   | { mode = v_mode; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : frontend_response__data_masking__query_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_response__data_masking__query_params

[@@@deriving.end]

type frontend_response__data_masking = {
  headers : frontend_response__data_masking__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_params : frontend_response__data_masking__query_params list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_response__data_masking) -> ()

let yojson_of_frontend_response__data_masking =
  (function
   | { headers = v_headers; query_params = v_query_params } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_params then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_frontend_response__data_masking__query_params)
               v_query_params
           in
           let bnd = "query_params", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_frontend_response__data_masking__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : frontend_response__data_masking ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_response__data_masking

[@@@deriving.end]

type frontend_response = {
  body_bytes : float prop option; [@option]
  headers_to_log : string prop list option; [@option]
  data_masking : frontend_response__data_masking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_response) -> ()

let yojson_of_frontend_response =
  (function
   | {
       body_bytes = v_body_bytes;
       headers_to_log = v_headers_to_log;
       data_masking = v_data_masking;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_masking then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_frontend_response__data_masking)
               v_data_masking
           in
           let bnd = "data_masking", arg in
           bnd :: bnds
       in
       let bnds =
         match v_headers_to_log with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers_to_log", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body_bytes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "body_bytes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : frontend_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_response

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_api_management_api_diagnostic = {
  always_log_errors : bool prop option; [@option]
  api_management_logger_id : string prop;
  api_management_name : string prop;
  api_name : string prop;
  http_correlation_protocol : string prop option; [@option]
  id : string prop option; [@option]
  identifier : string prop;
  log_client_ip : bool prop option; [@option]
  operation_name_format : string prop option; [@option]
  resource_group_name : string prop;
  sampling_percentage : float prop option; [@option]
  verbosity : string prop option; [@option]
  backend_request : backend_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backend_response : backend_response list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frontend_request : frontend_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frontend_response : frontend_response list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_api_diagnostic) -> ()

let yojson_of_azurerm_api_management_api_diagnostic =
  (function
   | {
       always_log_errors = v_always_log_errors;
       api_management_logger_id = v_api_management_logger_id;
       api_management_name = v_api_management_name;
       api_name = v_api_name;
       http_correlation_protocol = v_http_correlation_protocol;
       id = v_id;
       identifier = v_identifier;
       log_client_ip = v_log_client_ip;
       operation_name_format = v_operation_name_format;
       resource_group_name = v_resource_group_name;
       sampling_percentage = v_sampling_percentage;
       verbosity = v_verbosity;
       backend_request = v_backend_request;
       backend_response = v_backend_response;
       frontend_request = v_frontend_request;
       frontend_response = v_frontend_response;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frontend_response then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_response)
               v_frontend_response
           in
           let bnd = "frontend_response", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_frontend_request then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frontend_request)
               v_frontend_request
           in
           let bnd = "frontend_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backend_response then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_response)
               v_backend_response
           in
           let bnd = "backend_response", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backend_request then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backend_request)
               v_backend_request
           in
           let bnd = "backend_request", arg in
           bnd :: bnds
       in
       let bnds =
         match v_verbosity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verbosity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sampling_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_operation_name_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation_name_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_client_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_client_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_correlation_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_correlation_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_name in
         ("api_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_logger_id
         in
         ("api_management_logger_id", arg) :: bnds
       in
       let bnds =
         match v_always_log_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_log_errors", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_api_diagnostic ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_api_diagnostic

[@@@deriving.end]

let backend_request__data_masking__headers ~mode ~value () :
    backend_request__data_masking__headers =
  { mode; value }

let backend_request__data_masking__query_params ~mode ~value () :
    backend_request__data_masking__query_params =
  { mode; value }

let backend_request__data_masking ?(headers = [])
    ?(query_params = []) () : backend_request__data_masking =
  { headers; query_params }

let backend_request ?body_bytes ?headers_to_log ?(data_masking = [])
    () : backend_request =
  { body_bytes; headers_to_log; data_masking }

let backend_response__data_masking__headers ~mode ~value () :
    backend_response__data_masking__headers =
  { mode; value }

let backend_response__data_masking__query_params ~mode ~value () :
    backend_response__data_masking__query_params =
  { mode; value }

let backend_response__data_masking ?(headers = [])
    ?(query_params = []) () : backend_response__data_masking =
  { headers; query_params }

let backend_response ?body_bytes ?headers_to_log ?(data_masking = [])
    () : backend_response =
  { body_bytes; headers_to_log; data_masking }

let frontend_request__data_masking__headers ~mode ~value () :
    frontend_request__data_masking__headers =
  { mode; value }

let frontend_request__data_masking__query_params ~mode ~value () :
    frontend_request__data_masking__query_params =
  { mode; value }

let frontend_request__data_masking ?(headers = [])
    ?(query_params = []) () : frontend_request__data_masking =
  { headers; query_params }

let frontend_request ?body_bytes ?headers_to_log ?(data_masking = [])
    () : frontend_request =
  { body_bytes; headers_to_log; data_masking }

let frontend_response__data_masking__headers ~mode ~value () :
    frontend_response__data_masking__headers =
  { mode; value }

let frontend_response__data_masking__query_params ~mode ~value () :
    frontend_response__data_masking__query_params =
  { mode; value }

let frontend_response__data_masking ?(headers = [])
    ?(query_params = []) () : frontend_response__data_masking =
  { headers; query_params }

let frontend_response ?body_bytes ?headers_to_log
    ?(data_masking = []) () : frontend_response =
  { body_bytes; headers_to_log; data_masking }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_diagnostic ?always_log_errors
    ?http_correlation_protocol ?id ?log_client_ip
    ?operation_name_format ?sampling_percentage ?verbosity
    ?(backend_request = []) ?(backend_response = [])
    ?(frontend_request = []) ?(frontend_response = []) ?timeouts
    ~api_management_logger_id ~api_management_name ~api_name
    ~identifier ~resource_group_name () :
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
  tf_name : string;
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
    ?verbosity ?(backend_request = []) ?(backend_response = [])
    ?(frontend_request = []) ?(frontend_response = []) ?timeouts
    ~api_management_logger_id ~api_management_name ~api_name
    ~identifier ~resource_group_name __id =
  let __type = "azurerm_api_management_api_diagnostic" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~backend_request ~backend_response ~frontend_request
           ~frontend_response ?timeouts ~api_management_logger_id
           ~api_management_name ~api_name ~identifier
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?always_log_errors ?http_correlation_protocol
    ?id ?log_client_ip ?operation_name_format ?sampling_percentage
    ?verbosity ?(backend_request = []) ?(backend_response = [])
    ?(frontend_request = []) ?(frontend_response = []) ?timeouts
    ~api_management_logger_id ~api_management_name ~api_name
    ~identifier ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?always_log_errors ?http_correlation_protocol ?id
      ?log_client_ip ?operation_name_format ?sampling_percentage
      ?verbosity ~backend_request ~backend_response ~frontend_request
      ~frontend_response ?timeouts ~api_management_logger_id
      ~api_management_name ~api_name ~identifier ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
