(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type access_log_settings

val access_log_settings :
  destination_arn:string prop ->
  format:string prop ->
  unit ->
  access_log_settings

type default_route_settings

val default_route_settings :
  ?data_trace_enabled:bool prop ->
  ?detailed_metrics_enabled:bool prop ->
  ?logging_level:string prop ->
  ?throttling_burst_limit:float prop ->
  ?throttling_rate_limit:float prop ->
  unit ->
  default_route_settings

type route_settings

val route_settings :
  ?data_trace_enabled:bool prop ->
  ?detailed_metrics_enabled:bool prop ->
  ?logging_level:string prop ->
  ?throttling_burst_limit:float prop ->
  ?throttling_rate_limit:float prop ->
  route_key:string prop ->
  unit ->
  route_settings

type aws_apigatewayv2_stage

val aws_apigatewayv2_stage :
  ?auto_deploy:bool prop ->
  ?client_certificate_id:string prop ->
  ?deployment_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?stage_variables:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  api_id:string prop ->
  name:string prop ->
  access_log_settings:access_log_settings list ->
  default_route_settings:default_route_settings list ->
  route_settings:route_settings list ->
  unit ->
  aws_apigatewayv2_stage

val yojson_of_aws_apigatewayv2_stage : aws_apigatewayv2_stage -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?auto_deploy:bool prop ->
  ?client_certificate_id:string prop ->
  ?deployment_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?stage_variables:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  api_id:string prop ->
  name:string prop ->
  access_log_settings:access_log_settings list ->
  default_route_settings:default_route_settings list ->
  route_settings:route_settings list ->
  string ->
  t
