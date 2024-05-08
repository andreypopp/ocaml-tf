(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings = {
  cache_data_encrypted : bool prop option; [@option]
  cache_ttl_in_seconds : float prop option; [@option]
  caching_enabled : bool prop option; [@option]
  data_trace_enabled : bool prop option; [@option]
  logging_level : string prop option; [@option]
  metrics_enabled : bool prop option; [@option]
  require_authorization_for_cache_control : bool prop option;
      [@option]
  throttling_burst_limit : float prop option; [@option]
  throttling_rate_limit : float prop option; [@option]
  unauthorized_cache_control_header_strategy : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       cache_data_encrypted = v_cache_data_encrypted;
       cache_ttl_in_seconds = v_cache_ttl_in_seconds;
       caching_enabled = v_caching_enabled;
       data_trace_enabled = v_data_trace_enabled;
       logging_level = v_logging_level;
       metrics_enabled = v_metrics_enabled;
       require_authorization_for_cache_control =
         v_require_authorization_for_cache_control;
       throttling_burst_limit = v_throttling_burst_limit;
       throttling_rate_limit = v_throttling_rate_limit;
       unauthorized_cache_control_header_strategy =
         v_unauthorized_cache_control_header_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unauthorized_cache_control_header_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "unauthorized_cache_control_header_strategy", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_throttling_rate_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling_rate_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throttling_burst_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throttling_burst_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_authorization_for_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "require_authorization_for_cache_control", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "metrics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_trace_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_trace_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_caching_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "caching_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_ttl_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cache_ttl_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_data_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cache_data_encrypted", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type aws_api_gateway_method_settings = {
  id : string prop option; [@option]
  method_path : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
  settings : settings list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_method_settings) -> ()

let yojson_of_aws_api_gateway_method_settings =
  (function
   | {
       id = v_id;
       method_path = v_method_path;
       rest_api_id = v_rest_api_id;
       stage_name = v_stage_name;
       settings = v_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings) v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage_name in
         ("stage_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_method_path in
         ("method_path", arg) :: bnds
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
    : aws_api_gateway_method_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_method_settings

[@@@deriving.end]

let settings ?cache_data_encrypted ?cache_ttl_in_seconds
    ?caching_enabled ?data_trace_enabled ?logging_level
    ?metrics_enabled ?require_authorization_for_cache_control
    ?throttling_burst_limit ?throttling_rate_limit
    ?unauthorized_cache_control_header_strategy () : settings =
  {
    cache_data_encrypted;
    cache_ttl_in_seconds;
    caching_enabled;
    data_trace_enabled;
    logging_level;
    metrics_enabled;
    require_authorization_for_cache_control;
    throttling_burst_limit;
    throttling_rate_limit;
    unauthorized_cache_control_header_strategy;
  }

let aws_api_gateway_method_settings ?id ~method_path ~rest_api_id
    ~stage_name ~settings () : aws_api_gateway_method_settings =
  { id; method_path; rest_api_id; stage_name; settings }

type t = {
  tf_name : string;
  id : string prop;
  method_path : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
}

let make ?id ~method_path ~rest_api_id ~stage_name ~settings __id =
  let __type = "aws_api_gateway_method_settings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       method_path = Prop.computed __type __id "method_path";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       stage_name = Prop.computed __type __id "stage_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_method_settings
        (aws_api_gateway_method_settings ?id ~method_path
           ~rest_api_id ~stage_name ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~method_path ~rest_api_id ~stage_name
    ~settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ~method_path ~rest_api_id ~stage_name ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
