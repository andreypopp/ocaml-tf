(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_deployment

type t = private {
  api_id : string prop;
  auto_deployed : bool prop;
  description : string prop;
  id : string prop;
  triggers : (string * string) list prop;
}

val aws_apigatewayv2_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  api_id:string prop ->
  string ->
  t
