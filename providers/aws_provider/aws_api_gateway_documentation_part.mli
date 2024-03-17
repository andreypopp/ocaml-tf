(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_documentation_part__location
type aws_api_gateway_documentation_part

val aws_api_gateway_documentation_part :
  ?id:string prop ->
  properties:string prop ->
  rest_api_id:string prop ->
  location:aws_api_gateway_documentation_part__location list ->
  string ->
  unit
