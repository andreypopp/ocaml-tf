(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_stage__access_log_settings = {
  destination_arn : string prop;  (** destination_arn *)
  format : string prop;  (** format *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage__access_log_settings *)

type aws_apigatewayv2_stage__default_route_settings = {
  data_trace_enabled : bool prop option; [@option]
      (** data_trace_enabled *)
  detailed_metrics_enabled : bool prop option; [@option]
      (** detailed_metrics_enabled *)
  logging_level : string prop option; [@option]  (** logging_level *)
  throttling_burst_limit : float prop option; [@option]
      (** throttling_burst_limit *)
  throttling_rate_limit : float prop option; [@option]
      (** throttling_rate_limit *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage__default_route_settings *)

type aws_apigatewayv2_stage__route_settings = {
  data_trace_enabled : bool prop option; [@option]
      (** data_trace_enabled *)
  detailed_metrics_enabled : bool prop option; [@option]
      (** detailed_metrics_enabled *)
  logging_level : string prop option; [@option]  (** logging_level *)
  route_key : string prop;  (** route_key *)
  throttling_burst_limit : float prop option; [@option]
      (** throttling_burst_limit *)
  throttling_rate_limit : float prop option; [@option]
      (** throttling_rate_limit *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage__route_settings *)

type aws_apigatewayv2_stage = {
  api_id : string prop;  (** api_id *)
  auto_deploy : bool prop option; [@option]  (** auto_deploy *)
  client_certificate_id : string prop option; [@option]
      (** client_certificate_id *)
  deployment_id : string prop option; [@option]  (** deployment_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  stage_variables : (string * string prop) list option; [@option]
      (** stage_variables *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  access_log_settings :
    aws_apigatewayv2_stage__access_log_settings list;
  default_route_settings :
    aws_apigatewayv2_stage__default_route_settings list;
  route_settings : aws_apigatewayv2_stage__route_settings list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_stage *)

type t = {
  api_id : string prop;
  arn : string prop;
  auto_deploy : bool prop;
  client_certificate_id : string prop;
  deployment_id : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  name : string prop;
  stage_variables : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_apigatewayv2_stage ?auto_deploy ?client_certificate_id
    ?deployment_id ?description ?id ?stage_variables ?tags ?tags_all
    ~api_id ~name ~access_log_settings ~default_route_settings
    ~route_settings __resource_id =
  let __resource_type = "aws_apigatewayv2_stage" in
  let __resource =
    ({
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
      : aws_apigatewayv2_stage)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_stage __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_deploy =
         Prop.computed __resource_type __resource_id "auto_deploy";
       client_certificate_id =
         Prop.computed __resource_type __resource_id
           "client_certificate_id";
       deployment_id =
         Prop.computed __resource_type __resource_id "deployment_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       execution_arn =
         Prop.computed __resource_type __resource_id "execution_arn";
       id = Prop.computed __resource_type __resource_id "id";
       invoke_url =
         Prop.computed __resource_type __resource_id "invoke_url";
       name = Prop.computed __resource_type __resource_id "name";
       stage_variables =
         Prop.computed __resource_type __resource_id
           "stage_variables";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
