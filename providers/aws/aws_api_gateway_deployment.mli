(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_deployment

type t = private {
  created_date : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_description : string prop;
  stage_name : string prop;
  triggers : (string * string) list prop;
  variables : (string * string) list prop;
}

val aws_api_gateway_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?stage_description:string prop ->
  ?stage_name:string prop ->
  ?triggers:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  rest_api_id:string prop ->
  string ->
  t
