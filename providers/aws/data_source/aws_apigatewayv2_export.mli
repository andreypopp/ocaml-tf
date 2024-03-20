(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_export

val aws_apigatewayv2_export :
  ?export_version:string prop ->
  ?id:string prop ->
  ?include_extensions:bool prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  output_type:string prop ->
  specification:string prop ->
  unit ->
  aws_apigatewayv2_export

val yojson_of_aws_apigatewayv2_export :
  aws_apigatewayv2_export -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  body : string prop;
  export_version : string prop;
  id : string prop;
  include_extensions : bool prop;
  output_type : string prop;
  specification : string prop;
  stage_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?export_version:string prop ->
  ?id:string prop ->
  ?include_extensions:bool prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  output_type:string prop ->
  specification:string prop ->
  string ->
  t

val make :
  ?export_version:string prop ->
  ?id:string prop ->
  ?include_extensions:bool prop ->
  ?stage_name:string prop ->
  api_id:string prop ->
  output_type:string prop ->
  specification:string prop ->
  string ->
  t Tf_core.resource
