(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_resource

type t = private {
  id : string prop;
  parent_id : string prop;
  path : string prop;
  path_part : string prop;
  rest_api_id : string prop;
}

val aws_api_gateway_resource :
  ?id:string prop ->
  parent_id:string prop ->
  path_part:string prop ->
  rest_api_id:string prop ->
  string ->
  t
