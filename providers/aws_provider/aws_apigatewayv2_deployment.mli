(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_deployment

val aws_apigatewayv2_deployment :
  ?description:string ->
  ?id:string ->
  ?triggers:(string * string) list ->
  api_id:string ->
  string ->
  unit
