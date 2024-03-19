(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type location

val location :
  ?method_:string prop ->
  ?name:string prop ->
  ?path:string prop ->
  ?status_code:string prop ->
  type_:string prop ->
  unit ->
  location

type aws_api_gateway_documentation_part

val aws_api_gateway_documentation_part :
  ?id:string prop ->
  properties:string prop ->
  rest_api_id:string prop ->
  location:location list ->
  unit ->
  aws_api_gateway_documentation_part

val yojson_of_aws_api_gateway_documentation_part :
  aws_api_gateway_documentation_part -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  properties : string prop;
  rest_api_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  properties:string prop ->
  rest_api_id:string prop ->
  location:location list ->
  string ->
  t
