(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_vpc_link

val aws_apigatewayv2_vpc_link :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  vpc_link_id:string prop ->
  unit ->
  aws_apigatewayv2_vpc_link

val yojson_of_aws_apigatewayv2_vpc_link :
  aws_apigatewayv2_vpc_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  vpc_link_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  vpc_link_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  vpc_link_id:string prop ->
  string ->
  t Tf_core.resource
