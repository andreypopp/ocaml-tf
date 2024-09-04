(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_rule__cache_expiration_action = {
  behavior : string prop;
  duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__cache_expiration_action) -> ()

let yojson_of_delivery_rule__cache_expiration_action =
  (function
   | { behavior = v_behavior; duration = v_duration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_behavior in
         ("behavior", arg) :: bnds
       in
       `Assoc bnds
    : delivery_rule__cache_expiration_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__cache_expiration_action

[@@@deriving.end]

type delivery_rule__cache_key_query_string_action = {
  behavior : string prop;
  parameters : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__cache_key_query_string_action) -> ()

let yojson_of_delivery_rule__cache_key_query_string_action =
  (function
   | { behavior = v_behavior; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_behavior in
         ("behavior", arg) :: bnds
       in
       `Assoc bnds
    : delivery_rule__cache_key_query_string_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__cache_key_query_string_action

[@@@deriving.end]

type delivery_rule__cookies_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  selector : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__cookies_condition) -> ()

let yojson_of_delivery_rule__cookies_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       selector = v_selector;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__cookies_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__cookies_condition

[@@@deriving.end]

type delivery_rule__device_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__device_condition) -> ()

let yojson_of_delivery_rule__device_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__device_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__device_condition

[@@@deriving.end]

type delivery_rule__http_version_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__http_version_condition) -> ()

let yojson_of_delivery_rule__http_version_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__http_version_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__http_version_condition

[@@@deriving.end]

type delivery_rule__modify_request_header_action = {
  action : string prop;
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__modify_request_header_action) -> ()

let yojson_of_delivery_rule__modify_request_header_action =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : delivery_rule__modify_request_header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__modify_request_header_action

[@@@deriving.end]

type delivery_rule__modify_response_header_action = {
  action : string prop;
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__modify_response_header_action) -> ()

let yojson_of_delivery_rule__modify_response_header_action =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : delivery_rule__modify_response_header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__modify_response_header_action

[@@@deriving.end]

type delivery_rule__post_arg_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  selector : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__post_arg_condition) -> ()

let yojson_of_delivery_rule__post_arg_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       selector = v_selector;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__post_arg_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__post_arg_condition

[@@@deriving.end]

type delivery_rule__query_string_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__query_string_condition) -> ()

let yojson_of_delivery_rule__query_string_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__query_string_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__query_string_condition

[@@@deriving.end]

type delivery_rule__remote_address_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__remote_address_condition) -> ()

let yojson_of_delivery_rule__remote_address_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__remote_address_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__remote_address_condition

[@@@deriving.end]

type delivery_rule__request_body_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__request_body_condition) -> ()

let yojson_of_delivery_rule__request_body_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__request_body_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__request_body_condition

[@@@deriving.end]

type delivery_rule__request_header_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  selector : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__request_header_condition) -> ()

let yojson_of_delivery_rule__request_header_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       selector = v_selector;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__request_header_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__request_header_condition

[@@@deriving.end]

type delivery_rule__request_method_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__request_method_condition) -> ()

let yojson_of_delivery_rule__request_method_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__request_method_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__request_method_condition

[@@@deriving.end]

type delivery_rule__request_scheme_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__request_scheme_condition) -> ()

let yojson_of_delivery_rule__request_scheme_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__request_scheme_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__request_scheme_condition

[@@@deriving.end]

type delivery_rule__request_uri_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__request_uri_condition) -> ()

let yojson_of_delivery_rule__request_uri_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__request_uri_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__request_uri_condition

[@@@deriving.end]

type delivery_rule__url_file_extension_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__url_file_extension_condition) -> ()

let yojson_of_delivery_rule__url_file_extension_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__url_file_extension_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__url_file_extension_condition

[@@@deriving.end]

type delivery_rule__url_file_name_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__url_file_name_condition) -> ()

let yojson_of_delivery_rule__url_file_name_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__url_file_name_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__url_file_name_condition

[@@@deriving.end]

type delivery_rule__url_path_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__url_path_condition) -> ()

let yojson_of_delivery_rule__url_path_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__url_path_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__url_path_condition

[@@@deriving.end]

type delivery_rule__url_redirect_action = {
  fragment : string prop option; [@option]
  hostname : string prop option; [@option]
  path : string prop option; [@option]
  protocol : string prop option; [@option]
  query_string : string prop option; [@option]
  redirect_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__url_redirect_action) -> ()

let yojson_of_delivery_rule__url_redirect_action =
  (function
   | {
       fragment = v_fragment;
       hostname = v_hostname;
       path = v_path;
       protocol = v_protocol;
       query_string = v_query_string;
       redirect_type = v_redirect_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redirect_type in
         ("redirect_type", arg) :: bnds
       in
       let bnds =
         match v_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_string", arg in
             bnd :: bnds
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fragment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fragment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delivery_rule__url_redirect_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__url_redirect_action

[@@@deriving.end]

type delivery_rule__url_rewrite_action = {
  destination : string prop;
  preserve_unmatched_path : bool prop option; [@option]
  source_pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule__url_rewrite_action) -> ()

let yojson_of_delivery_rule__url_rewrite_action =
  (function
   | {
       destination = v_destination;
       preserve_unmatched_path = v_preserve_unmatched_path;
       source_pattern = v_source_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_pattern
         in
         ("source_pattern", arg) :: bnds
       in
       let bnds =
         match v_preserve_unmatched_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_unmatched_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : delivery_rule__url_rewrite_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule__url_rewrite_action

[@@@deriving.end]

type delivery_rule = {
  name : string prop;
  order : float prop;
  cache_expiration_action :
    delivery_rule__cache_expiration_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_key_query_string_action :
    delivery_rule__cache_key_query_string_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cookies_condition : delivery_rule__cookies_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  device_condition : delivery_rule__device_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_version_condition :
    delivery_rule__http_version_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  modify_request_header_action :
    delivery_rule__modify_request_header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  modify_response_header_action :
    delivery_rule__modify_response_header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  post_arg_condition : delivery_rule__post_arg_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_string_condition :
    delivery_rule__query_string_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  remote_address_condition :
    delivery_rule__remote_address_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_body_condition :
    delivery_rule__request_body_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_header_condition :
    delivery_rule__request_header_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_method_condition :
    delivery_rule__request_method_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_scheme_condition :
    delivery_rule__request_scheme_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_uri_condition : delivery_rule__request_uri_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_file_extension_condition :
    delivery_rule__url_file_extension_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_file_name_condition :
    delivery_rule__url_file_name_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_path_condition : delivery_rule__url_path_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_redirect_action : delivery_rule__url_redirect_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_rewrite_action : delivery_rule__url_rewrite_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_rule) -> ()

let yojson_of_delivery_rule =
  (function
   | {
       name = v_name;
       order = v_order;
       cache_expiration_action = v_cache_expiration_action;
       cache_key_query_string_action =
         v_cache_key_query_string_action;
       cookies_condition = v_cookies_condition;
       device_condition = v_device_condition;
       http_version_condition = v_http_version_condition;
       modify_request_header_action = v_modify_request_header_action;
       modify_response_header_action =
         v_modify_response_header_action;
       post_arg_condition = v_post_arg_condition;
       query_string_condition = v_query_string_condition;
       remote_address_condition = v_remote_address_condition;
       request_body_condition = v_request_body_condition;
       request_header_condition = v_request_header_condition;
       request_method_condition = v_request_method_condition;
       request_scheme_condition = v_request_scheme_condition;
       request_uri_condition = v_request_uri_condition;
       url_file_extension_condition = v_url_file_extension_condition;
       url_file_name_condition = v_url_file_name_condition;
       url_path_condition = v_url_path_condition;
       url_redirect_action = v_url_redirect_action;
       url_rewrite_action = v_url_rewrite_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_url_rewrite_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__url_rewrite_action)
               v_url_rewrite_action
           in
           let bnd = "url_rewrite_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_url_redirect_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__url_redirect_action)
               v_url_redirect_action
           in
           let bnd = "url_redirect_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_url_path_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__url_path_condition)
               v_url_path_condition
           in
           let bnd = "url_path_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_url_file_name_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__url_file_name_condition)
               v_url_file_name_condition
           in
           let bnd = "url_file_name_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_url_file_extension_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__url_file_extension_condition)
               v_url_file_extension_condition
           in
           let bnd = "url_file_extension_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_uri_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__request_uri_condition)
               v_request_uri_condition
           in
           let bnd = "request_uri_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_scheme_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__request_scheme_condition)
               v_request_scheme_condition
           in
           let bnd = "request_scheme_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_method_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__request_method_condition)
               v_request_method_condition
           in
           let bnd = "request_method_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_header_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__request_header_condition)
               v_request_header_condition
           in
           let bnd = "request_header_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_body_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__request_body_condition)
               v_request_body_condition
           in
           let bnd = "request_body_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_remote_address_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__remote_address_condition)
               v_remote_address_condition
           in
           let bnd = "remote_address_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_query_string_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__query_string_condition)
               v_query_string_condition
           in
           let bnd = "query_string_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_post_arg_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__post_arg_condition)
               v_post_arg_condition
           in
           let bnd = "post_arg_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_modify_response_header_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__modify_response_header_action)
               v_modify_response_header_action
           in
           let bnd = "modify_response_header_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_modify_request_header_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__modify_request_header_action)
               v_modify_request_header_action
           in
           let bnd = "modify_request_header_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_version_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__http_version_condition)
               v_http_version_condition
           in
           let bnd = "http_version_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_device_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__device_condition)
               v_device_condition
           in
           let bnd = "device_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cookies_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__cookies_condition)
               v_cookies_condition
           in
           let bnd = "cookies_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_key_query_string_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__cache_key_query_string_action)
               v_cache_key_query_string_action
           in
           let bnd = "cache_key_query_string_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_expiration_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_delivery_rule__cache_expiration_action)
               v_cache_expiration_action
           in
           let bnd = "cache_expiration_action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : delivery_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_rule

[@@@deriving.end]

type geo_filter = {
  action : string prop;
  country_codes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  relative_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geo_filter) -> ()

let yojson_of_geo_filter =
  (function
   | {
       action = v_action;
       country_codes = v_country_codes;
       relative_path = v_relative_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_relative_path in
         ("relative_path", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_country_codes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_country_codes
           in
           let bnd = "country_codes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : geo_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geo_filter

[@@@deriving.end]

type global_delivery_rule__cache_expiration_action = {
  behavior : string prop;
  duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_delivery_rule__cache_expiration_action) -> ()

let yojson_of_global_delivery_rule__cache_expiration_action =
  (function
   | { behavior = v_behavior; duration = v_duration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_behavior in
         ("behavior", arg) :: bnds
       in
       `Assoc bnds
    : global_delivery_rule__cache_expiration_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule__cache_expiration_action

[@@@deriving.end]

type global_delivery_rule__cache_key_query_string_action = {
  behavior : string prop;
  parameters : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : global_delivery_rule__cache_key_query_string_action) -> ()

let yojson_of_global_delivery_rule__cache_key_query_string_action =
  (function
   | { behavior = v_behavior; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_behavior in
         ("behavior", arg) :: bnds
       in
       `Assoc bnds
    : global_delivery_rule__cache_key_query_string_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule__cache_key_query_string_action

[@@@deriving.end]

type global_delivery_rule__modify_request_header_action = {
  action : string prop;
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : global_delivery_rule__modify_request_header_action) -> ()

let yojson_of_global_delivery_rule__modify_request_header_action =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : global_delivery_rule__modify_request_header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule__modify_request_header_action

[@@@deriving.end]

type global_delivery_rule__modify_response_header_action = {
  action : string prop;
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : global_delivery_rule__modify_response_header_action) -> ()

let yojson_of_global_delivery_rule__modify_response_header_action =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : global_delivery_rule__modify_response_header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule__modify_response_header_action

[@@@deriving.end]

type global_delivery_rule__url_redirect_action = {
  fragment : string prop option; [@option]
  hostname : string prop option; [@option]
  path : string prop option; [@option]
  protocol : string prop option; [@option]
  query_string : string prop option; [@option]
  redirect_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_delivery_rule__url_redirect_action) -> ()

let yojson_of_global_delivery_rule__url_redirect_action =
  (function
   | {
       fragment = v_fragment;
       hostname = v_hostname;
       path = v_path;
       protocol = v_protocol;
       query_string = v_query_string;
       redirect_type = v_redirect_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redirect_type in
         ("redirect_type", arg) :: bnds
       in
       let bnds =
         match v_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_string", arg in
             bnd :: bnds
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fragment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fragment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : global_delivery_rule__url_redirect_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule__url_redirect_action

[@@@deriving.end]

type global_delivery_rule__url_rewrite_action = {
  destination : string prop;
  preserve_unmatched_path : bool prop option; [@option]
  source_pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_delivery_rule__url_rewrite_action) -> ()

let yojson_of_global_delivery_rule__url_rewrite_action =
  (function
   | {
       destination = v_destination;
       preserve_unmatched_path = v_preserve_unmatched_path;
       source_pattern = v_source_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_pattern
         in
         ("source_pattern", arg) :: bnds
       in
       let bnds =
         match v_preserve_unmatched_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_unmatched_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : global_delivery_rule__url_rewrite_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule__url_rewrite_action

[@@@deriving.end]

type global_delivery_rule = {
  cache_expiration_action :
    global_delivery_rule__cache_expiration_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_key_query_string_action :
    global_delivery_rule__cache_key_query_string_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  modify_request_header_action :
    global_delivery_rule__modify_request_header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  modify_response_header_action :
    global_delivery_rule__modify_response_header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_redirect_action :
    global_delivery_rule__url_redirect_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_rewrite_action : global_delivery_rule__url_rewrite_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_delivery_rule) -> ()

let yojson_of_global_delivery_rule =
  (function
   | {
       cache_expiration_action = v_cache_expiration_action;
       cache_key_query_string_action =
         v_cache_key_query_string_action;
       modify_request_header_action = v_modify_request_header_action;
       modify_response_header_action =
         v_modify_response_header_action;
       url_redirect_action = v_url_redirect_action;
       url_rewrite_action = v_url_rewrite_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_url_rewrite_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_global_delivery_rule__url_rewrite_action)
               v_url_rewrite_action
           in
           let bnd = "url_rewrite_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_url_redirect_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_global_delivery_rule__url_redirect_action)
               v_url_redirect_action
           in
           let bnd = "url_redirect_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_modify_response_header_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_global_delivery_rule__modify_response_header_action)
               v_modify_response_header_action
           in
           let bnd = "modify_response_header_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_modify_request_header_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_global_delivery_rule__modify_request_header_action)
               v_modify_request_header_action
           in
           let bnd = "modify_request_header_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_key_query_string_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_global_delivery_rule__cache_key_query_string_action)
               v_cache_key_query_string_action
           in
           let bnd = "cache_key_query_string_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_expiration_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_global_delivery_rule__cache_expiration_action)
               v_cache_expiration_action
           in
           let bnd = "cache_expiration_action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : global_delivery_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_delivery_rule

[@@@deriving.end]

type origin = {
  host_name : string prop;
  http_port : float prop option; [@option]
  https_port : float prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin) -> ()

let yojson_of_origin =
  (function
   | {
       host_name = v_host_name;
       http_port = v_http_port;
       https_port = v_https_port;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_https_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "https_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : origin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin

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

type azurerm_cdn_endpoint = {
  content_types_to_compress : string prop list option; [@option]
  id : string prop option; [@option]
  is_compression_enabled : bool prop option; [@option]
  is_http_allowed : bool prop option; [@option]
  is_https_allowed : bool prop option; [@option]
  location : string prop;
  name : string prop;
  optimization_type : string prop option; [@option]
  origin_host_header : string prop option; [@option]
  origin_path : string prop option; [@option]
  probe_path : string prop option; [@option]
  profile_name : string prop;
  querystring_caching_behaviour : string prop option; [@option]
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  delivery_rule : delivery_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  geo_filter : geo_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  global_delivery_rule : global_delivery_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  origin : origin list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_endpoint) -> ()

let yojson_of_azurerm_cdn_endpoint =
  (function
   | {
       content_types_to_compress = v_content_types_to_compress;
       id = v_id;
       is_compression_enabled = v_is_compression_enabled;
       is_http_allowed = v_is_http_allowed;
       is_https_allowed = v_is_https_allowed;
       location = v_location;
       name = v_name;
       optimization_type = v_optimization_type;
       origin_host_header = v_origin_host_header;
       origin_path = v_origin_path;
       probe_path = v_probe_path;
       profile_name = v_profile_name;
       querystring_caching_behaviour =
         v_querystring_caching_behaviour;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       delivery_rule = v_delivery_rule;
       geo_filter = v_geo_filter;
       global_delivery_rule = v_global_delivery_rule;
       origin = v_origin;
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
         if Stdlib.( = ) [] v_origin then bnds
         else
           let arg = (yojson_of_list yojson_of_origin) v_origin in
           let bnd = "origin", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_global_delivery_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_global_delivery_rule)
               v_global_delivery_rule
           in
           let bnd = "global_delivery_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_geo_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_geo_filter) v_geo_filter
           in
           let bnd = "geo_filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_delivery_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_delivery_rule) v_delivery_rule
           in
           let bnd = "delivery_rule", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_querystring_caching_behaviour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "querystring_caching_behaviour", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_profile_name in
         ("profile_name", arg) :: bnds
       in
       let bnds =
         match v_probe_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "probe_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_host_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_host_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_optimization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "optimization_type", arg in
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
         match v_is_https_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_https_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_http_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_http_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_compression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_compression_enabled", arg in
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
         match v_content_types_to_compress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "content_types_to_compress", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_endpoint

[@@@deriving.end]

let delivery_rule__cache_expiration_action ?duration ~behavior () :
    delivery_rule__cache_expiration_action =
  { behavior; duration }

let delivery_rule__cache_key_query_string_action ?parameters
    ~behavior () : delivery_rule__cache_key_query_string_action =
  { behavior; parameters }

let delivery_rule__cookies_condition ?match_values ?negate_condition
    ?transforms ~operator ~selector () :
    delivery_rule__cookies_condition =
  { match_values; negate_condition; operator; selector; transforms }

let delivery_rule__device_condition ?negate_condition ?operator
    ~match_values () : delivery_rule__device_condition =
  { match_values; negate_condition; operator }

let delivery_rule__http_version_condition ?negate_condition ?operator
    ~match_values () : delivery_rule__http_version_condition =
  { match_values; negate_condition; operator }

let delivery_rule__modify_request_header_action ?value ~action ~name
    () : delivery_rule__modify_request_header_action =
  { action; name; value }

let delivery_rule__modify_response_header_action ?value ~action ~name
    () : delivery_rule__modify_response_header_action =
  { action; name; value }

let delivery_rule__post_arg_condition ?match_values ?negate_condition
    ?transforms ~operator ~selector () :
    delivery_rule__post_arg_condition =
  { match_values; negate_condition; operator; selector; transforms }

let delivery_rule__query_string_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__query_string_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__remote_address_condition ?match_values
    ?negate_condition ~operator () :
    delivery_rule__remote_address_condition =
  { match_values; negate_condition; operator }

let delivery_rule__request_body_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__request_body_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__request_header_condition ?match_values
    ?negate_condition ?transforms ~operator ~selector () :
    delivery_rule__request_header_condition =
  { match_values; negate_condition; operator; selector; transforms }

let delivery_rule__request_method_condition ?negate_condition
    ?operator ~match_values () :
    delivery_rule__request_method_condition =
  { match_values; negate_condition; operator }

let delivery_rule__request_scheme_condition ?negate_condition
    ?operator ~match_values () :
    delivery_rule__request_scheme_condition =
  { match_values; negate_condition; operator }

let delivery_rule__request_uri_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__request_uri_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_file_extension_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__url_file_extension_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_file_name_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    delivery_rule__url_file_name_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_path_condition ?match_values ?negate_condition
    ?transforms ~operator () : delivery_rule__url_path_condition =
  { match_values; negate_condition; operator; transforms }

let delivery_rule__url_redirect_action ?fragment ?hostname ?path
    ?protocol ?query_string ~redirect_type () :
    delivery_rule__url_redirect_action =
  { fragment; hostname; path; protocol; query_string; redirect_type }

let delivery_rule__url_rewrite_action ?preserve_unmatched_path
    ~destination ~source_pattern () :
    delivery_rule__url_rewrite_action =
  { destination; preserve_unmatched_path; source_pattern }

let delivery_rule ?(cache_expiration_action = [])
    ?(cache_key_query_string_action = []) ?(cookies_condition = [])
    ?(device_condition = []) ?(http_version_condition = [])
    ?(modify_request_header_action = [])
    ?(modify_response_header_action = []) ?(post_arg_condition = [])
    ?(query_string_condition = []) ?(remote_address_condition = [])
    ?(request_body_condition = []) ?(request_header_condition = [])
    ?(request_method_condition = []) ?(request_scheme_condition = [])
    ?(request_uri_condition = [])
    ?(url_file_extension_condition = [])
    ?(url_file_name_condition = []) ?(url_path_condition = [])
    ?(url_redirect_action = []) ?(url_rewrite_action = []) ~name
    ~order () : delivery_rule =
  {
    name;
    order;
    cache_expiration_action;
    cache_key_query_string_action;
    cookies_condition;
    device_condition;
    http_version_condition;
    modify_request_header_action;
    modify_response_header_action;
    post_arg_condition;
    query_string_condition;
    remote_address_condition;
    request_body_condition;
    request_header_condition;
    request_method_condition;
    request_scheme_condition;
    request_uri_condition;
    url_file_extension_condition;
    url_file_name_condition;
    url_path_condition;
    url_redirect_action;
    url_rewrite_action;
  }

let geo_filter ~action ~country_codes ~relative_path () : geo_filter
    =
  { action; country_codes; relative_path }

let global_delivery_rule__cache_expiration_action ?duration ~behavior
    () : global_delivery_rule__cache_expiration_action =
  { behavior; duration }

let global_delivery_rule__cache_key_query_string_action ?parameters
    ~behavior () :
    global_delivery_rule__cache_key_query_string_action =
  { behavior; parameters }

let global_delivery_rule__modify_request_header_action ?value ~action
    ~name () : global_delivery_rule__modify_request_header_action =
  { action; name; value }

let global_delivery_rule__modify_response_header_action ?value
    ~action ~name () :
    global_delivery_rule__modify_response_header_action =
  { action; name; value }

let global_delivery_rule__url_redirect_action ?fragment ?hostname
    ?path ?protocol ?query_string ~redirect_type () :
    global_delivery_rule__url_redirect_action =
  { fragment; hostname; path; protocol; query_string; redirect_type }

let global_delivery_rule__url_rewrite_action ?preserve_unmatched_path
    ~destination ~source_pattern () :
    global_delivery_rule__url_rewrite_action =
  { destination; preserve_unmatched_path; source_pattern }

let global_delivery_rule ?(cache_expiration_action = [])
    ?(cache_key_query_string_action = [])
    ?(modify_request_header_action = [])
    ?(modify_response_header_action = []) ?(url_redirect_action = [])
    ?(url_rewrite_action = []) () : global_delivery_rule =
  {
    cache_expiration_action;
    cache_key_query_string_action;
    modify_request_header_action;
    modify_response_header_action;
    url_redirect_action;
    url_rewrite_action;
  }

let origin ?http_port ?https_port ~host_name ~name () : origin =
  { host_name; http_port; https_port; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_endpoint ?content_types_to_compress ?id
    ?is_compression_enabled ?is_http_allowed ?is_https_allowed
    ?optimization_type ?origin_host_header ?origin_path ?probe_path
    ?querystring_caching_behaviour ?tags ?(delivery_rule = [])
    ?(geo_filter = []) ?(global_delivery_rule = []) ?timeouts
    ~location ~name ~profile_name ~resource_group_name ~origin () :
    azurerm_cdn_endpoint =
  {
    content_types_to_compress;
    id;
    is_compression_enabled;
    is_http_allowed;
    is_https_allowed;
    location;
    name;
    optimization_type;
    origin_host_header;
    origin_path;
    probe_path;
    profile_name;
    querystring_caching_behaviour;
    resource_group_name;
    tags;
    delivery_rule;
    geo_filter;
    global_delivery_rule;
    origin;
    timeouts;
  }

type t = {
  tf_name : string;
  content_types_to_compress : string list prop;
  fqdn : string prop;
  id : string prop;
  is_compression_enabled : bool prop;
  is_http_allowed : bool prop;
  is_https_allowed : bool prop;
  location : string prop;
  name : string prop;
  optimization_type : string prop;
  origin_host_header : string prop;
  origin_path : string prop;
  probe_path : string prop;
  profile_name : string prop;
  querystring_caching_behaviour : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?content_types_to_compress ?id ?is_compression_enabled
    ?is_http_allowed ?is_https_allowed ?optimization_type
    ?origin_host_header ?origin_path ?probe_path
    ?querystring_caching_behaviour ?tags ?(delivery_rule = [])
    ?(geo_filter = []) ?(global_delivery_rule = []) ?timeouts
    ~location ~name ~profile_name ~resource_group_name ~origin __id =
  let __type = "azurerm_cdn_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       content_types_to_compress =
         Prop.computed __type __id "content_types_to_compress";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       is_compression_enabled =
         Prop.computed __type __id "is_compression_enabled";
       is_http_allowed = Prop.computed __type __id "is_http_allowed";
       is_https_allowed =
         Prop.computed __type __id "is_https_allowed";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       optimization_type =
         Prop.computed __type __id "optimization_type";
       origin_host_header =
         Prop.computed __type __id "origin_host_header";
       origin_path = Prop.computed __type __id "origin_path";
       probe_path = Prop.computed __type __id "probe_path";
       profile_name = Prop.computed __type __id "profile_name";
       querystring_caching_behaviour =
         Prop.computed __type __id "querystring_caching_behaviour";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_endpoint
        (azurerm_cdn_endpoint ?content_types_to_compress ?id
           ?is_compression_enabled ?is_http_allowed ?is_https_allowed
           ?optimization_type ?origin_host_header ?origin_path
           ?probe_path ?querystring_caching_behaviour ?tags
           ~delivery_rule ~geo_filter ~global_delivery_rule ?timeouts
           ~location ~name ~profile_name ~resource_group_name ~origin
           ());
    attrs = __attrs;
  }

let register ?tf_module ?content_types_to_compress ?id
    ?is_compression_enabled ?is_http_allowed ?is_https_allowed
    ?optimization_type ?origin_host_header ?origin_path ?probe_path
    ?querystring_caching_behaviour ?tags ?(delivery_rule = [])
    ?(geo_filter = []) ?(global_delivery_rule = []) ?timeouts
    ~location ~name ~profile_name ~resource_group_name ~origin __id =
  let (r : _ Tf_core.resource) =
    make ?content_types_to_compress ?id ?is_compression_enabled
      ?is_http_allowed ?is_https_allowed ?optimization_type
      ?origin_host_header ?origin_path ?probe_path
      ?querystring_caching_behaviour ?tags ~delivery_rule ~geo_filter
      ~global_delivery_rule ?timeouts ~location ~name ~profile_name
      ~resource_group_name ~origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
