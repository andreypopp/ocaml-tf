(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_error_response = {
  error_caching_min_ttl : float prop option; [@option]
  error_code : float prop;
  response_code : float prop option; [@option]
  response_page_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_error_response) -> ()

let yojson_of_custom_error_response =
  (function
   | {
       error_caching_min_ttl = v_error_caching_min_ttl;
       error_code = v_error_code;
       response_code = v_response_code;
       response_page_path = v_response_page_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response_page_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_page_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "response_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_error_code in
         ("error_code", arg) :: bnds
       in
       let bnds =
         match v_error_caching_min_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "error_caching_min_ttl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_error_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_error_response

[@@@deriving.end]

type default_cache_behavior__forwarded_values__cookies = {
  forward : string prop;
  whitelisted_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_cache_behavior__forwarded_values__cookies) -> ()

let yojson_of_default_cache_behavior__forwarded_values__cookies =
  (function
   | { forward = v_forward; whitelisted_names = v_whitelisted_names }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_whitelisted_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "whitelisted_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_forward in
         ("forward", arg) :: bnds
       in
       `Assoc bnds
    : default_cache_behavior__forwarded_values__cookies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cache_behavior__forwarded_values__cookies

[@@@deriving.end]

type default_cache_behavior__forwarded_values = {
  headers : string prop list option; [@option]
  query_string : bool prop;
  query_string_cache_keys : string prop list option; [@option]
  cookies : default_cache_behavior__forwarded_values__cookies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_cache_behavior__forwarded_values) -> ()

let yojson_of_default_cache_behavior__forwarded_values =
  (function
   | {
       headers = v_headers;
       query_string = v_query_string;
       query_string_cache_keys = v_query_string_cache_keys;
       cookies = v_cookies;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cookies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_cache_behavior__forwarded_values__cookies)
               v_cookies
           in
           let bnd = "cookies", arg in
           bnd :: bnds
       in
       let bnds =
         match v_query_string_cache_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_string_cache_keys", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_query_string in
         ("query_string", arg) :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_cache_behavior__forwarded_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cache_behavior__forwarded_values

[@@@deriving.end]

type default_cache_behavior__function_association = {
  event_type : string prop;
  function_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_cache_behavior__function_association) -> ()

let yojson_of_default_cache_behavior__function_association =
  (function
   | { event_type = v_event_type; function_arn = v_function_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : default_cache_behavior__function_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cache_behavior__function_association

[@@@deriving.end]

type default_cache_behavior__lambda_function_association = {
  event_type : string prop;
  include_body : bool prop option; [@option]
  lambda_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_cache_behavior__lambda_function_association) -> ()

let yojson_of_default_cache_behavior__lambda_function_association =
  (function
   | {
       event_type = v_event_type;
       include_body = v_include_body;
       lambda_arn = v_lambda_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       let bnds =
         match v_include_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_body", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : default_cache_behavior__lambda_function_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cache_behavior__lambda_function_association

[@@@deriving.end]

type default_cache_behavior = {
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_policy_id : string prop option; [@option]
  cached_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compress : bool prop option; [@option]
  default_ttl : float prop option; [@option]
  field_level_encryption_id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  min_ttl : float prop option; [@option]
  origin_request_policy_id : string prop option; [@option]
  realtime_log_config_arn : string prop option; [@option]
  response_headers_policy_id : string prop option; [@option]
  smooth_streaming : bool prop option; [@option]
  target_origin_id : string prop;
  trusted_key_groups : string prop list option; [@option]
  trusted_signers : string prop list option; [@option]
  viewer_protocol_policy : string prop;
  forwarded_values : default_cache_behavior__forwarded_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  function_association :
    default_cache_behavior__function_association list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda_function_association :
    default_cache_behavior__lambda_function_association list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_cache_behavior) -> ()

let yojson_of_default_cache_behavior =
  (function
   | {
       allowed_methods = v_allowed_methods;
       cache_policy_id = v_cache_policy_id;
       cached_methods = v_cached_methods;
       compress = v_compress;
       default_ttl = v_default_ttl;
       field_level_encryption_id = v_field_level_encryption_id;
       max_ttl = v_max_ttl;
       min_ttl = v_min_ttl;
       origin_request_policy_id = v_origin_request_policy_id;
       realtime_log_config_arn = v_realtime_log_config_arn;
       response_headers_policy_id = v_response_headers_policy_id;
       smooth_streaming = v_smooth_streaming;
       target_origin_id = v_target_origin_id;
       trusted_key_groups = v_trusted_key_groups;
       trusted_signers = v_trusted_signers;
       viewer_protocol_policy = v_viewer_protocol_policy;
       forwarded_values = v_forwarded_values;
       function_association = v_function_association;
       lambda_function_association = v_lambda_function_association;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_function_association then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_cache_behavior__lambda_function_association)
               v_lambda_function_association
           in
           let bnd = "lambda_function_association", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_function_association then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_cache_behavior__function_association)
               v_function_association
           in
           let bnd = "function_association", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forwarded_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_cache_behavior__forwarded_values)
               v_forwarded_values
           in
           let bnd = "forwarded_values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_viewer_protocol_policy
         in
         ("viewer_protocol_policy", arg) :: bnds
       in
       let bnds =
         match v_trusted_signers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_signers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_key_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_key_groups", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_origin_id
         in
         ("target_origin_id", arg) :: bnds
       in
       let bnds =
         match v_smooth_streaming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smooth_streaming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_headers_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_headers_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_realtime_log_config_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "realtime_log_config_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_request_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_request_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_level_encryption_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_level_encryption_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compress", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cached_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cached_methods
           in
           let bnd = "cached_methods", arg in
           bnd :: bnds
       in
       let bnds =
         match v_cache_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_cache_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cache_behavior

[@@@deriving.end]

type logging_config = {
  bucket : string prop;
  include_cookies : bool prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | {
       bucket = v_bucket;
       include_cookies = v_include_cookies;
       prefix = v_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_include_cookies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_cookies", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type ordered_cache_behavior__forwarded_values__cookies = {
  forward : string prop;
  whitelisted_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : ordered_cache_behavior__forwarded_values__cookies) -> ()

let yojson_of_ordered_cache_behavior__forwarded_values__cookies =
  (function
   | { forward = v_forward; whitelisted_names = v_whitelisted_names }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_whitelisted_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "whitelisted_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_forward in
         ("forward", arg) :: bnds
       in
       `Assoc bnds
    : ordered_cache_behavior__forwarded_values__cookies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ordered_cache_behavior__forwarded_values__cookies

[@@@deriving.end]

type ordered_cache_behavior__forwarded_values = {
  headers : string prop list option; [@option]
  query_string : bool prop;
  query_string_cache_keys : string prop list option; [@option]
  cookies : ordered_cache_behavior__forwarded_values__cookies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ordered_cache_behavior__forwarded_values) -> ()

let yojson_of_ordered_cache_behavior__forwarded_values =
  (function
   | {
       headers = v_headers;
       query_string = v_query_string;
       query_string_cache_keys = v_query_string_cache_keys;
       cookies = v_cookies;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cookies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ordered_cache_behavior__forwarded_values__cookies)
               v_cookies
           in
           let bnd = "cookies", arg in
           bnd :: bnds
       in
       let bnds =
         match v_query_string_cache_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_string_cache_keys", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_query_string in
         ("query_string", arg) :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ordered_cache_behavior__forwarded_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ordered_cache_behavior__forwarded_values

[@@@deriving.end]

type ordered_cache_behavior__function_association = {
  event_type : string prop;
  function_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ordered_cache_behavior__function_association) -> ()

let yojson_of_ordered_cache_behavior__function_association =
  (function
   | { event_type = v_event_type; function_arn = v_function_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : ordered_cache_behavior__function_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ordered_cache_behavior__function_association

[@@@deriving.end]

type ordered_cache_behavior__lambda_function_association = {
  event_type : string prop;
  include_body : bool prop option; [@option]
  lambda_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : ordered_cache_behavior__lambda_function_association) -> ()

let yojson_of_ordered_cache_behavior__lambda_function_association =
  (function
   | {
       event_type = v_event_type;
       include_body = v_include_body;
       lambda_arn = v_lambda_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       let bnds =
         match v_include_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_body", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       `Assoc bnds
    : ordered_cache_behavior__lambda_function_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ordered_cache_behavior__lambda_function_association

[@@@deriving.end]

type ordered_cache_behavior = {
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_policy_id : string prop option; [@option]
  cached_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compress : bool prop option; [@option]
  default_ttl : float prop option; [@option]
  field_level_encryption_id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  min_ttl : float prop option; [@option]
  origin_request_policy_id : string prop option; [@option]
  path_pattern : string prop;
  realtime_log_config_arn : string prop option; [@option]
  response_headers_policy_id : string prop option; [@option]
  smooth_streaming : bool prop option; [@option]
  target_origin_id : string prop;
  trusted_key_groups : string prop list option; [@option]
  trusted_signers : string prop list option; [@option]
  viewer_protocol_policy : string prop;
  forwarded_values : ordered_cache_behavior__forwarded_values list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  function_association :
    ordered_cache_behavior__function_association list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda_function_association :
    ordered_cache_behavior__lambda_function_association list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ordered_cache_behavior) -> ()

let yojson_of_ordered_cache_behavior =
  (function
   | {
       allowed_methods = v_allowed_methods;
       cache_policy_id = v_cache_policy_id;
       cached_methods = v_cached_methods;
       compress = v_compress;
       default_ttl = v_default_ttl;
       field_level_encryption_id = v_field_level_encryption_id;
       max_ttl = v_max_ttl;
       min_ttl = v_min_ttl;
       origin_request_policy_id = v_origin_request_policy_id;
       path_pattern = v_path_pattern;
       realtime_log_config_arn = v_realtime_log_config_arn;
       response_headers_policy_id = v_response_headers_policy_id;
       smooth_streaming = v_smooth_streaming;
       target_origin_id = v_target_origin_id;
       trusted_key_groups = v_trusted_key_groups;
       trusted_signers = v_trusted_signers;
       viewer_protocol_policy = v_viewer_protocol_policy;
       forwarded_values = v_forwarded_values;
       function_association = v_function_association;
       lambda_function_association = v_lambda_function_association;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_function_association then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ordered_cache_behavior__lambda_function_association)
               v_lambda_function_association
           in
           let bnd = "lambda_function_association", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_function_association then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ordered_cache_behavior__function_association)
               v_function_association
           in
           let bnd = "function_association", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forwarded_values then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ordered_cache_behavior__forwarded_values)
               v_forwarded_values
           in
           let bnd = "forwarded_values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_viewer_protocol_policy
         in
         ("viewer_protocol_policy", arg) :: bnds
       in
       let bnds =
         match v_trusted_signers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_signers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_key_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_key_groups", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_origin_id
         in
         ("target_origin_id", arg) :: bnds
       in
       let bnds =
         match v_smooth_streaming with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smooth_streaming", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_headers_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_headers_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_realtime_log_config_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "realtime_log_config_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_pattern in
         ("path_pattern", arg) :: bnds
       in
       let bnds =
         match v_origin_request_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_request_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_level_encryption_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_level_encryption_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compress", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cached_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cached_methods
           in
           let bnd = "cached_methods", arg in
           bnd :: bnds
       in
       let bnds =
         match v_cache_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ordered_cache_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ordered_cache_behavior

[@@@deriving.end]

type origin__custom_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin__custom_header) -> ()

let yojson_of_origin__custom_header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : origin__custom_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin__custom_header

[@@@deriving.end]

type origin__custom_origin_config = {
  http_port : float prop;
  https_port : float prop;
  origin_keepalive_timeout : float prop option; [@option]
  origin_protocol_policy : string prop;
  origin_read_timeout : float prop option; [@option]
  origin_ssl_protocols : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin__custom_origin_config) -> ()

let yojson_of_origin__custom_origin_config =
  (function
   | {
       http_port = v_http_port;
       https_port = v_https_port;
       origin_keepalive_timeout = v_origin_keepalive_timeout;
       origin_protocol_policy = v_origin_protocol_policy;
       origin_read_timeout = v_origin_read_timeout;
       origin_ssl_protocols = v_origin_ssl_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_origin_ssl_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_origin_ssl_protocols
           in
           let bnd = "origin_ssl_protocols", arg in
           bnd :: bnds
       in
       let bnds =
         match v_origin_read_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "origin_read_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_origin_protocol_policy
         in
         ("origin_protocol_policy", arg) :: bnds
       in
       let bnds =
         match v_origin_keepalive_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "origin_keepalive_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_https_port in
         ("https_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_http_port in
         ("http_port", arg) :: bnds
       in
       `Assoc bnds
    : origin__custom_origin_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin__custom_origin_config

[@@@deriving.end]

type origin__origin_shield = {
  enabled : bool prop;
  origin_shield_region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin__origin_shield) -> ()

let yojson_of_origin__origin_shield =
  (function
   | {
       enabled = v_enabled;
       origin_shield_region = v_origin_shield_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_origin_shield_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_shield_region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : origin__origin_shield -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin__origin_shield

[@@@deriving.end]

type origin__s3_origin_config = {
  origin_access_identity : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin__s3_origin_config) -> ()

let yojson_of_origin__s3_origin_config =
  (function
   | { origin_access_identity = v_origin_access_identity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_origin_access_identity
         in
         ("origin_access_identity", arg) :: bnds
       in
       `Assoc bnds
    : origin__s3_origin_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin__s3_origin_config

[@@@deriving.end]

type origin = {
  connection_attempts : float prop option; [@option]
  connection_timeout : float prop option; [@option]
  domain_name : string prop;
  origin_access_control_id : string prop option; [@option]
  origin_id : string prop;
  origin_path : string prop option; [@option]
  custom_header : origin__custom_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_origin_config : origin__custom_origin_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  origin_shield : origin__origin_shield list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_origin_config : origin__s3_origin_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin) -> ()

let yojson_of_origin =
  (function
   | {
       connection_attempts = v_connection_attempts;
       connection_timeout = v_connection_timeout;
       domain_name = v_domain_name;
       origin_access_control_id = v_origin_access_control_id;
       origin_id = v_origin_id;
       origin_path = v_origin_path;
       custom_header = v_custom_header;
       custom_origin_config = v_custom_origin_config;
       origin_shield = v_origin_shield;
       s3_origin_config = v_s3_origin_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_origin_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_origin__s3_origin_config)
               v_s3_origin_config
           in
           let bnd = "s3_origin_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_origin_shield then bnds
         else
           let arg =
             (yojson_of_list yojson_of_origin__origin_shield)
               v_origin_shield
           in
           let bnd = "origin_shield", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_origin_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_origin__custom_origin_config)
               v_custom_origin_config
           in
           let bnd = "custom_origin_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_header then bnds
         else
           let arg =
             (yojson_of_list yojson_of_origin__custom_header)
               v_custom_header
           in
           let bnd = "custom_header", arg in
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
         let arg = yojson_of_prop yojson_of_string v_origin_id in
         ("origin_id", arg) :: bnds
       in
       let bnds =
         match v_origin_access_control_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_access_control_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_connection_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_attempts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : origin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin

[@@@deriving.end]

type origin_group__failover_criteria = {
  status_codes : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_group__failover_criteria) -> ()

let yojson_of_origin_group__failover_criteria =
  (function
   | { status_codes = v_status_codes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_status_codes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_status_codes
           in
           let bnd = "status_codes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : origin_group__failover_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_group__failover_criteria

[@@@deriving.end]

type origin_group__member = { origin_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_group__member) -> ()

let yojson_of_origin_group__member =
  (function
   | { origin_id = v_origin_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin_id in
         ("origin_id", arg) :: bnds
       in
       `Assoc bnds
    : origin_group__member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_group__member

[@@@deriving.end]

type origin_group = {
  origin_id : string prop;
  failover_criteria : origin_group__failover_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  member : origin_group__member list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_group) -> ()

let yojson_of_origin_group =
  (function
   | {
       origin_id = v_origin_id;
       failover_criteria = v_failover_criteria;
       member = v_member;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_member then bnds
         else
           let arg =
             (yojson_of_list yojson_of_origin_group__member) v_member
           in
           let bnd = "member", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_failover_criteria then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_origin_group__failover_criteria)
               v_failover_criteria
           in
           let bnd = "failover_criteria", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin_id in
         ("origin_id", arg) :: bnds
       in
       `Assoc bnds
    : origin_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_group

[@@@deriving.end]

type restrictions__geo_restriction = {
  locations : string prop list option; [@option]
  restriction_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions__geo_restriction) -> ()

let yojson_of_restrictions__geo_restriction =
  (function
   | {
       locations = v_locations;
       restriction_type = v_restriction_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_restriction_type
         in
         ("restriction_type", arg) :: bnds
       in
       let bnds =
         match v_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "locations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restrictions__geo_restriction ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions__geo_restriction

[@@@deriving.end]

type restrictions = {
  geo_restriction : restrictions__geo_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions) -> ()

let yojson_of_restrictions =
  (function
   | { geo_restriction = v_geo_restriction } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_geo_restriction then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restrictions__geo_restriction)
               v_geo_restriction
           in
           let bnd = "geo_restriction", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restrictions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions

[@@@deriving.end]

type viewer_certificate = {
  acm_certificate_arn : string prop option; [@option]
  cloudfront_default_certificate : bool prop option; [@option]
  iam_certificate_id : string prop option; [@option]
  minimum_protocol_version : string prop option; [@option]
  ssl_support_method : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : viewer_certificate) -> ()

let yojson_of_viewer_certificate =
  (function
   | {
       acm_certificate_arn = v_acm_certificate_arn;
       cloudfront_default_certificate =
         v_cloudfront_default_certificate;
       iam_certificate_id = v_iam_certificate_id;
       minimum_protocol_version = v_minimum_protocol_version;
       ssl_support_method = v_ssl_support_method;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_support_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_support_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_protocol_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_protocol_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_certificate_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudfront_default_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cloudfront_default_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acm_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acm_certificate_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : viewer_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_viewer_certificate

[@@@deriving.end]

type trusted_key_groups__items = {
  key_group_id : string prop;
  key_pair_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_key_groups__items) -> ()

let yojson_of_trusted_key_groups__items =
  (function
   | { key_group_id = v_key_group_id; key_pair_ids = v_key_pair_ids }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_key_pair_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_key_pair_ids
           in
           let bnd = "key_pair_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_group_id in
         ("key_group_id", arg) :: bnds
       in
       `Assoc bnds
    : trusted_key_groups__items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_key_groups__items

[@@@deriving.end]

type trusted_key_groups = {
  enabled : bool prop;
  items : trusted_key_groups__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_key_groups) -> ()

let yojson_of_trusted_key_groups =
  (function
   | { enabled = v_enabled; items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trusted_key_groups__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : trusted_key_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_key_groups

[@@@deriving.end]

type trusted_signers__items = {
  aws_account_number : string prop;
  key_pair_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_signers__items) -> ()

let yojson_of_trusted_signers__items =
  (function
   | {
       aws_account_number = v_aws_account_number;
       key_pair_ids = v_key_pair_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_key_pair_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_key_pair_ids
           in
           let bnd = "key_pair_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aws_account_number
         in
         ("aws_account_number", arg) :: bnds
       in
       `Assoc bnds
    : trusted_signers__items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_signers__items

[@@@deriving.end]

type trusted_signers = {
  enabled : bool prop;
  items : trusted_signers__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_signers) -> ()

let yojson_of_trusted_signers =
  (function
   | { enabled = v_enabled; items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trusted_signers__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : trusted_signers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_signers

[@@@deriving.end]

type aws_cloudfront_distribution = {
  aliases : string prop list option; [@option]
  comment : string prop option; [@option]
  continuous_deployment_policy_id : string prop option; [@option]
  default_root_object : string prop option; [@option]
  enabled : bool prop;
  http_version : string prop option; [@option]
  id : string prop option; [@option]
  is_ipv6_enabled : bool prop option; [@option]
  price_class : string prop option; [@option]
  retain_on_delete : bool prop option; [@option]
  staging : bool prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  wait_for_deployment : bool prop option; [@option]
  web_acl_id : string prop option; [@option]
  custom_error_response : custom_error_response list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_cache_behavior : default_cache_behavior list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logging_config : logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ordered_cache_behavior : ordered_cache_behavior list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  origin : origin list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  origin_group : origin_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restrictions : restrictions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  viewer_certificate : viewer_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_distribution) -> ()

let yojson_of_aws_cloudfront_distribution =
  (function
   | {
       aliases = v_aliases;
       comment = v_comment;
       continuous_deployment_policy_id =
         v_continuous_deployment_policy_id;
       default_root_object = v_default_root_object;
       enabled = v_enabled;
       http_version = v_http_version;
       id = v_id;
       is_ipv6_enabled = v_is_ipv6_enabled;
       price_class = v_price_class;
       retain_on_delete = v_retain_on_delete;
       staging = v_staging;
       tags = v_tags;
       tags_all = v_tags_all;
       wait_for_deployment = v_wait_for_deployment;
       web_acl_id = v_web_acl_id;
       custom_error_response = v_custom_error_response;
       default_cache_behavior = v_default_cache_behavior;
       logging_config = v_logging_config;
       ordered_cache_behavior = v_ordered_cache_behavior;
       origin = v_origin;
       origin_group = v_origin_group;
       restrictions = v_restrictions;
       viewer_certificate = v_viewer_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_viewer_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_viewer_certificate)
               v_viewer_certificate
           in
           let bnd = "viewer_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_restrictions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restrictions) v_restrictions
           in
           let bnd = "restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_origin_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_origin_group) v_origin_group
           in
           let bnd = "origin_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_origin then bnds
         else
           let arg = (yojson_of_list yojson_of_origin) v_origin in
           let bnd = "origin", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ordered_cache_behavior then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ordered_cache_behavior)
               v_ordered_cache_behavior
           in
           let bnd = "ordered_cache_behavior", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_cache_behavior then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_cache_behavior)
               v_default_cache_behavior
           in
           let bnd = "default_cache_behavior", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_error_response then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_error_response)
               v_custom_error_response
           in
           let bnd = "custom_error_response", arg in
           bnd :: bnds
       in
       let bnds =
         match v_web_acl_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_acl_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wait_for_deployment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_deployment", arg in
             bnd :: bnds
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
         match v_staging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "staging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retain_on_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_on_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_price_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "price_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_ipv6_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_ipv6_enabled", arg in
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
         match v_http_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_default_root_object with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_root_object", arg in
             bnd :: bnds
       in
       let bnds =
         match v_continuous_deployment_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "continuous_deployment_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aliases with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aliases", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_distribution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_distribution

[@@@deriving.end]

let custom_error_response ?error_caching_min_ttl ?response_code
    ?response_page_path ~error_code () : custom_error_response =
  {
    error_caching_min_ttl;
    error_code;
    response_code;
    response_page_path;
  }

let default_cache_behavior__forwarded_values__cookies
    ?whitelisted_names ~forward () :
    default_cache_behavior__forwarded_values__cookies =
  { forward; whitelisted_names }

let default_cache_behavior__forwarded_values ?headers
    ?query_string_cache_keys ~query_string ~cookies () :
    default_cache_behavior__forwarded_values =
  { headers; query_string; query_string_cache_keys; cookies }

let default_cache_behavior__function_association ~event_type
    ~function_arn () : default_cache_behavior__function_association =
  { event_type; function_arn }

let default_cache_behavior__lambda_function_association ?include_body
    ~event_type ~lambda_arn () :
    default_cache_behavior__lambda_function_association =
  { event_type; include_body; lambda_arn }

let default_cache_behavior ?cache_policy_id ?compress ?default_ttl
    ?field_level_encryption_id ?max_ttl ?min_ttl
    ?origin_request_policy_id ?realtime_log_config_arn
    ?response_headers_policy_id ?smooth_streaming ?trusted_key_groups
    ?trusted_signers ?(forwarded_values = []) ~allowed_methods
    ~cached_methods ~target_origin_id ~viewer_protocol_policy
    ~function_association ~lambda_function_association () :
    default_cache_behavior =
  {
    allowed_methods;
    cache_policy_id;
    cached_methods;
    compress;
    default_ttl;
    field_level_encryption_id;
    max_ttl;
    min_ttl;
    origin_request_policy_id;
    realtime_log_config_arn;
    response_headers_policy_id;
    smooth_streaming;
    target_origin_id;
    trusted_key_groups;
    trusted_signers;
    viewer_protocol_policy;
    forwarded_values;
    function_association;
    lambda_function_association;
  }

let logging_config ?include_cookies ?prefix ~bucket () :
    logging_config =
  { bucket; include_cookies; prefix }

let ordered_cache_behavior__forwarded_values__cookies
    ?whitelisted_names ~forward () :
    ordered_cache_behavior__forwarded_values__cookies =
  { forward; whitelisted_names }

let ordered_cache_behavior__forwarded_values ?headers
    ?query_string_cache_keys ~query_string ~cookies () :
    ordered_cache_behavior__forwarded_values =
  { headers; query_string; query_string_cache_keys; cookies }

let ordered_cache_behavior__function_association ~event_type
    ~function_arn () : ordered_cache_behavior__function_association =
  { event_type; function_arn }

let ordered_cache_behavior__lambda_function_association ?include_body
    ~event_type ~lambda_arn () :
    ordered_cache_behavior__lambda_function_association =
  { event_type; include_body; lambda_arn }

let ordered_cache_behavior ?cache_policy_id ?compress ?default_ttl
    ?field_level_encryption_id ?max_ttl ?min_ttl
    ?origin_request_policy_id ?realtime_log_config_arn
    ?response_headers_policy_id ?smooth_streaming ?trusted_key_groups
    ?trusted_signers ?(forwarded_values = []) ~allowed_methods
    ~cached_methods ~path_pattern ~target_origin_id
    ~viewer_protocol_policy ~function_association
    ~lambda_function_association () : ordered_cache_behavior =
  {
    allowed_methods;
    cache_policy_id;
    cached_methods;
    compress;
    default_ttl;
    field_level_encryption_id;
    max_ttl;
    min_ttl;
    origin_request_policy_id;
    path_pattern;
    realtime_log_config_arn;
    response_headers_policy_id;
    smooth_streaming;
    target_origin_id;
    trusted_key_groups;
    trusted_signers;
    viewer_protocol_policy;
    forwarded_values;
    function_association;
    lambda_function_association;
  }

let origin__custom_header ~name ~value () : origin__custom_header =
  { name; value }

let origin__custom_origin_config ?origin_keepalive_timeout
    ?origin_read_timeout ~http_port ~https_port
    ~origin_protocol_policy ~origin_ssl_protocols () :
    origin__custom_origin_config =
  {
    http_port;
    https_port;
    origin_keepalive_timeout;
    origin_protocol_policy;
    origin_read_timeout;
    origin_ssl_protocols;
  }

let origin__origin_shield ?origin_shield_region ~enabled () :
    origin__origin_shield =
  { enabled; origin_shield_region }

let origin__s3_origin_config ~origin_access_identity () :
    origin__s3_origin_config =
  { origin_access_identity }

let origin ?connection_attempts ?connection_timeout
    ?origin_access_control_id ?origin_path
    ?(custom_origin_config = []) ?(origin_shield = [])
    ?(s3_origin_config = []) ~domain_name ~origin_id ~custom_header
    () : origin =
  {
    connection_attempts;
    connection_timeout;
    domain_name;
    origin_access_control_id;
    origin_id;
    origin_path;
    custom_header;
    custom_origin_config;
    origin_shield;
    s3_origin_config;
  }

let origin_group__failover_criteria ~status_codes () :
    origin_group__failover_criteria =
  { status_codes }

let origin_group__member ~origin_id () : origin_group__member =
  { origin_id }

let origin_group ~origin_id ~failover_criteria ~member () :
    origin_group =
  { origin_id; failover_criteria; member }

let restrictions__geo_restriction ?locations ~restriction_type () :
    restrictions__geo_restriction =
  { locations; restriction_type }

let restrictions ~geo_restriction () : restrictions =
  { geo_restriction }

let viewer_certificate ?acm_certificate_arn
    ?cloudfront_default_certificate ?iam_certificate_id
    ?minimum_protocol_version ?ssl_support_method () :
    viewer_certificate =
  {
    acm_certificate_arn;
    cloudfront_default_certificate;
    iam_certificate_id;
    minimum_protocol_version;
    ssl_support_method;
  }

let aws_cloudfront_distribution ?aliases ?comment
    ?continuous_deployment_policy_id ?default_root_object
    ?http_version ?id ?is_ipv6_enabled ?price_class ?retain_on_delete
    ?staging ?tags ?tags_all ?wait_for_deployment ?web_acl_id
    ?(logging_config = []) ?(ordered_cache_behavior = []) ~enabled
    ~custom_error_response ~default_cache_behavior ~origin
    ~origin_group ~restrictions ~viewer_certificate () :
    aws_cloudfront_distribution =
  {
    aliases;
    comment;
    continuous_deployment_policy_id;
    default_root_object;
    enabled;
    http_version;
    id;
    is_ipv6_enabled;
    price_class;
    retain_on_delete;
    staging;
    tags;
    tags_all;
    wait_for_deployment;
    web_acl_id;
    custom_error_response;
    default_cache_behavior;
    logging_config;
    ordered_cache_behavior;
    origin;
    origin_group;
    restrictions;
    viewer_certificate;
  }

type t = {
  tf_name : string;
  aliases : string list prop;
  arn : string prop;
  caller_reference : string prop;
  comment : string prop;
  continuous_deployment_policy_id : string prop;
  default_root_object : string prop;
  domain_name : string prop;
  enabled : bool prop;
  etag : string prop;
  hosted_zone_id : string prop;
  http_version : string prop;
  id : string prop;
  in_progress_validation_batches : float prop;
  is_ipv6_enabled : bool prop;
  last_modified_time : string prop;
  price_class : string prop;
  retain_on_delete : bool prop;
  staging : bool prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  trusted_key_groups : trusted_key_groups list prop;
  trusted_signers : trusted_signers list prop;
  wait_for_deployment : bool prop;
  web_acl_id : string prop;
}

let make ?aliases ?comment ?continuous_deployment_policy_id
    ?default_root_object ?http_version ?id ?is_ipv6_enabled
    ?price_class ?retain_on_delete ?staging ?tags ?tags_all
    ?wait_for_deployment ?web_acl_id ?(logging_config = [])
    ?(ordered_cache_behavior = []) ~enabled ~custom_error_response
    ~default_cache_behavior ~origin ~origin_group ~restrictions
    ~viewer_certificate __id =
  let __type = "aws_cloudfront_distribution" in
  let __attrs =
    ({
       tf_name = __id;
       aliases = Prop.computed __type __id "aliases";
       arn = Prop.computed __type __id "arn";
       caller_reference =
         Prop.computed __type __id "caller_reference";
       comment = Prop.computed __type __id "comment";
       continuous_deployment_policy_id =
         Prop.computed __type __id "continuous_deployment_policy_id";
       default_root_object =
         Prop.computed __type __id "default_root_object";
       domain_name = Prop.computed __type __id "domain_name";
       enabled = Prop.computed __type __id "enabled";
       etag = Prop.computed __type __id "etag";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       http_version = Prop.computed __type __id "http_version";
       id = Prop.computed __type __id "id";
       in_progress_validation_batches =
         Prop.computed __type __id "in_progress_validation_batches";
       is_ipv6_enabled = Prop.computed __type __id "is_ipv6_enabled";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       price_class = Prop.computed __type __id "price_class";
       retain_on_delete =
         Prop.computed __type __id "retain_on_delete";
       staging = Prop.computed __type __id "staging";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       trusted_key_groups =
         Prop.computed __type __id "trusted_key_groups";
       trusted_signers = Prop.computed __type __id "trusted_signers";
       wait_for_deployment =
         Prop.computed __type __id "wait_for_deployment";
       web_acl_id = Prop.computed __type __id "web_acl_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_distribution
        (aws_cloudfront_distribution ?aliases ?comment
           ?continuous_deployment_policy_id ?default_root_object
           ?http_version ?id ?is_ipv6_enabled ?price_class
           ?retain_on_delete ?staging ?tags ?tags_all
           ?wait_for_deployment ?web_acl_id ~logging_config
           ~ordered_cache_behavior ~enabled ~custom_error_response
           ~default_cache_behavior ~origin ~origin_group
           ~restrictions ~viewer_certificate ());
    attrs = __attrs;
  }

let register ?tf_module ?aliases ?comment
    ?continuous_deployment_policy_id ?default_root_object
    ?http_version ?id ?is_ipv6_enabled ?price_class ?retain_on_delete
    ?staging ?tags ?tags_all ?wait_for_deployment ?web_acl_id
    ?(logging_config = []) ?(ordered_cache_behavior = []) ~enabled
    ~custom_error_response ~default_cache_behavior ~origin
    ~origin_group ~restrictions ~viewer_certificate __id =
  let (r : _ Tf_core.resource) =
    make ?aliases ?comment ?continuous_deployment_policy_id
      ?default_root_object ?http_version ?id ?is_ipv6_enabled
      ?price_class ?retain_on_delete ?staging ?tags ?tags_all
      ?wait_for_deployment ?web_acl_id ~logging_config
      ~ordered_cache_behavior ~enabled ~custom_error_response
      ~default_cache_behavior ~origin ~origin_group ~restrictions
      ~viewer_certificate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
