(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_vpc_link

val aws_api_gateway_vpc_link :
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_api_gateway_vpc_link

val yojson_of_aws_api_gateway_vpc_link :
  aws_api_gateway_vpc_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  status_message : string prop;
  tags : string Tf_core.assoc prop;
  target_arns : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
