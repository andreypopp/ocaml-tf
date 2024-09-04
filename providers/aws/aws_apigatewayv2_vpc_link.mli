(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_vpc_link

val aws_apigatewayv2_vpc_link :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
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
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  string ->
  t Tf_core.resource
