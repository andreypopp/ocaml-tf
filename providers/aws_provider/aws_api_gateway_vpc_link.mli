(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_vpc_link

val aws_api_gateway_vpc_link :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  target_arns:string list ->
  string ->
  unit
