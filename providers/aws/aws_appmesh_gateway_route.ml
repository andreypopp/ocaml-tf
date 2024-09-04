(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__grpc_route__action__target__virtual_service = {
  virtual_service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__grpc_route__action__target__virtual_service) -> ()

let yojson_of_spec__grpc_route__action__target__virtual_service =
  (function
   | { virtual_service_name = v_virtual_service_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_service_name
         in
         ("virtual_service_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__action__target__virtual_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__action__target__virtual_service

[@@@deriving.end]

type spec__grpc_route__action__target = {
  port : float prop option; [@option]
  virtual_service :
    spec__grpc_route__action__target__virtual_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__action__target) -> ()

let yojson_of_spec__grpc_route__action__target =
  (function
   | { port = v_port; virtual_service = v_virtual_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__action__target__virtual_service)
               v_virtual_service
           in
           let bnd = "virtual_service", arg in
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
    : spec__grpc_route__action__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__action__target

[@@@deriving.end]

type spec__grpc_route__action = {
  target : spec__grpc_route__action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__action) -> ()

let yojson_of_spec__grpc_route__action =
  (function
   | { target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__grpc_route__action__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__grpc_route__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__action

[@@@deriving.end]

type spec__grpc_route__match = {
  port : float prop option; [@option]
  service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route__match) -> ()

let yojson_of_spec__grpc_route__match =
  (function
   | { port = v_port; service_name = v_service_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
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
    : spec__grpc_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__grpc_route__match

[@@@deriving.end]

type spec__grpc_route = {
  action : spec__grpc_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__grpc_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__grpc_route) -> ()

let yojson_of_spec__grpc_route =
  (function
   | { action = v_action; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type spec__http2_route__action__rewrite__hostname = {
  default_target_hostname : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action__rewrite__hostname) -> ()

let yojson_of_spec__http2_route__action__rewrite__hostname =
  (function
   | { default_target_hostname = v_default_target_hostname } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_target_hostname
         in
         ("default_target_hostname", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__action__rewrite__hostname ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__rewrite__hostname

[@@@deriving.end]

type spec__http2_route__action__rewrite__path = {
  exact : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action__rewrite__path) -> ()

let yojson_of_spec__http2_route__action__rewrite__path =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exact in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__action__rewrite__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__rewrite__path

[@@@deriving.end]

type spec__http2_route__action__rewrite__prefix = {
  default_prefix : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action__rewrite__prefix) -> ()

let yojson_of_spec__http2_route__action__rewrite__prefix =
  (function
   | { default_prefix = v_default_prefix; value = v_value } ->
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
         match v_default_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__action__rewrite__prefix ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__rewrite__prefix

[@@@deriving.end]

type spec__http2_route__action__rewrite = {
  hostname : spec__http2_route__action__rewrite__hostname list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path : spec__http2_route__action__rewrite__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix : spec__http2_route__action__rewrite__prefix list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action__rewrite) -> ()

let yojson_of_spec__http2_route__action__rewrite =
  (function
   | { hostname = v_hostname; path = v_path; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_prefix then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__rewrite__prefix)
               v_prefix
           in
           let bnd = "prefix", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__rewrite__path)
               v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hostname then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__rewrite__hostname)
               v_hostname
           in
           let bnd = "hostname", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__action__rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__rewrite

[@@@deriving.end]

type spec__http2_route__action__target__virtual_service = {
  virtual_service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http2_route__action__target__virtual_service) -> ()

let yojson_of_spec__http2_route__action__target__virtual_service =
  (function
   | { virtual_service_name = v_virtual_service_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_service_name
         in
         ("virtual_service_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__http2_route__action__target__virtual_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__target__virtual_service

[@@@deriving.end]

type spec__http2_route__action__target = {
  port : float prop option; [@option]
  virtual_service :
    spec__http2_route__action__target__virtual_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action__target) -> ()

let yojson_of_spec__http2_route__action__target =
  (function
   | { port = v_port; virtual_service = v_virtual_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__target__virtual_service)
               v_virtual_service
           in
           let bnd = "virtual_service", arg in
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
    : spec__http2_route__action__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__action__target

[@@@deriving.end]

type spec__http2_route__action = {
  rewrite : spec__http2_route__action__rewrite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : spec__http2_route__action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__action) -> ()

let yojson_of_spec__http2_route__action =
  (function
   | { rewrite = v_rewrite; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rewrite then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__action__rewrite)
               v_rewrite
           in
           let bnd = "rewrite", arg in
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

type spec__http2_route__match__hostname = {
  exact : string prop option; [@option]
  suffix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route__match__hostname) -> ()

let yojson_of_spec__http2_route__match__hostname =
  (function
   | { exact = v_exact; suffix = v_suffix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http2_route__match__hostname ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match__hostname

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
  port : float prop option; [@option]
  prefix : string prop option; [@option]
  header : spec__http2_route__match__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hostname : spec__http2_route__match__hostname list;
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
       port = v_port;
       prefix = v_prefix;
       header = v_header;
       hostname = v_hostname;
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
         if Stdlib.( = ) [] v_hostname then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http2_route__match__hostname)
               v_hostname
           in
           let bnd = "hostname", arg in
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
       `Assoc bnds
    : spec__http2_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http2_route__match

[@@@deriving.end]

type spec__http2_route = {
  action : spec__http2_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__http2_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http2_route) -> ()

let yojson_of_spec__http2_route =
  (function
   | { action = v_action; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type spec__http_route__action__rewrite__hostname = {
  default_target_hostname : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action__rewrite__hostname) -> ()

let yojson_of_spec__http_route__action__rewrite__hostname =
  (function
   | { default_target_hostname = v_default_target_hostname } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_target_hostname
         in
         ("default_target_hostname", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__action__rewrite__hostname ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__rewrite__hostname

[@@@deriving.end]

type spec__http_route__action__rewrite__path = {
  exact : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action__rewrite__path) -> ()

let yojson_of_spec__http_route__action__rewrite__path =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exact in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__action__rewrite__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__rewrite__path

[@@@deriving.end]

type spec__http_route__action__rewrite__prefix = {
  default_prefix : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action__rewrite__prefix) -> ()

let yojson_of_spec__http_route__action__rewrite__prefix =
  (function
   | { default_prefix = v_default_prefix; value = v_value } ->
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
         match v_default_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__action__rewrite__prefix ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__rewrite__prefix

[@@@deriving.end]

type spec__http_route__action__rewrite = {
  hostname : spec__http_route__action__rewrite__hostname list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path : spec__http_route__action__rewrite__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix : spec__http_route__action__rewrite__prefix list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action__rewrite) -> ()

let yojson_of_spec__http_route__action__rewrite =
  (function
   | { hostname = v_hostname; path = v_path; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_prefix then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__rewrite__prefix)
               v_prefix
           in
           let bnd = "prefix", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__rewrite__path)
               v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hostname then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__rewrite__hostname)
               v_hostname
           in
           let bnd = "hostname", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__action__rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__rewrite

[@@@deriving.end]

type spec__http_route__action__target__virtual_service = {
  virtual_service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__http_route__action__target__virtual_service) -> ()

let yojson_of_spec__http_route__action__target__virtual_service =
  (function
   | { virtual_service_name = v_virtual_service_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_service_name
         in
         ("virtual_service_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__http_route__action__target__virtual_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__target__virtual_service

[@@@deriving.end]

type spec__http_route__action__target = {
  port : float prop option; [@option]
  virtual_service :
    spec__http_route__action__target__virtual_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action__target) -> ()

let yojson_of_spec__http_route__action__target =
  (function
   | { port = v_port; virtual_service = v_virtual_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__target__virtual_service)
               v_virtual_service
           in
           let bnd = "virtual_service", arg in
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
    : spec__http_route__action__target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__action__target

[@@@deriving.end]

type spec__http_route__action = {
  rewrite : spec__http_route__action__rewrite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : spec__http_route__action__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__action) -> ()

let yojson_of_spec__http_route__action =
  (function
   | { rewrite = v_rewrite; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__target)
               v_target
           in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rewrite then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__action__rewrite)
               v_rewrite
           in
           let bnd = "rewrite", arg in
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

type spec__http_route__match__hostname = {
  exact : string prop option; [@option]
  suffix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route__match__hostname) -> ()

let yojson_of_spec__http_route__match__hostname =
  (function
   | { exact = v_exact; suffix = v_suffix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__http_route__match__hostname ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match__hostname

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
  port : float prop option; [@option]
  prefix : string prop option; [@option]
  header : spec__http_route__match__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hostname : spec__http_route__match__hostname list;
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
       port = v_port;
       prefix = v_prefix;
       header = v_header;
       hostname = v_hostname;
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
         if Stdlib.( = ) [] v_hostname then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__http_route__match__hostname)
               v_hostname
           in
           let bnd = "hostname", arg in
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
       `Assoc bnds
    : spec__http_route__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__http_route__match

[@@@deriving.end]

type spec__http_route = {
  action : spec__http_route__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : spec__http_route__match list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__http_route) -> ()

let yojson_of_spec__http_route =
  (function
   | { action = v_action; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type spec = {
  priority : float prop option; [@option]
  grpc_route : spec__grpc_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http2_route : spec__http2_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_route : spec__http_route list;
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
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_appmesh_gateway_route = {
  id : string prop option; [@option]
  mesh_name : string prop;
  mesh_owner : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  virtual_gateway_name : string prop;
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_gateway_route) -> ()

let yojson_of_aws_appmesh_gateway_route =
  (function
   | {
       id = v_id;
       mesh_name = v_mesh_name;
       mesh_owner = v_mesh_owner;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       virtual_gateway_name = v_virtual_gateway_name;
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
           yojson_of_prop yojson_of_string v_virtual_gateway_name
         in
         ("virtual_gateway_name", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
    : aws_appmesh_gateway_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_gateway_route

[@@@deriving.end]

let spec__grpc_route__action__target__virtual_service
    ~virtual_service_name () :
    spec__grpc_route__action__target__virtual_service =
  { virtual_service_name }

let spec__grpc_route__action__target ?port ~virtual_service () :
    spec__grpc_route__action__target =
  { port; virtual_service }

let spec__grpc_route__action ~target () : spec__grpc_route__action =
  { target }

let spec__grpc_route__match ?port ~service_name () :
    spec__grpc_route__match =
  { port; service_name }

let spec__grpc_route ~action ~match_ () : spec__grpc_route =
  { action; match_ }

let spec__http2_route__action__rewrite__hostname
    ~default_target_hostname () :
    spec__http2_route__action__rewrite__hostname =
  { default_target_hostname }

let spec__http2_route__action__rewrite__path ~exact () :
    spec__http2_route__action__rewrite__path =
  { exact }

let spec__http2_route__action__rewrite__prefix ?default_prefix ?value
    () : spec__http2_route__action__rewrite__prefix =
  { default_prefix; value }

let spec__http2_route__action__rewrite ?(hostname = []) ?(path = [])
    ?(prefix = []) () : spec__http2_route__action__rewrite =
  { hostname; path; prefix }

let spec__http2_route__action__target__virtual_service
    ~virtual_service_name () :
    spec__http2_route__action__target__virtual_service =
  { virtual_service_name }

let spec__http2_route__action__target ?port ~virtual_service () :
    spec__http2_route__action__target =
  { port; virtual_service }

let spec__http2_route__action ?(rewrite = []) ~target () :
    spec__http2_route__action =
  { rewrite; target }

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

let spec__http2_route__match__hostname ?exact ?suffix () :
    spec__http2_route__match__hostname =
  { exact; suffix }

let spec__http2_route__match__path ?exact ?regex () :
    spec__http2_route__match__path =
  { exact; regex }

let spec__http2_route__match__query_parameter__match ?exact () :
    spec__http2_route__match__query_parameter__match =
  { exact }

let spec__http2_route__match__query_parameter ?(match_ = []) ~name ()
    : spec__http2_route__match__query_parameter =
  { name; match_ }

let spec__http2_route__match ?port ?prefix ?(hostname = [])
    ?(path = []) ~header ~query_parameter () :
    spec__http2_route__match =
  { port; prefix; header; hostname; path; query_parameter }

let spec__http2_route ~action ~match_ () : spec__http2_route =
  { action; match_ }

let spec__http_route__action__rewrite__hostname
    ~default_target_hostname () :
    spec__http_route__action__rewrite__hostname =
  { default_target_hostname }

let spec__http_route__action__rewrite__path ~exact () :
    spec__http_route__action__rewrite__path =
  { exact }

let spec__http_route__action__rewrite__prefix ?default_prefix ?value
    () : spec__http_route__action__rewrite__prefix =
  { default_prefix; value }

let spec__http_route__action__rewrite ?(hostname = []) ?(path = [])
    ?(prefix = []) () : spec__http_route__action__rewrite =
  { hostname; path; prefix }

let spec__http_route__action__target__virtual_service
    ~virtual_service_name () :
    spec__http_route__action__target__virtual_service =
  { virtual_service_name }

let spec__http_route__action__target ?port ~virtual_service () :
    spec__http_route__action__target =
  { port; virtual_service }

let spec__http_route__action ?(rewrite = []) ~target () :
    spec__http_route__action =
  { rewrite; target }

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

let spec__http_route__match__hostname ?exact ?suffix () :
    spec__http_route__match__hostname =
  { exact; suffix }

let spec__http_route__match__path ?exact ?regex () :
    spec__http_route__match__path =
  { exact; regex }

let spec__http_route__match__query_parameter__match ?exact () :
    spec__http_route__match__query_parameter__match =
  { exact }

let spec__http_route__match__query_parameter ?(match_ = []) ~name ()
    : spec__http_route__match__query_parameter =
  { name; match_ }

let spec__http_route__match ?port ?prefix ?(hostname = [])
    ?(path = []) ~header ~query_parameter () :
    spec__http_route__match =
  { port; prefix; header; hostname; path; query_parameter }

let spec__http_route ~action ~match_ () : spec__http_route =
  { action; match_ }

let spec ?priority ?(grpc_route = []) ?(http2_route = [])
    ?(http_route = []) () : spec =
  { priority; grpc_route; http2_route; http_route }

let aws_appmesh_gateway_route ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~virtual_gateway_name ~spec () :
    aws_appmesh_gateway_route =
  {
    id;
    mesh_name;
    mesh_owner;
    name;
    tags;
    tags_all;
    virtual_gateway_name;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  virtual_gateway_name : string prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
    ~virtual_gateway_name ~spec __id =
  let __type = "aws_appmesh_gateway_route" in
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
       virtual_gateway_name =
         Prop.computed __type __id "virtual_gateway_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_gateway_route
        (aws_appmesh_gateway_route ?id ?mesh_owner ?tags ?tags_all
           ~mesh_name ~name ~virtual_gateway_name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~virtual_gateway_name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name
      ~virtual_gateway_name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
