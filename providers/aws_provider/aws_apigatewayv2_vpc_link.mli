(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_vpc_link

val aws_apigatewayv2_vpc_link :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  string ->
  unit
