(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_documentation_version

type t = private {
  description : string prop;
  id : string prop;
  rest_api_id : string prop;
  version : string prop;
}

val aws_api_gateway_documentation_version :
  ?description:string prop ->
  ?id:string prop ->
  rest_api_id:string prop ->
  version:string prop ->
  string ->
  t
