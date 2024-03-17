(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_stage__access_log_settings = {
  destination_arn : string;  (** destination_arn *)
  format : string;  (** format *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage__access_log_settings *)

type aws_apigatewayv2_stage__default_route_settings = {
  data_trace_enabled : bool option; [@option]
      (** data_trace_enabled *)
  detailed_metrics_enabled : bool option; [@option]
      (** detailed_metrics_enabled *)
  logging_level : string option; [@option]  (** logging_level *)
  throttling_burst_limit : float option; [@option]
      (** throttling_burst_limit *)
  throttling_rate_limit : float option; [@option]
      (** throttling_rate_limit *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage__default_route_settings *)

type aws_apigatewayv2_stage__route_settings = {
  data_trace_enabled : bool option; [@option]
      (** data_trace_enabled *)
  detailed_metrics_enabled : bool option; [@option]
      (** detailed_metrics_enabled *)
  logging_level : string option; [@option]  (** logging_level *)
  route_key : string;  (** route_key *)
  throttling_burst_limit : float option; [@option]
      (** throttling_burst_limit *)
  throttling_rate_limit : float option; [@option]
      (** throttling_rate_limit *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage__route_settings *)

type aws_apigatewayv2_stage = {
  api_id : string;  (** api_id *)
  auto_deploy : bool option; [@option]  (** auto_deploy *)
  client_certificate_id : string option; [@option]
      (** client_certificate_id *)
  deployment_id : string option; [@option]  (** deployment_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  stage_variables : (string * string) list option; [@option]
      (** stage_variables *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  access_log_settings :
    aws_apigatewayv2_stage__access_log_settings list;
  default_route_settings :
    aws_apigatewayv2_stage__default_route_settings list;
  route_settings : aws_apigatewayv2_stage__route_settings list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage *)

let aws_apigatewayv2_stage ?auto_deploy ?client_certificate_id
    ?deployment_id ?description ?id ?stage_variables ?tags ?tags_all
    ~api_id ~name ~access_log_settings ~default_route_settings
    ~route_settings __resource_id =
  let __resource_type = "aws_apigatewayv2_stage" in
  let __resource =
    {
      api_id;
      auto_deploy;
      client_certificate_id;
      deployment_id;
      description;
      id;
      name;
      stage_variables;
      tags;
      tags_all;
      access_log_settings;
      default_route_settings;
      route_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_stage __resource);
  ()
