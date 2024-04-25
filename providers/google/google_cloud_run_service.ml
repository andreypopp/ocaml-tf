(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type template__metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__metadata) -> ()

let yojson_of_template__metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__metadata

[@@@deriving.end]

type template__spec__containers__env__value_from__secret_key_ref = {
  key : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__env__value_from__secret_key_ref) ->
  ()

let yojson_of_template__spec__containers__env__value_from__secret_key_ref
    =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env__value_from__secret_key_ref

[@@@deriving.end]

type template__spec__containers__env__value_from = {
  secret_key_ref :
    template__spec__containers__env__value_from__secret_key_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__env__value_from) -> ()

let yojson_of_template__spec__containers__env__value_from =
  (function
   | { secret_key_ref = v_secret_key_ref } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env__value_from__secret_key_ref
             v_secret_key_ref
         in
         ("secret_key_ref", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env__value_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env__value_from

[@@@deriving.end]

type template__spec__containers__env = {
  name : string prop option; [@option]
  value : string prop option; [@option]
  value_from : template__spec__containers__env__value_from list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__env) -> ()

let yojson_of_template__spec__containers__env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env__value_from
             v_value_from
         in
         ("value_from", arg) :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env

[@@@deriving.end]

type template__spec__containers__env_from__config_map_ref__local_object_reference = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__env_from__config_map_ref__local_object_reference) ->
  ()

let yojson_of_template__spec__containers__env_from__config_map_ref__local_object_reference
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__config_map_ref__local_object_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env_from__config_map_ref__local_object_reference

[@@@deriving.end]

type template__spec__containers__env_from__config_map_ref = {
  optional : bool prop option; [@option]
  local_object_reference :
    template__spec__containers__env_from__config_map_ref__local_object_reference
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__env_from__config_map_ref) -> ()

let yojson_of_template__spec__containers__env_from__config_map_ref =
  (function
   | {
       optional = v_optional;
       local_object_reference = v_local_object_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env_from__config_map_ref__local_object_reference
             v_local_object_reference
         in
         ("local_object_reference", arg) :: bnds
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__config_map_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env_from__config_map_ref

[@@@deriving.end]

type template__spec__containers__env_from__secret_ref__local_object_reference = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__env_from__secret_ref__local_object_reference) ->
  ()

let yojson_of_template__spec__containers__env_from__secret_ref__local_object_reference
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__secret_ref__local_object_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env_from__secret_ref__local_object_reference

[@@@deriving.end]

type template__spec__containers__env_from__secret_ref = {
  optional : bool prop option; [@option]
  local_object_reference :
    template__spec__containers__env_from__secret_ref__local_object_reference
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__env_from__secret_ref) -> ()

let yojson_of_template__spec__containers__env_from__secret_ref =
  (function
   | {
       optional = v_optional;
       local_object_reference = v_local_object_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env_from__secret_ref__local_object_reference
             v_local_object_reference
         in
         ("local_object_reference", arg) :: bnds
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env_from__secret_ref

[@@@deriving.end]

type template__spec__containers__env_from = {
  prefix : string prop option; [@option]
  config_map_ref :
    template__spec__containers__env_from__config_map_ref list;
  secret_ref : template__spec__containers__env_from__secret_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__env_from) -> ()

let yojson_of_template__spec__containers__env_from =
  (function
   | {
       prefix = v_prefix;
       config_map_ref = v_config_map_ref;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env_from__secret_ref
             v_secret_ref
         in
         ("secret_ref", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env_from__config_map_ref
             v_config_map_ref
         in
         ("config_map_ref", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env_from

[@@@deriving.end]

type template__spec__containers__liveness_probe__grpc = {
  port : float prop option; [@option]
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__liveness_probe__grpc) -> ()

let yojson_of_template__spec__containers__liveness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__liveness_probe__grpc

[@@@deriving.end]

type template__spec__containers__liveness_probe__http_get__http_headers = {
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__liveness_probe__http_get__http_headers) ->
  ()

let yojson_of_template__spec__containers__liveness_probe__http_get__http_headers
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__liveness_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__liveness_probe__http_get__http_headers

[@@@deriving.end]

type template__spec__containers__liveness_probe__http_get = {
  path : string prop option; [@option]
  port : float prop option; [@option]
  http_headers :
    template__spec__containers__liveness_probe__http_get__http_headers
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__liveness_probe__http_get) -> ()

let yojson_of_template__spec__containers__liveness_probe__http_get =
  (function
   | { path = v_path; port = v_port; http_headers = v_http_headers }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__liveness_probe__http_get__http_headers
             v_http_headers
         in
         ("http_headers", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__liveness_probe__http_get

[@@@deriving.end]

type template__spec__containers__liveness_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  grpc : template__spec__containers__liveness_probe__grpc list;
  http_get :
    template__spec__containers__liveness_probe__http_get list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__liveness_probe) -> ()

let yojson_of_template__spec__containers__liveness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       timeout_seconds = v_timeout_seconds;
       grpc = v_grpc;
       http_get = v_http_get;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__liveness_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__liveness_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__liveness_probe

[@@@deriving.end]

type template__spec__containers__ports = {
  container_port : float prop option; [@option]
  name : string prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__ports) -> ()

let yojson_of_template__spec__containers__ports =
  (function
   | {
       container_port = v_container_port;
       name = v_name;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__ports

[@@@deriving.end]

type template__spec__containers__resources = {
  limits : (string * string prop) list option; [@option]
  requests : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__resources) -> ()

let yojson_of_template__spec__containers__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "limits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__resources

[@@@deriving.end]

type template__spec__containers__startup_probe__grpc = {
  port : float prop option; [@option]
  service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__startup_probe__grpc) -> ()

let yojson_of_template__spec__containers__startup_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__startup_probe__grpc

[@@@deriving.end]

type template__spec__containers__startup_probe__http_get__http_headers = {
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__startup_probe__http_get__http_headers) ->
  ()

let yojson_of_template__spec__containers__startup_probe__http_get__http_headers
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__startup_probe__http_get__http_headers

[@@@deriving.end]

type template__spec__containers__startup_probe__http_get = {
  path : string prop option; [@option]
  port : float prop option; [@option]
  http_headers :
    template__spec__containers__startup_probe__http_get__http_headers
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__startup_probe__http_get) -> ()

let yojson_of_template__spec__containers__startup_probe__http_get =
  (function
   | { path = v_path; port = v_port; http_headers = v_http_headers }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__startup_probe__http_get__http_headers
             v_http_headers
         in
         ("http_headers", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__startup_probe__http_get

[@@@deriving.end]

type template__spec__containers__startup_probe__tcp_socket = {
  port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__startup_probe__tcp_socket) ->
  ()

let yojson_of_template__spec__containers__startup_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__startup_probe__tcp_socket

[@@@deriving.end]

type template__spec__containers__startup_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  grpc : template__spec__containers__startup_probe__grpc list;
  http_get :
    template__spec__containers__startup_probe__http_get list;
  tcp_socket :
    template__spec__containers__startup_probe__tcp_socket list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__startup_probe) -> ()

let yojson_of_template__spec__containers__startup_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       timeout_seconds = v_timeout_seconds;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__startup_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__startup_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__startup_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__startup_probe

[@@@deriving.end]

type template__spec__containers__volume_mounts = {
  mount_path : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__volume_mounts) -> ()

let yojson_of_template__spec__containers__volume_mounts =
  (function
   | { mount_path = v_mount_path; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__volume_mounts

[@@@deriving.end]

type template__spec__containers = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  image : string prop;
  name : string prop option; [@option]
  working_dir : string prop option; [@option]
  env : template__spec__containers__env list;
  env_from : template__spec__containers__env_from list;
  liveness_probe : template__spec__containers__liveness_probe list;
  ports : template__spec__containers__ports list;
  resources : template__spec__containers__resources list;
  startup_probe : template__spec__containers__startup_probe list;
  volume_mounts : template__spec__containers__volume_mounts list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers) -> ()

let yojson_of_template__spec__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       image = v_image;
       name = v_name;
       working_dir = v_working_dir;
       env = v_env;
       env_from = v_env_from;
       liveness_probe = v_liveness_probe;
       ports = v_ports;
       resources = v_resources;
       startup_probe = v_startup_probe;
       volume_mounts = v_volume_mounts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__volume_mounts
             v_volume_mounts
         in
         ("volume_mounts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__startup_probe
             v_startup_probe
         in
         ("startup_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__spec__containers__ports
             v_ports
         in
         ("ports", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__liveness_probe
             v_liveness_probe
         in
         ("liveness_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__containers__env_from
             v_env_from
         in
         ("env_from", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__spec__containers__env
             v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         match v_working_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers

[@@@deriving.end]

type template__spec__volumes__secret__items = {
  key : string prop;
  mode : float prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__volumes__secret__items) -> ()

let yojson_of_template__spec__volumes__secret__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__volumes__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__volumes__secret__items

[@@@deriving.end]

type template__spec__volumes__secret = {
  default_mode : float prop option; [@option]
  secret_name : string prop;
  items : template__spec__volumes__secret__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__volumes__secret) -> ()

let yojson_of_template__spec__volumes__secret =
  (function
   | {
       default_mode = v_default_mode;
       secret_name = v_secret_name;
       items = v_items;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__spec__volumes__secret__items v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         match v_default_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec__volumes__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__volumes__secret

[@@@deriving.end]

type template__spec__volumes = {
  name : string prop;
  secret : template__spec__volumes__secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__volumes) -> ()

let yojson_of_template__spec__volumes =
  (function
   | { name = v_name; secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__spec__volumes__secret
             v_secret
         in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__volumes

[@@@deriving.end]

type template__spec = {
  container_concurrency : float prop option; [@option]
  service_account_name : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
  containers : template__spec__containers list;
  volumes : template__spec__volumes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec) -> ()

let yojson_of_template__spec =
  (function
   | {
       container_concurrency = v_container_concurrency;
       service_account_name = v_service_account_name;
       timeout_seconds = v_timeout_seconds;
       containers = v_containers;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__spec__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__spec__containers
             v_containers
         in
         ("containers", arg) :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_concurrency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec

[@@@deriving.end]

type template = {
  metadata : template__metadata list;
  spec : template__spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | { metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_template__spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__metadata v_metadata
         in
         ("metadata", arg) :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type traffic = {
  latest_revision : bool prop option; [@option]
  percent : float prop;
  revision_name : string prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic) -> ()

let yojson_of_traffic =
  (function
   | {
       latest_revision = v_latest_revision;
       percent = v_percent;
       revision_name = v_revision_name;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       let bnds =
         match v_latest_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "latest_revision", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : traffic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic

[@@@deriving.end]

type status__traffic = {
  latest_revision : bool prop;
  percent : float prop;
  revision_name : string prop;
  tag : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__traffic) -> ()

let yojson_of_status__traffic =
  (function
   | {
       latest_revision = v_latest_revision;
       percent = v_percent;
       revision_name = v_revision_name;
       tag = v_tag;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision_name in
         ("revision_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_latest_revision in
         ("latest_revision", arg) :: bnds
       in
       `Assoc bnds
    : status__traffic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__traffic

[@@@deriving.end]

type status__conditions = {
  message : string prop;
  reason : string prop;
  status : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__conditions) -> ()

let yojson_of_status__conditions =
  (function
   | {
       message = v_message;
       reason = v_reason;
       status = v_status;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : status__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__conditions

[@@@deriving.end]

type status = {
  conditions : status__conditions list;
  latest_created_revision_name : string prop;
  latest_ready_revision_name : string prop;
  observed_generation : float prop;
  traffic : status__traffic list;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       conditions = v_conditions;
       latest_created_revision_name = v_latest_created_revision_name;
       latest_ready_revision_name = v_latest_ready_revision_name;
       observed_generation = v_observed_generation;
       traffic = v_traffic;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__traffic v_traffic
         in
         ("traffic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_observed_generation
         in
         ("observed_generation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_latest_ready_revision_name
         in
         ("latest_ready_revision_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_latest_created_revision_name
         in
         ("latest_created_revision_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__conditions v_conditions
         in
         ("conditions", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_cloud_run_service = {
  autogenerate_revision_name : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  metadata : metadata list;
  template : template list;
  timeouts : timeouts option;
  traffic : traffic list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_service) -> ()

let yojson_of_google_cloud_run_service =
  (function
   | {
       autogenerate_revision_name = v_autogenerate_revision_name;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       metadata = v_metadata;
       template = v_template;
       timeouts = v_timeouts;
       traffic = v_traffic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_traffic v_traffic in
         ("traffic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_template v_template in
         ("template", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_autogenerate_revision_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "autogenerate_revision_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_run_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_service

[@@@deriving.end]

let metadata ?annotations ?labels ?namespace () : metadata =
  { annotations; labels; namespace }

let template__metadata ?annotations ?labels ?name ?namespace () :
    template__metadata =
  { annotations; labels; name; namespace }

let template__spec__containers__env__value_from__secret_key_ref ~key
    ~name () :
    template__spec__containers__env__value_from__secret_key_ref =
  { key; name }

let template__spec__containers__env__value_from ~secret_key_ref () :
    template__spec__containers__env__value_from =
  { secret_key_ref }

let template__spec__containers__env ?name ?value ?(value_from = [])
    () : template__spec__containers__env =
  { name; value; value_from }

let template__spec__containers__env_from__config_map_ref__local_object_reference
    ~name () :
    template__spec__containers__env_from__config_map_ref__local_object_reference
    =
  { name }

let template__spec__containers__env_from__config_map_ref ?optional
    ?(local_object_reference = []) () :
    template__spec__containers__env_from__config_map_ref =
  { optional; local_object_reference }

let template__spec__containers__env_from__secret_ref__local_object_reference
    ~name () :
    template__spec__containers__env_from__secret_ref__local_object_reference
    =
  { name }

let template__spec__containers__env_from__secret_ref ?optional
    ?(local_object_reference = []) () :
    template__spec__containers__env_from__secret_ref =
  { optional; local_object_reference }

let template__spec__containers__env_from ?prefix
    ?(config_map_ref = []) ?(secret_ref = []) () :
    template__spec__containers__env_from =
  { prefix; config_map_ref; secret_ref }

let template__spec__containers__liveness_probe__grpc ?port ?service
    () : template__spec__containers__liveness_probe__grpc =
  { port; service }

let template__spec__containers__liveness_probe__http_get__http_headers
    ?value ~name () :
    template__spec__containers__liveness_probe__http_get__http_headers
    =
  { name; value }

let template__spec__containers__liveness_probe__http_get ?path ?port
    ?(http_headers = []) () :
    template__spec__containers__liveness_probe__http_get =
  { path; port; http_headers }

let template__spec__containers__liveness_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?timeout_seconds
    ?(grpc = []) ?(http_get = []) () :
    template__spec__containers__liveness_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    timeout_seconds;
    grpc;
    http_get;
  }

let template__spec__containers__ports ?container_port ?name ?protocol
    () : template__spec__containers__ports =
  { container_port; name; protocol }

let template__spec__containers__resources ?limits ?requests () :
    template__spec__containers__resources =
  { limits; requests }

let template__spec__containers__startup_probe__grpc ?port ?service ()
    : template__spec__containers__startup_probe__grpc =
  { port; service }

let template__spec__containers__startup_probe__http_get__http_headers
    ?value ~name () :
    template__spec__containers__startup_probe__http_get__http_headers
    =
  { name; value }

let template__spec__containers__startup_probe__http_get ?path ?port
    ?(http_headers = []) () :
    template__spec__containers__startup_probe__http_get =
  { path; port; http_headers }

let template__spec__containers__startup_probe__tcp_socket ?port () :
    template__spec__containers__startup_probe__tcp_socket =
  { port }

let template__spec__containers__startup_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?timeout_seconds
    ?(grpc = []) ?(http_get = []) ?(tcp_socket = []) () :
    template__spec__containers__startup_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    timeout_seconds;
    grpc;
    http_get;
    tcp_socket;
  }

let template__spec__containers__volume_mounts ~mount_path ~name () :
    template__spec__containers__volume_mounts =
  { mount_path; name }

let template__spec__containers ?args ?command ?name ?working_dir
    ?(env_from = []) ?(liveness_probe = []) ?(ports = [])
    ?(resources = []) ?(startup_probe = []) ?(volume_mounts = [])
    ~image ~env () : template__spec__containers =
  {
    args;
    command;
    image;
    name;
    working_dir;
    env;
    env_from;
    liveness_probe;
    ports;
    resources;
    startup_probe;
    volume_mounts;
  }

let template__spec__volumes__secret__items ?mode ~key ~path () :
    template__spec__volumes__secret__items =
  { key; mode; path }

let template__spec__volumes__secret ?default_mode ?(items = [])
    ~secret_name () : template__spec__volumes__secret =
  { default_mode; secret_name; items }

let template__spec__volumes ?(secret = []) ~name () :
    template__spec__volumes =
  { name; secret }

let template__spec ?container_concurrency ?service_account_name
    ?timeout_seconds ?(containers = []) ?(volumes = []) () :
    template__spec =
  {
    container_concurrency;
    service_account_name;
    timeout_seconds;
    containers;
    volumes;
  }

let template ?(metadata = []) ?(spec = []) () : template =
  { metadata; spec }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let traffic ?latest_revision ?revision_name ?tag ~percent () :
    traffic =
  { latest_revision; percent; revision_name; tag }

let google_cloud_run_service ?autogenerate_revision_name ?id ?project
    ?(metadata = []) ?(template = []) ?timeouts ?(traffic = [])
    ~location ~name () : google_cloud_run_service =
  {
    autogenerate_revision_name;
    id;
    location;
    name;
    project;
    metadata;
    template;
    timeouts;
    traffic;
  }

type t = {
  autogenerate_revision_name : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : status list prop;
}

let make ?autogenerate_revision_name ?id ?project ?(metadata = [])
    ?(template = []) ?timeouts ?(traffic = []) ~location ~name __id =
  let __type = "google_cloud_run_service" in
  let __attrs =
    ({
       autogenerate_revision_name =
         Prop.computed __type __id "autogenerate_revision_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_service
        (google_cloud_run_service ?autogenerate_revision_name ?id
           ?project ~metadata ~template ?timeouts ~traffic ~location
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?autogenerate_revision_name ?id ?project
    ?(metadata = []) ?(template = []) ?timeouts ?(traffic = [])
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?autogenerate_revision_name ?id ?project ~metadata ~template
      ?timeouts ~traffic ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
