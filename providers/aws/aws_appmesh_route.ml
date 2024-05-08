(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__grpc_route__action__weighted_target = {
  port : float prop option; [@option]
  virtual_node : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__action__weighted_target) -> ()

let yojson_of_spec__grpc_route__action__weighted_target =
  (function
   | {
       port = v_port;
       virtual_node = v_virtual_node;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_node in
         ("virtual_node", arg) :: bnds
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
    : spec__grpc_route__action__weighted_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__action__weighted_target

[@@@deriving.end]

type spec__grpc_route__action = {
  weighted_target : spec__grpc_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__action) -> ()

let yojson_of_spec__grpc_route__action =
  (function
   | { weighted_target = v_weighted_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weighted_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__action__weighted_target)
               v_weighted_target
           in
           let bnd = "weighted_target", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__action

[@@@deriving.end]

type spec__grpc_route__match__metadata__match__range = {
  end_ : float prop; [@key "end"]
  start : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__grpc_route__match__metadata__match__range) -> ()

let yojson_of_spec__grpc_route__match__metadata__match__range =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__match__metadata__match__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__match__metadata__match__range

[@@@deriving.end]

type spec__grpc_route__match__metadata__match = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
  suffix : string prop option; [@option]
  range : spec__grpc_route__match__metadata__match__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__match__metadata__match) -> ()

let yojson_of_spec__grpc_route__match__metadata__match =
  (function
   | {
       exact = v_exact;
       prefix = v_prefix;
       regex = v_regex;
       suffix = v_suffix;
       range = v_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__match__metadata__match__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__match__metadata__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__match__metadata__match

[@@@deriving.end]

type spec__grpc_route__match__metadata = {
  invert : bool prop option; [@option]
  name : string prop;
  match_ : spec__grpc_route__match__metadata__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__match__metadata) -> ()

let yojson_of_spec__grpc_route__match__metadata =
  (function
   | { invert = v_invert; name = v_name; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__match__metadata__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_invert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__match__metadata ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__match__metadata

[@@@deriving.end]

type spec__grpc_route__match = {
  method_name : string prop option; [@option]
  port : float prop option; [@option]
  prefix : string prop option; [@option]
  service_name : string prop option; [@option]
  metadata : spec__grpc_route__match__metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__match) -> ()

let yojson_of_spec__grpc_route__match =
  (function
   | {
       method_name = v_method_name;
       port = v_port;
       prefix = v_prefix;
       service_name = v_service_name;
       metadata = v_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__match__metadata)
               v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
       let bnds =
         match v_method_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__match

[@@@deriving.end]

type spec__grpc_route__retry_policy__per_retry_timeout = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__grpc_route__retry_policy__per_retry_timeout) -> ()

let yojson_of_spec__grpc_route__retry_policy__per_retry_timeout =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__retry_policy__per_retry_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__retry_policy__per_retry_timeout

[@@@deriving.end]

type spec__grpc_route__retry_policy = {
  grpc_retry_events : string prop list option; [@option]
  http_retry_events : string prop list option; [@option]
  max_retries : float prop;
  tcp_retry_events : string prop list option; [@option]
  per_retry_timeout :
    spec__grpc_route__retry_policy__per_retry_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__retry_policy) -> ()

let yojson_of_spec__grpc_route__retry_policy =
  (function
   | {
       grpc_retry_events = v_grpc_retry_events;
       http_retry_events = v_http_retry_events;
       max_retries = v_max_retries;
       tcp_retry_events = v_tcp_retry_events;
       per_retry_timeout = v_per_retry_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_retry_timeout then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__retry_policy__per_retry_timeout)
               v_per_retry_timeout
           in
           let bnd = "per_retry_timeout", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tcp_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tcp_retry_events", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_retries in
         ("max_retries", arg) :: bnds
       in
       let bnds =
         match v_http_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "http_retry_events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grpc_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grpc_retry_events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__retry_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__retry_policy

[@@@deriving.end]

type spec__grpc_route__timeout__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__timeout__idle) -> ()

let yojson_of_spec__grpc_route__timeout__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__timeout__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__timeout__idle

[@@@deriving.end]

type spec__grpc_route__timeout__per_request = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__timeout__per_request) -> ()

let yojson_of_spec__grpc_route__timeout__per_request =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__timeout__per_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__timeout__per_request

[@@@deriving.end]

type spec__grpc_route__timeout = {
  idle : spec__grpc_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  per_request : spec__grpc_route__timeout__per_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__timeout) -> ()

let yojson_of_spec__grpc_route__timeout =
  (function
   | { idle = v_idle; per_request = v_per_request } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_request then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__timeout__per_request)
               v_per_request
           in
           let bnd = "per_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_idle then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__timeout__idle)
               v_idle
           in
           let bnd = "idle", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__timeout

[@@@deriving.end]

type spec__grpc_route = {
  action : spec__grpc_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__grpc_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  retry_policy : spec__grpc_route__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeout : spec__grpc_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route) -> ()

let yojson_of_spec__grpc_route =
  (function
   | {
       action = v_action;
       match_ = v_match_;
       retry_policy = v_retry_policy;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timeout then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__grpc_route__timeout)
               v_timeout
           in
           let bnd = "timeout", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retry_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__grpc_route__retry_policy)
               v_retry_policy
           in
           let bnd = "retry_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__grpc_route__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__grpc_route__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route

[@@@deriving.end]

type spec__http2_route__action__weighted_target = {
  port : float prop option; [@option]
  virtual_node : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action__weighted_target) -> ()

let yojson_of_spec__http2_route__action__weighted_target =
  (function
   | {
       port = v_port;
       virtual_node = v_virtual_node;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_node in
         ("virtual_node", arg) :: bnds
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
    : spec__http2_route__action__weighted_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__weighted_target

[@@@deriving.end]

type spec__http2_route__action = {
  weighted_target : spec__http2_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action) -> ()

let yojson_of_spec__http2_route__action =
  (function
   | { weighted_target = v_weighted_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weighted_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__weighted_target)
               v_weighted_target
           in
           let bnd = "weighted_target", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action

[@@@deriving.end]

type spec__http2_route__match__header__match__range = {
  end_ : float prop; [@key "end"]
  start : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http2_route__match__header__match__range) -> ()

let yojson_of_spec__http2_route__match__header__match__range =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__header__match__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__header__match__range

[@@@deriving.end]

type spec__http2_route__match__header__match = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
  suffix : string prop option; [@option]
  range : spec__http2_route__match__header__match__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__match__header__match) -> ()

let yojson_of_spec__http2_route__match__header__match =
  (function
   | {
       exact = v_exact;
       prefix = v_prefix;
       regex = v_regex;
       suffix = v_suffix;
       range = v_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__match__header__match__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__header__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__header__match

[@@@deriving.end]

type spec__http2_route__match__header = {
  invert : bool prop option; [@option]
  name : string prop;
  match_ : spec__http2_route__match__header__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__match__header) -> ()

let yojson_of_spec__http2_route__match__header =
  (function
   | { invert = v_invert; name = v_name; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__match__header__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_invert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__header

[@@@deriving.end]

type spec__http2_route__match__path = {
  exact : string prop option; [@option]
  regex : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__match__path) -> ()

let yojson_of_spec__http2_route__match__path =
  (function
   | { exact = v_exact; regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__path

[@@@deriving.end]

type spec__http2_route__match__query_parameter__match = {
  exact : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http2_route__match__query_parameter__match) -> ()

let yojson_of_spec__http2_route__match__query_parameter__match =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__query_parameter__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__query_parameter__match

[@@@deriving.end]

type spec__http2_route__match__query_parameter = {
  name : string prop;
  match_ : spec__http2_route__match__query_parameter__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__match__query_parameter) -> ()

let yojson_of_spec__http2_route__match__query_parameter =
  (function
   | { name = v_name; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__match__query_parameter__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__query_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__query_parameter

[@@@deriving.end]

type spec__http2_route__match = {
  method_ : string prop option; [@option] [@key "method"]
  port : float prop option; [@option]
  prefix : string prop option; [@option]
  scheme : string prop option; [@option]
  header : spec__http2_route__match__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path : spec__http2_route__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_parameter : spec__http2_route__match__query_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__match) -> ()

let yojson_of_spec__http2_route__match =
  (function
   | {
       method_ = v_method_;
       port = v_port;
       prefix = v_prefix;
       scheme = v_scheme;
       header = v_header;
       path = v_path;
       query_parameter = v_query_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_parameter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__match__query_parameter)
               v_query_parameter
           in
           let bnd = "query_parameter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http2_route__match__path)
               v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__match__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match

[@@@deriving.end]

type spec__http2_route__retry_policy__per_retry_timeout = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http2_route__retry_policy__per_retry_timeout) -> ()

let yojson_of_spec__http2_route__retry_policy__per_retry_timeout =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__retry_policy__per_retry_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__retry_policy__per_retry_timeout

[@@@deriving.end]

type spec__http2_route__retry_policy = {
  http_retry_events : string prop list option; [@option]
  max_retries : float prop;
  tcp_retry_events : string prop list option; [@option]
  per_retry_timeout :
    spec__http2_route__retry_policy__per_retry_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__retry_policy) -> ()

let yojson_of_spec__http2_route__retry_policy =
  (function
   | {
       http_retry_events = v_http_retry_events;
       max_retries = v_max_retries;
       tcp_retry_events = v_tcp_retry_events;
       per_retry_timeout = v_per_retry_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_retry_timeout then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__retry_policy__per_retry_timeout)
               v_per_retry_timeout
           in
           let bnd = "per_retry_timeout", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tcp_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tcp_retry_events", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_retries in
         ("max_retries", arg) :: bnds
       in
       let bnds =
         match v_http_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "http_retry_events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__retry_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__retry_policy

[@@@deriving.end]

type spec__http2_route__timeout__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__timeout__idle) -> ()

let yojson_of_spec__http2_route__timeout__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__timeout__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__timeout__idle

[@@@deriving.end]

type spec__http2_route__timeout__per_request = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__timeout__per_request) -> ()

let yojson_of_spec__http2_route__timeout__per_request =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__timeout__per_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__timeout__per_request

[@@@deriving.end]

type spec__http2_route__timeout = {
  idle : spec__http2_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  per_request : spec__http2_route__timeout__per_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__timeout) -> ()

let yojson_of_spec__http2_route__timeout =
  (function
   | { idle = v_idle; per_request = v_per_request } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_request then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__timeout__per_request)
               v_per_request
           in
           let bnd = "per_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_idle then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__timeout__idle)
               v_idle
           in
           let bnd = "idle", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__timeout

[@@@deriving.end]

type spec__http2_route = {
  action : spec__http2_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__http2_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  retry_policy : spec__http2_route__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeout : spec__http2_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route) -> ()

let yojson_of_spec__http2_route =
  (function
   | {
       action = v_action;
       match_ = v_match_;
       retry_policy = v_retry_policy;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timeout then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http2_route__timeout)
               v_timeout
           in
           let bnd = "timeout", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retry_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__retry_policy)
               v_retry_policy
           in
           let bnd = "retry_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http2_route__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http2_route__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route

[@@@deriving.end]

type spec__http_route__action__weighted_target = {
  port : float prop option; [@option]
  virtual_node : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action__weighted_target) -> ()

let yojson_of_spec__http_route__action__weighted_target =
  (function
   | {
       port = v_port;
       virtual_node = v_virtual_node;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_node in
         ("virtual_node", arg) :: bnds
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
    : spec__http_route__action__weighted_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__weighted_target

[@@@deriving.end]

type spec__http_route__action = {
  weighted_target : spec__http_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action) -> ()

let yojson_of_spec__http_route__action =
  (function
   | { weighted_target = v_weighted_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weighted_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__weighted_target)
               v_weighted_target
           in
           let bnd = "weighted_target", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action

[@@@deriving.end]

type spec__http_route__match__header__match__range = {
  end_ : float prop; [@key "end"]
  start : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match__header__match__range) -> ()

let yojson_of_spec__http_route__match__header__match__range =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_ in
         ("end", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__header__match__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__header__match__range

[@@@deriving.end]

type spec__http_route__match__header__match = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
  regex : string prop option; [@option]
  suffix : string prop option; [@option]
  range : spec__http_route__match__header__match__range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match__header__match) -> ()

let yojson_of_spec__http_route__match__header__match =
  (function
   | {
       exact = v_exact;
       prefix = v_prefix;
       regex = v_regex;
       suffix = v_suffix;
       range = v_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__match__header__match__range)
               v_range
           in
           let bnd = "range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__header__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__header__match

[@@@deriving.end]

type spec__http_route__match__header = {
  invert : bool prop option; [@option]
  name : string prop;
  match_ : spec__http_route__match__header__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match__header) -> ()

let yojson_of_spec__http_route__match__header =
  (function
   | { invert = v_invert; name = v_name; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__match__header__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_invert with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__header

[@@@deriving.end]

type spec__http_route__match__path = {
  exact : string prop option; [@option]
  regex : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match__path) -> ()

let yojson_of_spec__http_route__match__path =
  (function
   | { exact = v_exact; regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__path

[@@@deriving.end]

type spec__http_route__match__query_parameter__match = {
  exact : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http_route__match__query_parameter__match) -> ()

let yojson_of_spec__http_route__match__query_parameter__match =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__query_parameter__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__query_parameter__match

[@@@deriving.end]

type spec__http_route__match__query_parameter = {
  name : string prop;
  match_ : spec__http_route__match__query_parameter__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match__query_parameter) -> ()

let yojson_of_spec__http_route__match__query_parameter =
  (function
   | { name = v_name; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__match__query_parameter__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__query_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__query_parameter

[@@@deriving.end]

type spec__http_route__match = {
  method_ : string prop option; [@option] [@key "method"]
  port : float prop option; [@option]
  prefix : string prop option; [@option]
  scheme : string prop option; [@option]
  header : spec__http_route__match__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path : spec__http_route__match__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_parameter : spec__http_route__match__query_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match) -> ()

let yojson_of_spec__http_route__match =
  (function
   | {
       method_ = v_method_;
       port = v_port;
       prefix = v_prefix;
       scheme = v_scheme;
       header = v_header;
       path = v_path;
       query_parameter = v_query_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_parameter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__match__query_parameter)
               v_query_parameter
           in
           let bnd = "query_parameter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http_route__match__path)
               v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__match__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match

[@@@deriving.end]

type spec__http_route__retry_policy__per_retry_timeout = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http_route__retry_policy__per_retry_timeout) -> ()

let yojson_of_spec__http_route__retry_policy__per_retry_timeout =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__retry_policy__per_retry_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__retry_policy__per_retry_timeout

[@@@deriving.end]

type spec__http_route__retry_policy = {
  http_retry_events : string prop list option; [@option]
  max_retries : float prop;
  tcp_retry_events : string prop list option; [@option]
  per_retry_timeout :
    spec__http_route__retry_policy__per_retry_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__retry_policy) -> ()

let yojson_of_spec__http_route__retry_policy =
  (function
   | {
       http_retry_events = v_http_retry_events;
       max_retries = v_max_retries;
       tcp_retry_events = v_tcp_retry_events;
       per_retry_timeout = v_per_retry_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_retry_timeout then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__retry_policy__per_retry_timeout)
               v_per_retry_timeout
           in
           let bnd = "per_retry_timeout", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tcp_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tcp_retry_events", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_retries in
         ("max_retries", arg) :: bnds
       in
       let bnds =
         match v_http_retry_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "http_retry_events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__retry_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__retry_policy

[@@@deriving.end]

type spec__http_route__timeout__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__timeout__idle) -> ()

let yojson_of_spec__http_route__timeout__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__timeout__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__timeout__idle

[@@@deriving.end]

type spec__http_route__timeout__per_request = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__timeout__per_request) -> ()

let yojson_of_spec__http_route__timeout__per_request =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__timeout__per_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__timeout__per_request

[@@@deriving.end]

type spec__http_route__timeout = {
  idle : spec__http_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  per_request : spec__http_route__timeout__per_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__timeout) -> ()

let yojson_of_spec__http_route__timeout =
  (function
   | { idle = v_idle; per_request = v_per_request } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_request then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__timeout__per_request)
               v_per_request
           in
           let bnd = "per_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_idle then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__timeout__idle)
               v_idle
           in
           let bnd = "idle", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__timeout

[@@@deriving.end]

type spec__http_route = {
  action : spec__http_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__http_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  retry_policy : spec__http_route__retry_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeout : spec__http_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route) -> ()

let yojson_of_spec__http_route =
  (function
   | {
       action = v_action;
       match_ = v_match_;
       retry_policy = v_retry_policy;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timeout then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http_route__timeout)
               v_timeout
           in
           let bnd = "timeout", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retry_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http_route__retry_policy)
               v_retry_policy
           in
           let bnd = "retry_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http_route__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http_route__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route

[@@@deriving.end]

type spec__tcp_route__action__weighted_target = {
  port : float prop option; [@option]
  virtual_node : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tcp_route__action__weighted_target) -> ()

let yojson_of_spec__tcp_route__action__weighted_target =
  (function
   | {
       port = v_port;
       virtual_node = v_virtual_node;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_node in
         ("virtual_node", arg) :: bnds
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
    : spec__tcp_route__action__weighted_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tcp_route__action__weighted_target

[@@@deriving.end]

type spec__tcp_route__action = {
  weighted_target : spec__tcp_route__action__weighted_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tcp_route__action) -> ()

let yojson_of_spec__tcp_route__action =
  (function
   | { weighted_target = v_weighted_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weighted_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__tcp_route__action__weighted_target)
               v_weighted_target
           in
           let bnd = "weighted_target", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__tcp_route__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tcp_route__action

[@@@deriving.end]

type spec__tcp_route__match = { port : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tcp_route__match) -> ()

let yojson_of_spec__tcp_route__match =
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
    : spec__tcp_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tcp_route__match

[@@@deriving.end]

type spec__tcp_route__timeout__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tcp_route__timeout__idle) -> ()

let yojson_of_spec__tcp_route__timeout__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__tcp_route__timeout__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tcp_route__timeout__idle

[@@@deriving.end]

type spec__tcp_route__timeout = {
  idle : spec__tcp_route__timeout__idle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tcp_route__timeout) -> ()

let yojson_of_spec__tcp_route__timeout =
  (function
   | { idle = v_idle } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_idle then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__tcp_route__timeout__idle)
               v_idle
           in
           let bnd = "idle", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__tcp_route__timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tcp_route__timeout

[@@@deriving.end]

type spec__tcp_route = {
  action : spec__tcp_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__tcp_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  timeout : spec__tcp_route__timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tcp_route) -> ()

let yojson_of_spec__tcp_route =
  (function
   | { action = v_action; match_ = v_match_; timeout = v_timeout } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timeout then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__tcp_route__timeout)
               v_timeout
           in
           let bnd = "timeout", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__tcp_route__match)
               v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__tcp_route__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__tcp_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tcp_route

[@@@deriving.end]

type spec = {
  priority : float prop option; [@option]
  grpc_route : spec__grpc_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http2_route : spec__http2_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_route : spec__http_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tcp_route : spec__tcp_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       priority = v_priority;
       grpc_route = v_grpc_route;
       http2_route = v_http2_route;
       http_route = v_http_route;
       tcp_route = v_tcp_route;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tcp_route then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__tcp_route) v_tcp_route
           in
           let bnd = "tcp_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_route then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http_route) v_http_route
           in
           let bnd = "http_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http2_route then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__http2_route)
               v_http2_route
           in
           let bnd = "http2_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grpc_route then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__grpc_route) v_grpc_route
           in
           let bnd = "grpc_route", arg in
           bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type aws_appmesh_route = {
  id : string prop option; [@option]
  mesh_name : string prop;
  mesh_owner : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  virtual_router_name : string prop;
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_route) -> ()

let yojson_of_aws_appmesh_route =
  (function
   | {
       id = v_id;
       mesh_name = v_mesh_name;
       mesh_owner = v_mesh_owner;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       virtual_router_name = v_virtual_router_name;
       spec = v_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_router_name
         in
         ("virtual_router_name", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mesh_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mesh_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mesh_name in
         ("mesh_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appmesh_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_route

[@@@deriving.end]

let spec__grpc_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__grpc_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__grpc_route__action ~weighted_target () :
    spec__grpc_route__action =
  { weighted_target }

let spec__grpc_route__match__metadata__match__range ~end_ ~start () :
    spec__grpc_route__match__metadata__match__range =
  { end_; start }

let spec__grpc_route__match__metadata__match ?exact ?prefix ?regex
    ?suffix ?(range = []) () :
    spec__grpc_route__match__metadata__match =
  { exact; prefix; regex; suffix; range }

let spec__grpc_route__match__metadata ?invert ?(match_ = []) ~name ()
    : spec__grpc_route__match__metadata =
  { invert; name; match_ }

let spec__grpc_route__match ?method_name ?port ?prefix ?service_name
    ~metadata () : spec__grpc_route__match =
  { method_name; port; prefix; service_name; metadata }

let spec__grpc_route__retry_policy__per_retry_timeout ~unit ~value ()
    : spec__grpc_route__retry_policy__per_retry_timeout =
  { unit; value }

let spec__grpc_route__retry_policy ?grpc_retry_events
    ?http_retry_events ?tcp_retry_events ~max_retries
    ~per_retry_timeout () : spec__grpc_route__retry_policy =
  {
    grpc_retry_events;
    http_retry_events;
    max_retries;
    tcp_retry_events;
    per_retry_timeout;
  }

let spec__grpc_route__timeout__idle ~unit ~value () :
    spec__grpc_route__timeout__idle =
  { unit; value }

let spec__grpc_route__timeout__per_request ~unit ~value () :
    spec__grpc_route__timeout__per_request =
  { unit; value }

let spec__grpc_route__timeout ?(idle = []) ?(per_request = []) () :
    spec__grpc_route__timeout =
  { idle; per_request }

let spec__grpc_route ?(match_ = []) ?(retry_policy = [])
    ?(timeout = []) ~action () : spec__grpc_route =
  { action; match_; retry_policy; timeout }

let spec__http2_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__http2_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__http2_route__action ~weighted_target () :
    spec__http2_route__action =
  { weighted_target }

let spec__http2_route__match__header__match__range ~end_ ~start () :
    spec__http2_route__match__header__match__range =
  { end_; start }

let spec__http2_route__match__header__match ?exact ?prefix ?regex
    ?suffix ?(range = []) () :
    spec__http2_route__match__header__match =
  { exact; prefix; regex; suffix; range }

let spec__http2_route__match__header ?invert ?(match_ = []) ~name ()
    : spec__http2_route__match__header =
  { invert; name; match_ }

let spec__http2_route__match__path ?exact ?regex () :
    spec__http2_route__match__path =
  { exact; regex }

let spec__http2_route__match__query_parameter__match ?exact () :
    spec__http2_route__match__query_parameter__match =
  { exact }

let spec__http2_route__match__query_parameter ?(match_ = []) ~name ()
    : spec__http2_route__match__query_parameter =
  { name; match_ }

let spec__http2_route__match ?method_ ?port ?prefix ?scheme
    ?(path = []) ~header ~query_parameter () :
    spec__http2_route__match =
  { method_; port; prefix; scheme; header; path; query_parameter }

let spec__http2_route__retry_policy__per_retry_timeout ~unit ~value
    () : spec__http2_route__retry_policy__per_retry_timeout =
  { unit; value }

let spec__http2_route__retry_policy ?http_retry_events
    ?tcp_retry_events ~max_retries ~per_retry_timeout () :
    spec__http2_route__retry_policy =
  {
    http_retry_events;
    max_retries;
    tcp_retry_events;
    per_retry_timeout;
  }

let spec__http2_route__timeout__idle ~unit ~value () :
    spec__http2_route__timeout__idle =
  { unit; value }

let spec__http2_route__timeout__per_request ~unit ~value () :
    spec__http2_route__timeout__per_request =
  { unit; value }

let spec__http2_route__timeout ?(idle = []) ?(per_request = []) () :
    spec__http2_route__timeout =
  { idle; per_request }

let spec__http2_route ?(retry_policy = []) ?(timeout = []) ~action
    ~match_ () : spec__http2_route =
  { action; match_; retry_policy; timeout }

let spec__http_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__http_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__http_route__action ~weighted_target () :
    spec__http_route__action =
  { weighted_target }

let spec__http_route__match__header__match__range ~end_ ~start () :
    spec__http_route__match__header__match__range =
  { end_; start }

let spec__http_route__match__header__match ?exact ?prefix ?regex
    ?suffix ?(range = []) () : spec__http_route__match__header__match
    =
  { exact; prefix; regex; suffix; range }

let spec__http_route__match__header ?invert ?(match_ = []) ~name () :
    spec__http_route__match__header =
  { invert; name; match_ }

let spec__http_route__match__path ?exact ?regex () :
    spec__http_route__match__path =
  { exact; regex }

let spec__http_route__match__query_parameter__match ?exact () :
    spec__http_route__match__query_parameter__match =
  { exact }

let spec__http_route__match__query_parameter ?(match_ = []) ~name ()
    : spec__http_route__match__query_parameter =
  { name; match_ }

let spec__http_route__match ?method_ ?port ?prefix ?scheme
    ?(path = []) ~header ~query_parameter () :
    spec__http_route__match =
  { method_; port; prefix; scheme; header; path; query_parameter }

let spec__http_route__retry_policy__per_retry_timeout ~unit ~value ()
    : spec__http_route__retry_policy__per_retry_timeout =
  { unit; value }

let spec__http_route__retry_policy ?http_retry_events
    ?tcp_retry_events ~max_retries ~per_retry_timeout () :
    spec__http_route__retry_policy =
  {
    http_retry_events;
    max_retries;
    tcp_retry_events;
    per_retry_timeout;
  }

let spec__http_route__timeout__idle ~unit ~value () :
    spec__http_route__timeout__idle =
  { unit; value }

let spec__http_route__timeout__per_request ~unit ~value () :
    spec__http_route__timeout__per_request =
  { unit; value }

let spec__http_route__timeout ?(idle = []) ?(per_request = []) () :
    spec__http_route__timeout =
  { idle; per_request }

let spec__http_route ?(retry_policy = []) ?(timeout = []) ~action
    ~match_ () : spec__http_route =
  { action; match_; retry_policy; timeout }

let spec__tcp_route__action__weighted_target ?port ~virtual_node
    ~weight () : spec__tcp_route__action__weighted_target =
  { port; virtual_node; weight }

let spec__tcp_route__action ~weighted_target () :
    spec__tcp_route__action =
  { weighted_target }

let spec__tcp_route__match ?port () : spec__tcp_route__match =
  { port }

let spec__tcp_route__timeout__idle ~unit ~value () :
    spec__tcp_route__timeout__idle =
  { unit; value }

let spec__tcp_route__timeout ?(idle = []) () :
    spec__tcp_route__timeout =
  { idle }

let spec__tcp_route ?(match_ = []) ?(timeout = []) ~action () :
    spec__tcp_route =
  { action; match_; timeout }

let spec ?priority ?(grpc_route = []) ?(http2_route = [])
    ?(http_route = []) ?(tcp_route = []) () : spec =
  { priority; grpc_route; http2_route; http_route; tcp_route }

let aws_appmesh_route ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_router_name ~spec () : aws_appmesh_route =
  {
    id;
    mesh_name;
    mesh_owner;
    name;
    tags;
    tags_all;
    virtual_router_name;
    spec;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_router_name : string prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
    ~virtual_router_name ~spec __id =
  let __type = "aws_appmesh_route" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       virtual_router_name =
         Prop.computed __type __id "virtual_router_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_route
        (aws_appmesh_route ?id ?mesh_owner ?tags ?tags_all ~mesh_name
           ~name ~virtual_router_name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_router_name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
      ~virtual_router_name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
