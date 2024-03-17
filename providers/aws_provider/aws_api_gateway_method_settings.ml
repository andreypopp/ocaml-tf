(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_method_settings__settings = {
  cache_data_encrypted : bool option; [@option]
      (** cache_data_encrypted *)
  cache_ttl_in_seconds : float option; [@option]
      (** cache_ttl_in_seconds *)
  caching_enabled : bool option; [@option]  (** caching_enabled *)
  data_trace_enabled : bool option; [@option]
      (** data_trace_enabled *)
  logging_level : string option; [@option]  (** logging_level *)
  metrics_enabled : bool option; [@option]  (** metrics_enabled *)
  require_authorization_for_cache_control : bool option; [@option]
      (** require_authorization_for_cache_control *)
  throttling_burst_limit : float option; [@option]
      (** throttling_burst_limit *)
  throttling_rate_limit : float option; [@option]
      (** throttling_rate_limit *)
  unauthorized_cache_control_header_strategy : string option;
      [@option]
      (** unauthorized_cache_control_header_strategy *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method_settings__settings *)

type aws_api_gateway_method_settings = {
  id : string option; [@option]  (** id *)
  method_path : string;  (** method_path *)
  rest_api_id : string;  (** rest_api_id *)
  stage_name : string;  (** stage_name *)
  settings : aws_api_gateway_method_settings__settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_method_settings *)

let aws_api_gateway_method_settings ?id ~method_path ~rest_api_id
    ~stage_name ~settings __resource_id =
  let __resource_type = "aws_api_gateway_method_settings" in
  let __resource =
    { id; method_path; rest_api_id; stage_name; settings }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_method_settings __resource);
  ()
