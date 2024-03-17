(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_stage__access_log_settings = {
  destination_arn : string;  (** destination_arn *)
  format : string;  (** format *)
}
[@@deriving yojson_of]
(** aws_api_gateway_stage__access_log_settings *)

type aws_api_gateway_stage__canary_settings = {
  percent_traffic : float option; [@option]  (** percent_traffic *)
  stage_variable_overrides : (string * string) list option; [@option]
      (** stage_variable_overrides *)
  use_stage_cache : bool option; [@option]  (** use_stage_cache *)
}
[@@deriving yojson_of]
(** aws_api_gateway_stage__canary_settings *)

type aws_api_gateway_stage = {
  cache_cluster_enabled : bool option; [@option]
      (** cache_cluster_enabled *)
  cache_cluster_size : string option; [@option]
      (** cache_cluster_size *)
  client_certificate_id : string option; [@option]
      (** client_certificate_id *)
  deployment_id : string;  (** deployment_id *)
  description : string option; [@option]  (** description *)
  documentation_version : string option; [@option]
      (** documentation_version *)
  rest_api_id : string;  (** rest_api_id *)
  stage_name : string;  (** stage_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  variables : (string * string) list option; [@option]
      (** variables *)
  xray_tracing_enabled : bool option; [@option]
      (** xray_tracing_enabled *)
  access_log_settings :
    aws_api_gateway_stage__access_log_settings list;
  canary_settings : aws_api_gateway_stage__canary_settings list;
}
[@@deriving yojson_of]
(** aws_api_gateway_stage *)

let aws_api_gateway_stage ?cache_cluster_enabled ?cache_cluster_size
    ?client_certificate_id ?description ?documentation_version ?tags
    ?variables ?xray_tracing_enabled ~deployment_id ~rest_api_id
    ~stage_name ~access_log_settings ~canary_settings __resource_id =
  let __resource_type = "aws_api_gateway_stage" in
  let __resource =
    {
      cache_cluster_enabled;
      cache_cluster_size;
      client_certificate_id;
      deployment_id;
      description;
      documentation_version;
      rest_api_id;
      stage_name;
      tags;
      variables;
      xray_tracing_enabled;
      access_log_settings;
      canary_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_stage __resource);
  ()
