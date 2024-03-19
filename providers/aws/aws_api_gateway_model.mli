(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_model

val aws_api_gateway_model :
  ?description:string prop ->
  ?id:string prop ->
  ?schema:string prop ->
  content_type:string prop ->
  name:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_model

val yojson_of_aws_api_gateway_model : aws_api_gateway_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  schema : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?schema:string prop ->
  content_type:string prop ->
  name:string prop ->
  rest_api_id:string prop ->
  string ->
  t
