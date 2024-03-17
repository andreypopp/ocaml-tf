(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method_response

type t = private {
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_models : (string * string) list prop;
  response_parameters : (string * bool) list prop;
  rest_api_id : string prop;
  status_code : string prop;
}

val aws_api_gateway_method_response :
  ?id:string prop ->
  ?response_models:(string * string prop) list ->
  ?response_parameters:(string * bool prop) list ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  t
