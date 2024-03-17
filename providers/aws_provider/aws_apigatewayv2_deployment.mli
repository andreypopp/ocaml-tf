(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_deployment

val aws_apigatewayv2_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  api_id:string prop ->
  string ->
  unit
