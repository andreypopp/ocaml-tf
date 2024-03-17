(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_vpc_link

val aws_apigatewayv2_vpc_link :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  security_group_ids:string list ->
  subnet_ids:string list ->
  string ->
  unit
