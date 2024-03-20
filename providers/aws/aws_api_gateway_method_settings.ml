(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings = {
  cache_data_encrypted : bool prop option; [@option]
      (** cache_data_encrypted *)
  cache_ttl_in_seconds : float prop option; [@option]
      (** cache_ttl_in_seconds *)
  caching_enabled : bool prop option; [@option]
      (** caching_enabled *)
  data_trace_enabled : bool prop option; [@option]
      (** data_trace_enabled *)
  logging_level : string prop option; [@option]  (** logging_level *)
  metrics_enabled : bool prop option; [@option]
      (** metrics_enabled *)
  require_authorization_for_cache_control : bool prop option;
      [@option]
      (** require_authorization_for_cache_control *)
  throttling_burst_limit : float prop option; [@option]
      (** throttling_burst_limit *)
  throttling_rate_limit : float prop option; [@option]
      (** throttling_rate_limit *)
  unauthorized_cache_control_header_strategy : string prop option;
      [@option]
      (** unauthorized_cache_control_header_strategy *)
}
[@@deriving yojson_of]
(** settings *)

type aws_api_gateway_method_settings = {
  id : string prop option; [@option]  (** id *)
  method_path : string prop;  (** method_path *)
  rest_api_id : string prop;  (** rest_api_id *)
  stage_name : string prop;  (** stage_name *)
  settings : settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_method_settings *)

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
  id : string prop;
  method_path : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
}

let make ?id ~method_path ~rest_api_id ~stage_name ~settings __id =
  let __type = "aws_api_gateway_method_settings" in
  let __attrs =
    ({
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
