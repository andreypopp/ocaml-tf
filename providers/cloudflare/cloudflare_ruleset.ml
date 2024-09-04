(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__action_parameters__algorithms = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__algorithms) -> ()

let yojson_of_rules__action_parameters__algorithms =
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
    : rules__action_parameters__algorithms ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__algorithms

[@@@deriving.end]

type rules__action_parameters__autominify = {
  css : bool prop option; [@option]
  html : bool prop option; [@option]
  js : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__autominify) -> ()

let yojson_of_rules__action_parameters__autominify =
  (function
   | { css = v_css; html = v_html; js = v_js } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_js with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "js", arg in
             bnd :: bnds
       in
       let bnds =
         match v_html with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "html", arg in
             bnd :: bnds
       in
       let bnds =
         match v_css with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "css", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__autominify ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__autominify

[@@@deriving.end]

type rules__action_parameters__browser_ttl = {
  default : float prop option; [@option]
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__browser_ttl) -> ()

let yojson_of_rules__action_parameters__browser_ttl =
  (function
   | { default = v_default; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__browser_ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__browser_ttl

[@@@deriving.end]

type rules__action_parameters__cache_key__custom_key__cookie = {
  check_presence : string prop list option; [@option]
  include_ : string prop list option; [@option] [@key "include"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__cache_key__custom_key__cookie) ->
  ()

let yojson_of_rules__action_parameters__cache_key__custom_key__cookie
    =
  (function
   | { check_presence = v_check_presence; include_ = v_include_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_presence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_presence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key__custom_key__cookie ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rules__action_parameters__cache_key__custom_key__cookie

[@@@deriving.end]

type rules__action_parameters__cache_key__custom_key__header = {
  check_presence : string prop list option; [@option]
  exclude_origin : bool prop option; [@option]
  include_ : string prop list option; [@option] [@key "include"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__cache_key__custom_key__header) ->
  ()

let yojson_of_rules__action_parameters__cache_key__custom_key__header
    =
  (function
   | {
       check_presence = v_check_presence;
       exclude_origin = v_exclude_origin;
       include_ = v_include_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_origin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_presence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_presence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key__custom_key__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rules__action_parameters__cache_key__custom_key__header

[@@@deriving.end]

type rules__action_parameters__cache_key__custom_key__host = {
  resolved : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__cache_key__custom_key__host) ->
  ()

let yojson_of_rules__action_parameters__cache_key__custom_key__host =
  (function
   | { resolved = v_resolved } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resolved with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "resolved", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key__custom_key__host ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rules__action_parameters__cache_key__custom_key__host

[@@@deriving.end]

type rules__action_parameters__cache_key__custom_key__query_string = {
  exclude : string prop list option; [@option]
  include_ : string prop list option; [@option] [@key "include"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rules__action_parameters__cache_key__custom_key__query_string) ->
  ()

let yojson_of_rules__action_parameters__cache_key__custom_key__query_string
    =
  (function
   | { exclude = v_exclude; include_ = v_include_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key__custom_key__query_string ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rules__action_parameters__cache_key__custom_key__query_string

[@@@deriving.end]

type rules__action_parameters__cache_key__custom_key__user = {
  device_type : bool prop option; [@option]
  geo : bool prop option; [@option]
  lang : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__cache_key__custom_key__user) ->
  ()

let yojson_of_rules__action_parameters__cache_key__custom_key__user =
  (function
   | { device_type = v_device_type; geo = v_geo; lang = v_lang } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lang with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lang", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "geo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "device_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key__custom_key__user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rules__action_parameters__cache_key__custom_key__user

[@@@deriving.end]

type rules__action_parameters__cache_key__custom_key = {
  cookie :
    rules__action_parameters__cache_key__custom_key__cookie list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  header :
    rules__action_parameters__cache_key__custom_key__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host : rules__action_parameters__cache_key__custom_key__host list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_string :
    rules__action_parameters__cache_key__custom_key__query_string
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user : rules__action_parameters__cache_key__custom_key__user list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__cache_key__custom_key) -> ()

let yojson_of_rules__action_parameters__cache_key__custom_key =
  (function
   | {
       cookie = v_cookie;
       header = v_header;
       host = v_host;
       query_string = v_query_string;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key__custom_key__user)
               v_user
           in
           let bnd = "user", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_query_string then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key__custom_key__query_string)
               v_query_string
           in
           let bnd = "query_string", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key__custom_key__host)
               v_host
           in
           let bnd = "host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key__custom_key__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cookie then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key__custom_key__cookie)
               v_cookie
           in
           let bnd = "cookie", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key__custom_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__cache_key__custom_key

[@@@deriving.end]

type rules__action_parameters__cache_key = {
  cache_by_device_type : bool prop option; [@option]
  cache_deception_armor : bool prop option; [@option]
  ignore_query_strings_order : bool prop option; [@option]
  custom_key : rules__action_parameters__cache_key__custom_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__cache_key) -> ()

let yojson_of_rules__action_parameters__cache_key =
  (function
   | {
       cache_by_device_type = v_cache_by_device_type;
       cache_deception_armor = v_cache_deception_armor;
       ignore_query_strings_order = v_ignore_query_strings_order;
       custom_key = v_custom_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key__custom_key)
               v_custom_key
           in
           let bnd = "custom_key", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ignore_query_strings_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_query_strings_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_deception_armor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_deception_armor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_by_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_by_device_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__cache_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__cache_key

[@@@deriving.end]

type rules__action_parameters__edge_ttl__status_code_ttl__status_code_range = {
  from : float prop option; [@option]
  to_ : float prop option; [@option] [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       rules__action_parameters__edge_ttl__status_code_ttl__status_code_range) ->
  ()

let yojson_of_rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "from", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__edge_ttl__status_code_ttl__status_code_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_rules__action_parameters__edge_ttl__status_code_ttl__status_code_range

[@@@deriving.end]

type rules__action_parameters__edge_ttl__status_code_ttl = {
  status_code : float prop option; [@option]
  value : float prop option; [@option]
  status_code_range :
    rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__edge_ttl__status_code_ttl) -> ()

let yojson_of_rules__action_parameters__edge_ttl__status_code_ttl =
  (function
   | {
       status_code = v_status_code;
       value = v_value;
       status_code_range = v_status_code_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_status_code_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__edge_ttl__status_code_ttl__status_code_range)
               v_status_code_range
           in
           let bnd = "status_code_range", arg in
           bnd :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__edge_ttl__status_code_ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__edge_ttl__status_code_ttl

[@@@deriving.end]

type rules__action_parameters__edge_ttl = {
  default : float prop option; [@option]
  mode : string prop;
  status_code_ttl :
    rules__action_parameters__edge_ttl__status_code_ttl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__edge_ttl) -> ()

let yojson_of_rules__action_parameters__edge_ttl =
  (function
   | {
       default = v_default;
       mode = v_mode;
       status_code_ttl = v_status_code_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_status_code_ttl then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__edge_ttl__status_code_ttl)
               v_status_code_ttl
           in
           let bnd = "status_code_ttl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         match v_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__edge_ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__edge_ttl

[@@@deriving.end]

type rules__action_parameters__from_list = {
  key : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__from_list) -> ()

let yojson_of_rules__action_parameters__from_list =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__from_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__from_list

[@@@deriving.end]

type rules__action_parameters__from_value__target_url = {
  expression : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__from_value__target_url) -> ()

let yojson_of_rules__action_parameters__from_value__target_url =
  (function
   | { expression = v_expression; value = v_value } ->
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
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__from_value__target_url ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__from_value__target_url

[@@@deriving.end]

type rules__action_parameters__from_value = {
  preserve_query_string : bool prop option; [@option]
  status_code : float prop option; [@option]
  target_url : rules__action_parameters__from_value__target_url list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__from_value) -> ()

let yojson_of_rules__action_parameters__from_value =
  (function
   | {
       preserve_query_string = v_preserve_query_string;
       status_code = v_status_code;
       target_url = v_target_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_url then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__from_value__target_url)
               v_target_url
           in
           let bnd = "target_url", arg in
           bnd :: bnds
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_query_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__from_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__from_value

[@@@deriving.end]

type rules__action_parameters__headers = {
  expression : string prop option; [@option]
  name : string prop option; [@option]
  operation : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__headers) -> ()

let yojson_of_rules__action_parameters__headers =
  (function
   | {
       expression = v_expression;
       name = v_name;
       operation = v_operation;
       value = v_value;
     } ->
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
         match v_operation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation", arg in
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
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__headers

[@@@deriving.end]

type rules__action_parameters__matched_data = {
  public_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__matched_data) -> ()

let yojson_of_rules__action_parameters__matched_data =
  (function
   | { public_key = v_public_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__matched_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__matched_data

[@@@deriving.end]

type rules__action_parameters__origin = {
  host : string prop option; [@option]
  port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__origin) -> ()

let yojson_of_rules__action_parameters__origin =
  (function
   | { host = v_host; port = v_port } ->
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
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__origin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__origin

[@@@deriving.end]

type rules__action_parameters__overrides__categories = {
  action : string prop option; [@option]
  category : string prop option; [@option]
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rules__action_parameters__overrides__categories) -> ()

let yojson_of_rules__action_parameters__overrides__categories =
  (function
   | {
       action = v_action;
       category = v_category;
       enabled = v_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__overrides__categories ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__overrides__categories

[@@@deriving.end]

type rules__action_parameters__overrides__rules = {
  action : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  score_threshold : float prop option; [@option]
  sensitivity_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__overrides__rules) -> ()

let yojson_of_rules__action_parameters__overrides__rules =
  (function
   | {
       action = v_action;
       enabled = v_enabled;
       id = v_id;
       score_threshold = v_score_threshold;
       sensitivity_level = v_sensitivity_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sensitivity_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sensitivity_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_score_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "score_threshold", arg in
             bnd :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__overrides__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__overrides__rules

[@@@deriving.end]

type rules__action_parameters__overrides = {
  action : string prop option; [@option]
  enabled : bool prop option; [@option]
  sensitivity_level : string prop option; [@option]
  categories : rules__action_parameters__overrides__categories list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rules : rules__action_parameters__overrides__rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__overrides) -> ()

let yojson_of_rules__action_parameters__overrides =
  (function
   | {
       action = v_action;
       enabled = v_enabled;
       sensitivity_level = v_sensitivity_level;
       categories = v_categories;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__overrides__rules)
               v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_categories then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__overrides__categories)
               v_categories
           in
           let bnd = "categories", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sensitivity_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sensitivity_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__overrides

[@@@deriving.end]

type rules__action_parameters__response = {
  content : string prop option; [@option]
  content_type : string prop option; [@option]
  status_code : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__response) -> ()

let yojson_of_rules__action_parameters__response =
  (function
   | {
       content = v_content;
       content_type = v_content_type;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__response

[@@@deriving.end]

type rules__action_parameters__serve_stale = {
  disable_stale_while_updating : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__serve_stale) -> ()

let yojson_of_rules__action_parameters__serve_stale =
  (function
   | {
       disable_stale_while_updating = v_disable_stale_while_updating;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_disable_stale_while_updating with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_stale_while_updating", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__serve_stale ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__serve_stale

[@@@deriving.end]

type rules__action_parameters__sni = {
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__sni) -> ()

let yojson_of_rules__action_parameters__sni =
  (function
   | { value = v_value } ->
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
       `Assoc bnds
    : rules__action_parameters__sni ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__sni

[@@@deriving.end]

type rules__action_parameters__uri__path = {
  expression : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__uri__path) -> ()

let yojson_of_rules__action_parameters__uri__path =
  (function
   | { expression = v_expression; value = v_value } ->
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
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__uri__path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__uri__path

[@@@deriving.end]

type rules__action_parameters__uri__query = {
  expression : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__uri__query) -> ()

let yojson_of_rules__action_parameters__uri__query =
  (function
   | { expression = v_expression; value = v_value } ->
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
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__uri__query ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__uri__query

[@@@deriving.end]

type rules__action_parameters__uri = {
  origin : bool prop option; [@option]
  path : rules__action_parameters__uri__path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query : rules__action_parameters__uri__query list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters__uri) -> ()

let yojson_of_rules__action_parameters__uri =
  (function
   | { origin = v_origin; path = v_path; query = v_query } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__uri__query)
               v_query
           in
           let bnd = "query", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__uri__path)
               v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       let bnds =
         match v_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "origin", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters__uri ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters__uri

[@@@deriving.end]

type rules__action_parameters = {
  additional_cacheable_ports : float prop list option; [@option]
  automatic_https_rewrites : bool prop option; [@option]
  bic : bool prop option; [@option]
  cache : bool prop option; [@option]
  content : string prop option; [@option]
  content_type : string prop option; [@option]
  cookie_fields : string prop list option; [@option]
  disable_apps : bool prop option; [@option]
  disable_railgun : bool prop option; [@option]
  disable_rum : bool prop option; [@option]
  disable_zaraz : bool prop option; [@option]
  email_obfuscation : bool prop option; [@option]
  fonts : bool prop option; [@option]
  host_header : string prop option; [@option]
  hotlink_protection : bool prop option; [@option]
  id : string prop option; [@option]
  increment : float prop option; [@option]
  mirage : bool prop option; [@option]
  opportunistic_encryption : bool prop option; [@option]
  origin_cache_control : bool prop option; [@option]
  origin_error_page_passthru : bool prop option; [@option]
  phases : string prop list option; [@option]
  polish : string prop option; [@option]
  products : string prop list option; [@option]
  read_timeout : float prop option; [@option]
  request_fields : string prop list option; [@option]
  respect_strong_etags : bool prop option; [@option]
  response_fields : string prop list option; [@option]
  rocket_loader : bool prop option; [@option]
  rules : string prop Tf_core.assoc option; [@option]
  ruleset : string prop option; [@option]
  rulesets : string prop list option; [@option]
  security_level : string prop option; [@option]
  server_side_excludes : bool prop option; [@option]
  ssl : string prop option; [@option]
  status_code : float prop option; [@option]
  sxg : bool prop option; [@option]
  version : string prop option; [@option]
  algorithms : rules__action_parameters__algorithms list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  autominify : rules__action_parameters__autominify list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  browser_ttl : rules__action_parameters__browser_ttl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_key : rules__action_parameters__cache_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  edge_ttl : rules__action_parameters__edge_ttl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  from_list : rules__action_parameters__from_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  from_value : rules__action_parameters__from_value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  headers : rules__action_parameters__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  matched_data : rules__action_parameters__matched_data list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  origin : rules__action_parameters__origin list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  overrides : rules__action_parameters__overrides list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  response : rules__action_parameters__response list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  serve_stale : rules__action_parameters__serve_stale list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sni : rules__action_parameters__sni list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  uri : rules__action_parameters__uri list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action_parameters) -> ()

let yojson_of_rules__action_parameters =
  (function
   | {
       additional_cacheable_ports = v_additional_cacheable_ports;
       automatic_https_rewrites = v_automatic_https_rewrites;
       bic = v_bic;
       cache = v_cache;
       content = v_content;
       content_type = v_content_type;
       cookie_fields = v_cookie_fields;
       disable_apps = v_disable_apps;
       disable_railgun = v_disable_railgun;
       disable_rum = v_disable_rum;
       disable_zaraz = v_disable_zaraz;
       email_obfuscation = v_email_obfuscation;
       fonts = v_fonts;
       host_header = v_host_header;
       hotlink_protection = v_hotlink_protection;
       id = v_id;
       increment = v_increment;
       mirage = v_mirage;
       opportunistic_encryption = v_opportunistic_encryption;
       origin_cache_control = v_origin_cache_control;
       origin_error_page_passthru = v_origin_error_page_passthru;
       phases = v_phases;
       polish = v_polish;
       products = v_products;
       read_timeout = v_read_timeout;
       request_fields = v_request_fields;
       respect_strong_etags = v_respect_strong_etags;
       response_fields = v_response_fields;
       rocket_loader = v_rocket_loader;
       rules = v_rules;
       ruleset = v_ruleset;
       rulesets = v_rulesets;
       security_level = v_security_level;
       server_side_excludes = v_server_side_excludes;
       ssl = v_ssl;
       status_code = v_status_code;
       sxg = v_sxg;
       version = v_version;
       algorithms = v_algorithms;
       autominify = v_autominify;
       browser_ttl = v_browser_ttl;
       cache_key = v_cache_key;
       edge_ttl = v_edge_ttl;
       from_list = v_from_list;
       from_value = v_from_value;
       headers = v_headers;
       matched_data = v_matched_data;
       origin = v_origin;
       overrides = v_overrides;
       response = v_response;
       serve_stale = v_serve_stale;
       sni = v_sni;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_uri then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__action_parameters__uri)
               v_uri
           in
           let bnd = "uri", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sni then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__action_parameters__sni)
               v_sni
           in
           let bnd = "sni", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_serve_stale then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__serve_stale)
               v_serve_stale
           in
           let bnd = "serve_stale", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_response then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__response)
               v_response
           in
           let bnd = "response", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_overrides then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__overrides)
               v_overrides
           in
           let bnd = "overrides", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_origin then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__origin)
               v_origin
           in
           let bnd = "origin", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_matched_data then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__matched_data)
               v_matched_data
           in
           let bnd = "matched_data", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__headers)
               v_headers
           in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_from_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__from_value)
               v_from_value
           in
           let bnd = "from_value", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_from_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__from_list)
               v_from_list
           in
           let bnd = "from_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_edge_ttl then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__edge_ttl)
               v_edge_ttl
           in
           let bnd = "edge_ttl", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__cache_key)
               v_cache_key
           in
           let bnd = "cache_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_browser_ttl then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__browser_ttl)
               v_browser_ttl
           in
           let bnd = "browser_ttl", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autominify then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__autominify)
               v_autominify
           in
           let bnd = "autominify", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_algorithms then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__action_parameters__algorithms)
               v_algorithms
           in
           let bnd = "algorithms", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sxg with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sxg", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_side_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "server_side_excludes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rulesets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rulesets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ruleset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ruleset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rocket_loader with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rocket_loader", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_respect_strong_etags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "respect_strong_etags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "request_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_products with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "products", arg in
             bnd :: bnds
       in
       let bnds =
         match v_polish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "polish", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "phases", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_error_page_passthru with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "origin_error_page_passthru", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "origin_cache_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opportunistic_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "opportunistic_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mirage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mirage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_increment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "increment", arg in
             bnd :: bnds
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
         match v_hotlink_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hotlink_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fonts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fonts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_obfuscation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "email_obfuscation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_zaraz with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_zaraz", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_rum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_rum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_railgun with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_railgun", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_apps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cookie_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_https_rewrites with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_https_rewrites", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_cacheable_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "additional_cacheable_ports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action_parameters

[@@@deriving.end]

type rules__exposed_credential_check = {
  password_expression : string prop option; [@option]
  username_expression : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__exposed_credential_check) -> ()

let yojson_of_rules__exposed_credential_check =
  (function
   | {
       password_expression = v_password_expression;
       username_expression = v_username_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__exposed_credential_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__exposed_credential_check

[@@@deriving.end]

type rules__logging = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__logging) -> ()

let yojson_of_rules__logging =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__logging

[@@@deriving.end]

type rules__ratelimit = {
  characteristics : string prop list option; [@option]
  counting_expression : string prop option; [@option]
  mitigation_timeout : float prop option; [@option]
  period : float prop option; [@option]
  requests_per_period : float prop option; [@option]
  requests_to_origin : bool prop option; [@option]
  score_per_period : float prop option; [@option]
  score_response_header_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__ratelimit) -> ()

let yojson_of_rules__ratelimit =
  (function
   | {
       characteristics = v_characteristics;
       counting_expression = v_counting_expression;
       mitigation_timeout = v_mitigation_timeout;
       period = v_period;
       requests_per_period = v_requests_per_period;
       requests_to_origin = v_requests_to_origin;
       score_per_period = v_score_per_period;
       score_response_header_name = v_score_response_header_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_score_response_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "score_response_header_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_score_per_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "score_per_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requests_to_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requests_to_origin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requests_per_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "requests_per_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mitigation_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mitigation_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_counting_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "counting_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_characteristics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "characteristics", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__ratelimit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__ratelimit

[@@@deriving.end]

type rules = {
  action : string prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  expression : string prop;
  ref : string prop option; [@option]
  action_parameters : rules__action_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exposed_credential_check : rules__exposed_credential_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logging : rules__logging list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ratelimit : rules__ratelimit list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       action = v_action;
       description = v_description;
       enabled = v_enabled;
       expression = v_expression;
       ref = v_ref;
       action_parameters = v_action_parameters;
       exposed_credential_check = v_exposed_credential_check;
       logging = v_logging;
       ratelimit = v_ratelimit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ratelimit then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__ratelimit) v_ratelimit
           in
           let bnd = "ratelimit", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__logging) v_logging
           in
           let bnd = "logging", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exposed_credential_check then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__exposed_credential_check)
               v_exposed_credential_check
           in
           let bnd = "exposed_credential_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__action_parameters)
               v_action_parameters
           in
           let bnd = "action_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ref", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type cloudflare_ruleset = {
  account_id : string prop option; [@option]
  description : string prop option; [@option]
  kind : string prop;
  name : string prop;
  phase : string prop;
  zone_id : string prop option; [@option]
  rules : rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_ruleset) -> ()

let yojson_of_cloudflare_ruleset =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       kind = v_kind;
       name = v_name;
       phase = v_phase;
       zone_id = v_zone_id;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg = (yojson_of_list yojson_of_rules) v_rules in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phase in
         ("phase", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_ruleset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_ruleset

[@@@deriving.end]

let rules__action_parameters__algorithms ~name () :
    rules__action_parameters__algorithms =
  { name }

let rules__action_parameters__autominify ?css ?html ?js () :
    rules__action_parameters__autominify =
  { css; html; js }

let rules__action_parameters__browser_ttl ?default ~mode () :
    rules__action_parameters__browser_ttl =
  { default; mode }

let rules__action_parameters__cache_key__custom_key__cookie
    ?check_presence ?include_ () :
    rules__action_parameters__cache_key__custom_key__cookie =
  { check_presence; include_ }

let rules__action_parameters__cache_key__custom_key__header
    ?check_presence ?exclude_origin ?include_ () :
    rules__action_parameters__cache_key__custom_key__header =
  { check_presence; exclude_origin; include_ }

let rules__action_parameters__cache_key__custom_key__host ?resolved
    () : rules__action_parameters__cache_key__custom_key__host =
  { resolved }

let rules__action_parameters__cache_key__custom_key__query_string
    ?exclude ?include_ () :
    rules__action_parameters__cache_key__custom_key__query_string =
  { exclude; include_ }

let rules__action_parameters__cache_key__custom_key__user
    ?device_type ?geo ?lang () :
    rules__action_parameters__cache_key__custom_key__user =
  { device_type; geo; lang }

let rules__action_parameters__cache_key__custom_key ?(cookie = [])
    ?(header = []) ?(host = []) ?(query_string = []) ?(user = []) ()
    : rules__action_parameters__cache_key__custom_key =
  { cookie; header; host; query_string; user }

let rules__action_parameters__cache_key ?cache_by_device_type
    ?cache_deception_armor ?ignore_query_strings_order
    ?(custom_key = []) () : rules__action_parameters__cache_key =
  {
    cache_by_device_type;
    cache_deception_armor;
    ignore_query_strings_order;
    custom_key;
  }

let rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    ?from ?to_ () :
    rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    =
  { from; to_ }

let rules__action_parameters__edge_ttl__status_code_ttl ?status_code
    ?value ?(status_code_range = []) () :
    rules__action_parameters__edge_ttl__status_code_ttl =
  { status_code; value; status_code_range }

let rules__action_parameters__edge_ttl ?default
    ?(status_code_ttl = []) ~mode () :
    rules__action_parameters__edge_ttl =
  { default; mode; status_code_ttl }

let rules__action_parameters__from_list ?key ?name () :
    rules__action_parameters__from_list =
  { key; name }

let rules__action_parameters__from_value__target_url ?expression
    ?value () : rules__action_parameters__from_value__target_url =
  { expression; value }

let rules__action_parameters__from_value ?preserve_query_string
    ?status_code ?(target_url = []) () :
    rules__action_parameters__from_value =
  { preserve_query_string; status_code; target_url }

let rules__action_parameters__headers ?expression ?name ?operation
    ?value () : rules__action_parameters__headers =
  { expression; name; operation; value }

let rules__action_parameters__matched_data ?public_key () :
    rules__action_parameters__matched_data =
  { public_key }

let rules__action_parameters__origin ?host ?port () :
    rules__action_parameters__origin =
  { host; port }

let rules__action_parameters__overrides__categories ?action ?category
    ?enabled () : rules__action_parameters__overrides__categories =
  { action; category; enabled }

let rules__action_parameters__overrides__rules ?action ?enabled ?id
    ?score_threshold ?sensitivity_level () :
    rules__action_parameters__overrides__rules =
  { action; enabled; id; score_threshold; sensitivity_level }

let rules__action_parameters__overrides ?action ?enabled
    ?sensitivity_level ?(categories = []) ?(rules = []) () :
    rules__action_parameters__overrides =
  { action; enabled; sensitivity_level; categories; rules }

let rules__action_parameters__response ?content ?content_type
    ?status_code () : rules__action_parameters__response =
  { content; content_type; status_code }

let rules__action_parameters__serve_stale
    ?disable_stale_while_updating () :
    rules__action_parameters__serve_stale =
  { disable_stale_while_updating }

let rules__action_parameters__sni ?value () :
    rules__action_parameters__sni =
  { value }

let rules__action_parameters__uri__path ?expression ?value () :
    rules__action_parameters__uri__path =
  { expression; value }

let rules__action_parameters__uri__query ?expression ?value () :
    rules__action_parameters__uri__query =
  { expression; value }

let rules__action_parameters__uri ?origin ?(path = []) ?(query = [])
    () : rules__action_parameters__uri =
  { origin; path; query }

let rules__action_parameters ?additional_cacheable_ports
    ?automatic_https_rewrites ?bic ?cache ?content ?content_type
    ?cookie_fields ?disable_apps ?disable_railgun ?disable_rum
    ?disable_zaraz ?email_obfuscation ?fonts ?host_header
    ?hotlink_protection ?id ?increment ?mirage
    ?opportunistic_encryption ?origin_cache_control
    ?origin_error_page_passthru ?phases ?polish ?products
    ?read_timeout ?request_fields ?respect_strong_etags
    ?response_fields ?rocket_loader ?rules ?ruleset ?rulesets
    ?security_level ?server_side_excludes ?ssl ?status_code ?sxg
    ?version ?(algorithms = []) ?(autominify = [])
    ?(browser_ttl = []) ?(cache_key = []) ?(edge_ttl = [])
    ?(from_list = []) ?(from_value = []) ?(headers = [])
    ?(matched_data = []) ?(origin = []) ?(overrides = [])
    ?(response = []) ?(serve_stale = []) ?(sni = []) ?(uri = []) () :
    rules__action_parameters =
  {
    additional_cacheable_ports;
    automatic_https_rewrites;
    bic;
    cache;
    content;
    content_type;
    cookie_fields;
    disable_apps;
    disable_railgun;
    disable_rum;
    disable_zaraz;
    email_obfuscation;
    fonts;
    host_header;
    hotlink_protection;
    id;
    increment;
    mirage;
    opportunistic_encryption;
    origin_cache_control;
    origin_error_page_passthru;
    phases;
    polish;
    products;
    read_timeout;
    request_fields;
    respect_strong_etags;
    response_fields;
    rocket_loader;
    rules;
    ruleset;
    rulesets;
    security_level;
    server_side_excludes;
    ssl;
    status_code;
    sxg;
    version;
    algorithms;
    autominify;
    browser_ttl;
    cache_key;
    edge_ttl;
    from_list;
    from_value;
    headers;
    matched_data;
    origin;
    overrides;
    response;
    serve_stale;
    sni;
    uri;
  }

let rules__exposed_credential_check ?password_expression
    ?username_expression () : rules__exposed_credential_check =
  { password_expression; username_expression }

let rules__logging ?enabled () : rules__logging = { enabled }

let rules__ratelimit ?characteristics ?counting_expression
    ?mitigation_timeout ?period ?requests_per_period
    ?requests_to_origin ?score_per_period ?score_response_header_name
    () : rules__ratelimit =
  {
    characteristics;
    counting_expression;
    mitigation_timeout;
    period;
    requests_per_period;
    requests_to_origin;
    score_per_period;
    score_response_header_name;
  }

let rules ?action ?description ?enabled ?ref
    ?(action_parameters = []) ?(exposed_credential_check = [])
    ?(logging = []) ?(ratelimit = []) ~expression () : rules =
  {
    action;
    description;
    enabled;
    expression;
    ref;
    action_parameters;
    exposed_credential_check;
    logging;
    ratelimit;
  }

let cloudflare_ruleset ?account_id ?description ?zone_id
    ?(rules = []) ~kind ~name ~phase () : cloudflare_ruleset =
  { account_id; description; kind; name; phase; zone_id; rules }

type t = {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  phase : string prop;
  zone_id : string prop;
}

let make ?account_id ?description ?zone_id ?(rules = []) ~kind ~name
    ~phase __id =
  let __type = "cloudflare_ruleset" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       phase = Prop.computed __type __id "phase";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_ruleset
        (cloudflare_ruleset ?account_id ?description ?zone_id ~rules
           ~kind ~name ~phase ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?description ?zone_id
    ?(rules = []) ~kind ~name ~phase __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?description ?zone_id ~rules ~kind ~name ~phase
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
