(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_client_certificate

val aws_api_gateway_client_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  unit ->
  aws_api_gateway_client_certificate

val yojson_of_aws_api_gateway_client_certificate :
  aws_api_gateway_client_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  expiration_date : string prop;
  id : string prop;
  pem_encoded_certificate : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t Tf_core.resource
