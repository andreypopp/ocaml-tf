(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_export

val aws_api_gateway_export :
  ?accepts:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  export_type:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  unit ->
  aws_api_gateway_export

val yojson_of_aws_api_gateway_export : aws_api_gateway_export -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accepts : string prop;
  body : string prop;
  content_disposition : string prop;
  content_type : string prop;
  export_type : string prop;
  id : string prop;
  parameters : string Tf_core.assoc prop;
  rest_api_id : string prop;
  stage_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accepts:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  export_type:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  string ->
  t

val make :
  ?accepts:string prop ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  export_type:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  string ->
  t Tf_core.resource
