(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_endpoint_service_allowed_principal

val aws_vpc_endpoint_service_allowed_principal :
  ?id:string prop ->
  principal_arn:string prop ->
  vpc_endpoint_service_id:string prop ->
  unit ->
  aws_vpc_endpoint_service_allowed_principal

val yojson_of_aws_vpc_endpoint_service_allowed_principal :
  aws_vpc_endpoint_service_allowed_principal -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  principal_arn : string prop;
  vpc_endpoint_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  principal_arn:string prop ->
  vpc_endpoint_service_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  principal_arn:string prop ->
  vpc_endpoint_service_id:string prop ->
  string ->
  t Tf_core.resource
