(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_documentation_version

val aws_api_gateway_documentation_version :
  ?description:string prop ->
  ?id:string prop ->
  rest_api_id:string prop ->
  version:string prop ->
  unit ->
  aws_api_gateway_documentation_version

val yojson_of_aws_api_gateway_documentation_version :
  aws_api_gateway_documentation_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  rest_api_id : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  rest_api_id:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  rest_api_id:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
